import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otte/app/core/theme/app_theme.dart';
import 'package:otte/app/routes/app_pages.dart';
import 'package:otte/app/services/supabase_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Supabase and inject it into GetX
  await Get.putAsync(() => SupabaseService().init());

  runApp(const OtteApp());
}

class OtteApp extends StatelessWidget {
  const OtteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Otte - Knitting Community',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
