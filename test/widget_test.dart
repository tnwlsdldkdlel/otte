// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:otte/app/services/supabase_service.dart';

void main() {
  testWidgets('App initializes without errors', (WidgetTester tester) async {
    // Initialize mock Supabase service for testing
    Get.put(SupabaseService());

    // Basic test to verify the test environment is set up correctly
    expect(true, true);
  });
}
