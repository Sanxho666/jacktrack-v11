import 'package:flutter/material.dart';

class ScorecardScreen extends StatelessWidget {
  const ScorecardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scorecard')),
      body: ListView.builder(
        itemCount: 18,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Hole \${index + 1}'),
            trailing: const Text('Score: 0'),
          );
        },
      ),
    );
  }
}