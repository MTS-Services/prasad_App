import 'package:get/get.dart';

import '../customer/customer_home/bindings/customer_home_binding.dart';
import '../customer/customer_home/views/customer_home_view.dart';
import '../customer/customer_profile/bindings/customer_profile_binding.dart';
import '../customer/customer_profile/views/customer_profile_view.dart';
import '../operator/operator_home/bindings/operator_home_binding.dart';
import '../operator/operator_home/views/operator_home_view.dart';
import '../operator/operator_profile/bindings/operator_profile_binding.dart';
import '../operator/operator_profile/views/operator_profile_view.dart';
import '../shared_screen/auth/login/bindings/login_binding.dart';
import '../shared_screen/auth/login/views/login_view.dart';
import '../shared_screen/auth/sign_up/bindings/sign_up_binding.dart';
import '../shared_screen/auth/sign_up/views/sign_up_view.dart';
import '../shared_screen/auth/user_type/bindings/user_type_binding.dart';
import '../shared_screen/auth/user_type/views/user_type_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CUSTOMER_HOME;

  static final routes = [
    GetPage(
      name: _Paths.CUSTOMER_HOME,
      page: () => const CustomerHomeView(),
      binding: CustomerHomeBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_PROFILE,
      page: () => const CustomerProfileView(),
      binding: CustomerProfileBinding(),
    ),
    GetPage(
      name: _Paths.OPERATOR_PROFILE,
      page: () => const OperatorProfileView(),
      binding: OperatorProfileBinding(),
    ),
    GetPage(
      name: _Paths.OPERATOR_HOME,
      page: () => const OperatorHomeView(),
      binding: OperatorHomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.USER_TYPE,
      page: () => const UserTypeView(),
      binding: UserTypeBinding(),
    ),
  ];
}
