import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/operator/operator_fleet/widgets/drone_status_container.dart';

import '../../operator_home/widgets/radius_image.dart';
import '../controllers/operator_fleet_controller.dart';
import '../widgets/device_card.dart';

class OperatorFleetView extends GetView<OperatorFleetController> {
  const OperatorFleetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadiusImage(
                  hasHight: true, // or remove Expanded inside your widget
                  imageUrl:
                      'https://plus.unsplash.com/premium_photo-1681488098851-e3913f3b1908?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWFwfGVufDB8fDB8fHww&fm=jpg&q=60&w=3000',
                ),
                SizedBox(height: 10.h),
                Row(
                  spacing: 5.w,
                  children: [
                    Expanded(
                      child: DroneStatusContainer(
                        number: '5',
                        title: 'Total Drones',
                      ),
                    ),
                    Expanded(
                      child: DroneStatusContainer(
                        number: '5',
                        title: 'Total Drones',
                      ),
                    ),
                    Expanded(
                      child: DroneStatusContainer(
                        number: '5',
                        title: 'Total Drones',
                      ),
                    ),
                    Expanded(
                      child: DroneStatusContainer(
                        number: '5',
                        title: 'Total Drones',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) => DeviceCard(
                    title: "Mini Gamma",
                    deviceId: "DJI-001",
                    userName: "Sarah Chen",
                    batteryPercent: 85,
                    timeRemaining: "23:45",
                    wifiStrength: 95,
                    storagePercentFree: 67,
                    status: DeviceStatus.idle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
