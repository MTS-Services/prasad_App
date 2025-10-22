import 'package:get/get.dart';

import '../customer/customer_bottom_navi_bar/bindings/customer_bottom_navi_bar_binding.dart';
import '../customer/customer_bottom_navi_bar/views/customer_bottom_navi_bar_view.dart';
import '../customer/customer_history/bindings/customer_history_binding.dart';
import '../customer/customer_history/views/customer_history_view.dart';
import '../customer/customer_home/bindings/customer_home_binding.dart';
import '../customer/customer_home/views/customer_home_view.dart';
import '../customer/customer_profile/bindings/customer_profile_binding.dart';
import '../customer/customer_profile/views/customer_profile_view.dart';
import '../customer/customer_service/bindings/customer_service_binding.dart';
import '../customer/customer_service/views/customer_service_view.dart';
import '../customer/customer_support/bindings/customer_support_binding.dart';
import '../customer/customer_support/views/customer_support_view.dart';
import '../operator/operator_fleet/bindings/operator_fleet_binding.dart';
import '../operator/operator_fleet/views/operator_fleet_view.dart';
import '../operator/operator_history/bindings/operator_history_binding.dart';
import '../operator/operator_history/views/operator_history_view.dart';
import '../customer/customer_service_details/bindings/customer_service_details_binding.dart';
import '../customer/customer_service_details/views/customer_service_details_view.dart';
import '../customer/cutomer_all_services/bindings/cutomer_all_services_binding.dart';
import '../customer/cutomer_all_services/views/customer_all_services_view.dart';
import '../customer/cutomer_notification/bindings/cutomer_notification_binding.dart';
import '../customer/cutomer_notification/views/customer_notification_view.dart';
import '../operator/operator_home/bindings/operator_home_binding.dart';
import '../operator/operator_home/views/operator_home_view.dart';
import '../operator/operator_operator_bottom_navi_bar/bindings/operator_operator_bottom_navi_bar_binding.dart';
import '../operator/operator_operator_bottom_navi_bar/views/operator_operator_bottom_navi_bar_view.dart';
import '../operator/operator_payment/bindings/operator_payment_binding.dart';
import '../operator/operator_payment/views/operator_payment_view.dart';
import '../operator/operator_profile/bindings/operator_profile_binding.dart';
import '../operator/operator_profile/views/operator_profile_view.dart';
import '../operator/operator_service/bindings/operator_service_binding.dart';
import '../operator/operator_service/views/operator_service_view.dart';
import '../shared_screen/auth/login/bindings/login_binding.dart';
import '../shared_screen/auth/login/views/login_view.dart';
import '../shared_screen/auth/sign_up/bindings/sign_up_binding.dart';
import '../shared_screen/auth/sign_up/views/sign_up_view.dart';
import '../shared_screen/auth/user_type/bindings/user_type_binding.dart';
import '../shared_screen/auth/user_type/views/user_type_view.dart';
import '../shared_screen/onboarding/onboarding1/bindings/onboarding1_binding.dart';
import '../shared_screen/onboarding/onboarding1/views/onboarding1_view.dart';
import '../shared_screen/onboarding/onboarding2/bindings/onboarding2_binding.dart';
import '../shared_screen/onboarding/onboarding2/views/onboarding2_view.dart';
import '../shared_screen/onboarding/onboarding3/bindings/onboarding3_binding.dart';
import '../shared_screen/onboarding/onboarding3/views/onboarding3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING1;

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
    GetPage(
      name: _Paths.CUSTOMER_BOTTOM_NAVI_BAR,
      page: () => const CustomerBottomNaviBarView(),
      binding: CustomerBottomNaviBarBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_HISTORY,
      page: () => const CustomerHistoryView(),
      binding: CustomerHistoryBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_SERVICE,
      page: () => const CustomerServiceView(),
      binding: CustomerServiceBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_SUPPORT,
      page: () => const CustomerSupportView(),
      binding: CustomerSupportBinding(),
    ),
    GetPage(
      name: _Paths.OPERATOR_SERVICE,
      page: () => const OperatorServiceView(),
      binding: OperatorServiceBinding(),
    ),
    GetPage(
      name: _Paths.OPERATOR_HISTORY,
      page: () => const OperatorHistoryView(),
      binding: OperatorHistoryBinding(),
    ),
    GetPage(
      name: _Paths.OPERATOR_PAYMENT,
      page: () => const OperatorPaymentView(),
      binding: OperatorPaymentBinding(),
    ),
    GetPage(
      name: _Paths.OPERATOR_FLEET,
      page: () => const OperatorFleetView(),
      binding: OperatorFleetBinding(),
    ),
    GetPage(
      name: _Paths.OPERATOR_OPERATOR_BOTTOM_NAVI_BAR,
      page: () => const OperatorBottomNaviBarView(),
      binding: OperatorBottomNaviBarBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING1,
      page: () => const Onboarding1View(),
      binding: Onboarding1Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING2,
      page: () => const Onboarding2View(),
      binding: Onboarding2Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING3,
      page: () => const Onboarding3View(),
      binding: Onboarding3Binding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_NOTIFICATION,
      page: () => const CustomerNotificationView(),
      binding: CutomerNotificationBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_ALL_SERVICES,
      page: () => const CustomerAllServicesView(),
      binding: CutomerAllServicesBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_SERVICE_DETAILS,
      page: () => const CustomerServiceDetailsView(),
      binding: CustomerServiceDetailsBinding(),
    ),
  ];
}
