import 'package:get/get.dart';

import '../customer/customer_chat_room/bindings/customer_chat_room_binding.dart';
import '../customer/customer_chat_room/views/customer_chat_room_view.dart';
import '../customer/customer_home/bindings/customer_home_binding.dart';
import '../customer/customer_home/views/customer_home_view.dart';
import '../customer/customer_note/bindings/customer_note_binding.dart';
import '../customer/customer_note/views/customer_note_view.dart';
import '../customer/customer_orders/bindings/customer_orders_binding.dart';
import '../customer/customer_orders/views/customer_orders_view.dart';
import '../customer/customer_profile/bindings/customer_profile_binding.dart';
import '../customer/customer_profile/views/customer_profile_view.dart';
import '../customer/customer_schedule/bindings/customer_schedule_binding.dart';
import '../customer/customer_schedule/views/customer_schedule_view.dart';
import '../customer/customer_service_details/bindings/customer_service_details_binding.dart';
import '../customer/customer_service_details/views/customer_service_details_view.dart';
import '../customer/customer_service_details_map/bindings/customer_service_details_map_binding.dart';
import '../customer/customer_service_details_map/views/customer_service_details_map_view.dart';
import '../customer/customer_service_traking/bindings/customer_service_traking_binding.dart';
import '../customer/customer_service_traking/views/customer_service_traking_view.dart';
import '../customer/customer_support/bindings/customer_support_binding.dart';
import '../customer/customer_support/views/customer_support_view.dart';
import '../customer/cutomer_all_services/bindings/cutomer_all_services_binding.dart';
import '../customer/cutomer_all_services/views/customer_all_services_view.dart';
import '../customer/cutomer_notification/bindings/cutomer_notification_binding.dart';
import '../customer/cutomer_notification/views/customer_notification_view.dart';
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
      name: _Paths.CUSTOMER_SCHEDULE,
      page: () => const CustomerScheduleView(),
      binding: CustomerScheduleBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_ORDERS,
      page: () => const CustomerOrdersView(),
      binding: CustomerOrdersBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_SERVICE_TRAKING,
      page: () => const CustomerServiceTrakingView(),
      binding: CustomerServiceTrakingBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_SERVICE_DETAILS_MAP,
      page: () => const CustomerServiceDetailsMapView(),
      binding: CustomerServiceDetailsMapBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_NOTE,
      page: () => const CustomerNoteView(),
      binding: CustomerNoteBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_SUPPORT,
      page: () => const CustomerSupportView(),
      binding: CustomerSupportBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_CHAT_ROOM,
      page: () => const CustomerChatRoomView(),
      binding: CustomerChatRoomBinding(),
    ),
  ];
}
