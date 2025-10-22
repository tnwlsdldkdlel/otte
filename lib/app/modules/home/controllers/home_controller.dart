import 'package:get/get.dart';
import 'package:otte/app/services/supabase_service.dart';

class HomeController extends GetxController {
  final SupabaseService _supabaseService = Get.find<SupabaseService>();

  final currentIndex = 0.obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadFeed();
  }

  void changeTab(int index) {
    currentIndex.value = index;
  }

  Future<void> loadFeed() async {
    try {
      isLoading.value = true;
      // TODO: Implement feed loading from Supabase
      await Future.delayed(const Duration(seconds: 1)); // Placeholder
    } catch (e) {
      Get.snackbar('Error', 'Failed to load feed: ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signOut() async {
    try {
      await _supabaseService.signOut();
      Get.offAllNamed('/login');
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign out: ${e.toString()}');
    }
  }
}
