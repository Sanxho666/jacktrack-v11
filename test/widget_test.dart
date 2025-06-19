import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jacktrack_final_rebuild/main.dart';

void main() {
  testWidgets('JackTrack placeholder screen renders', (WidgetTester tester) async {
    await tester.pumpWidget(const JackTrackApp());

    expect(find.text('Welcome to JackTrack'), findsOneWidget);
  });
}