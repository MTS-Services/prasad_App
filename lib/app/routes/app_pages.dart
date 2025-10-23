import 'package:get/get.dart';

import '../customer/customer_bottom_navi_bar/bindings/customer_bottom_navi_bar_binding.dart';
import '../customer/customer_bottom_navi_bar/views/customer_bottom_navi_bar_view.dart';
import '../customer/customer_history/bindings/customer_history_binding.dart';
import '../customer/customer_history/views/customer_history_view.dart';
import '../customer/customer_home/bindings/customer_home_binding.dart';
import '../customer/customer_home/views/customer_home_view.dart';
import '../customer/customer_profile/bindings/customer_profile_binding.dart';
import '../customer/customer_profile/views/customer_profile_view.dart';
import '../customer/customer_registration/customer_info1/bindings/customer_info1_binding.dart';
import '../customer/customer_registration/customer_info1/views/customer_info1_view.dart';
import '../customer/customer_registration/customer_info2/bindings/customer_info2_binding.dart';
import '../customer/customer_registration/customer_info2/views/customer_info2_view.dart';
import '../customer/customer_registration/customer_service_location/bindings/customer_service_location_binding.dart';
import '../customer/customer_registration/customer_service_location/views/customer_service_location_view.dart';
import '../customer/customer_service/bindings/customer_service_binding.dart';
import '../customer/customer_service/views/customer_service_view.dart';
import '../customer/customer_service_details/bindings/customer_service_details_binding.dart';
import '../customer/customer_service_details/views/customer_service_details_view.dart';
import '../customer/customer_support/bindings/customer_support_binding.dart';
import '../customer/customer_support/views/customer_support_view.dart';
import '../customer/cutomer_all_services/bindings/cutomer_all_services_binding.dart';
import '../customer/cutomer_all_services/views/customer_all_services_view.dart';
import '../customer/cutomer_notification/bindings/cutomer_notification_binding.dart';
import '../customer/cutomer_notification/views/customer_notification_view.dart';
import '../operator/operator_fleet/bindings/operator_fleet_binding.dart';
import '../operator/operator_fleet/views/operator_fleet_view.dart';
import '../operator/operator_history/bindings/operator_history_binding.dart';
import '../operator/operator_history/views/operator_history_view.dart';
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
import '../shared_screen/auth/confirm_your_gmail/bindings/confirm_your_gmail_binding.dart';
import '../shared_screen/auth/confirm_your_gmail/views/confirm_your_gmail_view.dart';
import '../shared_screen/auth/create_pass/bindings/create_pass_binding.dart';
import '../shared_screen/auth/create_pass/views/create_pass_view.dart';
import '../shared_screen/auth/gmail_verify/bindings/gmail_verify_binding.dart';
import '../shared_screen/auth/gmail_verify/views/gmail_verify_view.dart';
import '../shared_screen/auth/login/bindings/login_binding.dart';
import '../shared_screen/auth/login/views/login_view.dart';
import '../shared_screen/auth/new_password/bindings/new_password_binding.dart';
import '../shared_screen/auth/new_password/views/new_password_view.dart';
import '../shared_screen/auth/recovery_pass/bindings/recovery_pass_binding.dart';
import '../shared_screen/auth/recovery_pass/views/recovery_pass_view.dart';
import '../shared_screen/auth/sign_up/bindings/sign_up_binding.dart';
import '../shared_screen/auth/sign_up/views/sign_up_view.dart';
import '../shared_screen/auth/user_type/bindings/user_type_binding.dart';
import '../shared_screen/auth/user_type/views/user_type_view.dart';
import '../shared_screen/auth/waiting_approval/bindings/waiting_approval_binding.dart';
import '../shared_screen/auth/waiting_approval/views/waiting_approval_view.dart';
import '../shared_screen/common_screen/map/bindings/map_binding.dart';
import '../shared_screen/common_screen/map/views/map_view.dart';
import '../shared_screen/onboarding/onboarding1/bindings/onboarding1_binding.dart';
import '../shared_screen/onboarding/onboarding1/views/onboarding1_view.dart';
import '../shared_screen/onboarding/onboarding2/bindings/onboarding2_binding.dart';
import '../shared_screen/onboarding/onboarding2/views/onboarding2_view.dart';
import '../shared_screen/onboarding/onboarding3/bindings/onboarding3_binding.dart';
import '../shared_screen/onboarding/onboarding3/views/onboarding3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CUSTOMER_INFO1;

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
    GetPage(
      name: _Paths.GMAIL_VERIFY,
      page: () => const GmailVerifyView(),
      binding: GmailVerifyBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_PASS,
      page: () => const CreatePassView(),
      binding: CreatePassBinding(),
    ),
    GetPage(
      name: _Paths.RECOVERY_PASS,
      page: () => const RecoveryPassView(),
      binding: RecoveryPassBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_YOUR_GMAIL,
      page: () => const ConfirmYourGmailView(),
      binding: ConfirmYourGmailBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PASSWORD,
      page: () => const NewPasswordView(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.WAITING_APPROVAL,
      page: () => const WaitingApprovalView(),
      binding: WaitingApprovalBinding(),
    ),
    GetPage(
      name: _Paths.MAP,
      page: () => const MapView(),
      binding: MapBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_INFO1,
      page: () => const CustomerInfo1View(),
      binding: CustomerInfo1Binding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_SERVICE_LOCATION,
      page: () => const CustomerServiceLocationView(),
      binding: CustomerServiceLocationBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_INFO2,
      page: () => const CustomerInfo2View(),
      binding: CustomerInfo2Binding(),
    ),
  ];
}
