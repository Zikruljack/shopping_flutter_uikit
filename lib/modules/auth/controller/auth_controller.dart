import 'package:get/get.dart';
import 'package:shopping_flutter_uikit/routes/app_router.dart';
import '../model/auth_model.dart';

class AuthController extends GetxController {
  // Reactive user state
  var user = Rxn<AuthModel>();

  // Simulated login function
  Future<void> login(String email, String password) async {
    try {
      if (email.isEmpty || password.isEmpty) {
        throw Exception('Email or password cannot be empty');
      }

      // Simulated API call
      await Future.delayed(const Duration(seconds: 2));

      // Mock response
      if (email == 'admin@admin.com' && password == '123123123') {
        user.value = AuthModel(email, password, 'John Doe'); // Mock user data
        Get.snackbar(
          'Login Successful',
          'Welcome back, ${user.value!.name}',
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.offAllNamed(AppRouter.home);
      } else {
        throw Exception('Invalid email or password');
      }
    } catch (e) {
      Get.snackbar('Login Failed', e.toString());
    }
  }

  // Register function
  Future<void> register(String email, String password, String name) async {
    try {
      if (email.isEmpty || password.isEmpty || name.isEmpty) {
        throw Exception('All fields are required');
      }

      // Simulated API call
      await Future.delayed(const Duration(seconds: 2));

      // Mock response
      if (email.contains('@') && password.length >= 6) {
        user.value = AuthModel(email, password, name); // Mock user registration
        Get.snackbar(
          'Registration Successful',
          'Welcome, ${user.value!.name}',
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.offAllNamed(AppRouter.home);
      } else {
        throw Exception('Invalid email format or weak password');
      }
    } catch (e) {
      Get.snackbar('Registration Failed', e.toString());
    }
  }

  // Logout function
  void logout() {
    user.value = null;
    Get.snackbar('Logout Successful', 'You have been logged out');
  }

  // Check if user is logged in
  bool get isLoggedIn => user.value != null;
}
