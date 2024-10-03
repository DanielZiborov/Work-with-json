import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:work_with_json/human.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: JsonExampleProvider(
          coder: JsonExampleCoder(),
          child: const ButtonWidget(),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Кодировать"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Декодировать"),
          ),
        ],
      ),
    );
  }
}

class JsonExampleProvider extends InheritedWidget {
  final JsonExampleCoder coder;
  const JsonExampleProvider({
    super.key,
    required this.coder,
    required super.child,
  });

  static JsonExampleProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<JsonExampleProvider>();
  }

  static JsonExampleProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<JsonExampleProvider>()
        ?.widget;
    return widget is JsonExampleProvider ? widget : null;
  }

  @override
  bool updateShouldNotify(JsonExampleProvider oldWidget) {
    return true;
  }
}

String jsonString = '';

class JsonExampleCoder {
  void encode() {}
  void decode() {
    final json = jsonDecode(jsonString) as List<dynamic>;
    final humans = json
        .map((dynamic e) => Human.fromJson(e as Map<String, dynamic>))
        .toList();
    print(humans);
  }
}
