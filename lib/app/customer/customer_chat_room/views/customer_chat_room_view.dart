import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_appbar.dart';

import '../../../data/app_colors.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/customer_chat_room_controller.dart';
import '../widget/chat_bubble.dart';

class CustomerChatRoomView extends GetView<CustomerChatRoomController> {
  const CustomerChatRoomView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChatBubble(
                message:
                "Hi! I just placed a drone service order. Can you confirm the time of delivery?",
                time: "5:45 PM",
                isSender: true,
              ),
              ChatBubble(
                message:
                "Hello! Yes, your order is scheduled for tomorrow at 10:00 AM. I’ll notify you once I'm on the way",
                time: "5:45 PM",
                isSender: false,
              ),
              Spacer(),
              buildMessageInputField(
                controller: controller.messageController,
                onSend: () {
                  print("Message Sent: ${controller.messageController.text}");
                  controller.messageController.clear();
                },
              ),
            ],
          ),
        ),
      )
    );
  }

  Widget buildMessageInputField({
    required TextEditingController controller,
    required VoidCallback onSend,
    String hintText = "Write something",
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          // Text Field
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.grey),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),

          const SizedBox(width: 8),
          InkWell(
            onTap: onSend,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.send_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
