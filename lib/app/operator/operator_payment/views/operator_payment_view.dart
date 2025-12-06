import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/operator/operator_payment/widgets/email_alert_dialog.dart';

import '../controllers/operator_payment_controller.dart';
import '../widgets/day_dropdown.dart';
import '../widgets/otp_alartdialog.dart';
import '../widgets/payment_container.dart';
import '../widgets/payment_info_container.dart';
import '../widgets/payment_method_dialog.dart';
import '../widgets/success_alartdialog.dart';

class OperatorPaymentView extends GetView<OperatorPaymentController> {
  const OperatorPaymentView({super.key});

  final List<String> days = const ['Last 3 days', 'Last 5 days', 'Last 7 days'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Income Performance', style: AppTextStyles.bold24),
                SizedBox(height: 10.h),
                Text('Last 7 days overview', style: AppTextStyles.regular16),
                SizedBox(height: 10),
                DayDropdown(
                  days: days,
                  initialValue: days.first,
                  onChanged: (value) {},
                ),
                SizedBox(height: 20.h),
                GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.w,
                    childAspectRatio: 1.3,
                  ),
                  children: [
                    PaymentInfoContainer(
                      title: 'Complete order',
                      amount: '25',
                      status: 'Nothing to say',
                    ),
                    PaymentInfoContainer(
                      title: 'Complete order',
                      amount: '25',
                      status: 'Nothing to say',
                    ),
                    PaymentInfoContainer(
                      title: 'Complete order',
                      amount: '25',
                      status: 'Nothing to say',
                    ),
                    PaymentInfoContainer(
                      title: 'Complete order',
                      amount: '25',
                      status: 'Nothing to say',
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                PaymentContainer(
                  primaryAccountName: 'HSBC Business Account',
                  primaryAccountNumber: '***** ***** 1234',
                  secondaryAccountName: 'HSBC Business Account',
                  secondaryAccountNumber: '***** ***** 1234',
                  primaryStatus: 'primary',
                  secondryStatus: 'Secondry',
                  newPaymentOnPressed: () => showDialog(
                    context: context,
                    builder: (context) => PaymentMethodDialog(
                      onPlaceOrder: () {
                        Navigator.of(context).pop();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return EmailAlertDialog(
                              onPressed: () {
                                Navigator.of(context).pop();
                                showDialog(
                                  context: context,
                                  builder: (context) => OtpAlertDialog(
                                    controller: controller,
                                    resendOnTap: () {},
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      showDialog(
                                        context: context,
                                        builder: (context) =>
                                            SuccessAlertDialog(
                                              onPressed: () {},
                                            ),
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Requiest Payment',
                      style: AppTextStyles.medium16,
                    ),
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
