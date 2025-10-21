import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_type_controller.dart';

class UserTypeView extends GetView<UserTypeController> {
  const UserTypeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserTypeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UserTypeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
