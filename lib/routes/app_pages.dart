import 'package:get/get.dart';
import 'package:shopping_flutter_uikit/modules/auth/view/auth_view.dart';
import 'package:shopping_flutter_uikit/modules/dashboard/dashboard.dart';

import 'app_router.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRouter.auth, page: () => const AuthView()),
    GetPage(name: AppRouter.home, page: () => const Dashboard()),
    
  ];
}
