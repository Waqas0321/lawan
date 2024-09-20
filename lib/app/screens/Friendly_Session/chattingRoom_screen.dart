import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Custom_Circular_Button.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../widgets/Friendly_Session/FrindlyContainer.dart';

class ChattingRoomScreen extends StatefulWidget {
  const ChattingRoomScreen({super.key});

  @override
  State<ChattingRoomScreen> createState() => _ChattingRoomScreenState();
}

// Message class to hold the content, sender status, and time
class Message {
  final String text;
  final bool isMe; // true if message is from the user, false for the other side
  final DateTime time; // Timestamp of the message

  Message(this.text, this.isMe, this.time);
}

class _ChattingRoomScreenState extends State<ChattingRoomScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<Message> _messages = [];

  // Function to handle message sending
  void _sendMessage() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        _messages.add(Message(_textController.text, true,
            DateTime.now())); // User's message with current time
        _textController.clear();

        // Simulate a response from the other side after sending
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            _messages.add(Message("This is response by other side", false,
                DateTime.now())); // Other side's message with current time
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          // Chat messages display area
          Expanded(
            child: _messages.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          Images.chat,
                          color: AppColors.white,
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(height: 12,),
                        TextWidget(
                          title: "Welcome to the lobby!",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.black,
                        ),
                        SizedBox(height: 12,),
                        TextWidget(
                          title: "Start the conversation or wait for others to join.",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.textSecondColor,
                        )
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      final message = _messages[index];
                      return Align(
                        alignment: message.isMe
                            ? Alignment
                                .centerRight // Messages from the user (align right)
                            : Alignment.centerLeft,
                        // Messages from the other side (align left)
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: message.isMe
                                ? CrossAxisAlignment
                                    .end // Align time under right-aligned message
                                : CrossAxisAlignment.start,
                            // Align time under left-aligned message
                            children: [
                              !message.isMe
                                  ? Container(
                                      width: Get.width,
                                      height: 33,
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage(Images.avatar),
                                            height: 32,
                                            width: 32,
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextWidget(
                                                title: "Chee Lin",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                textColor: AppColors.black,
                                              ),
                                              Container(
                                                height: 16,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 6),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 1,
                                                      strokeAlign: BorderSide
                                                          .strokeAlignOutside,
                                                      color: Color(0xFFE0E0E0),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                  ),
                                                ),
                                                child: TextWidget(
                                                  title: "Novice",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                  textColor:
                                                      AppColors.textSecondColor,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  : SizedBox(
                                      height: 0,
                                    ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: ShapeDecoration(
                                  color: message.isMe
                                      ? AppColors.black
                                      : AppColors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                ),
                                child: TextWidget(
                                  title: message.text,
                                  fontSize: 12,
                                  textAlign: TextAlign.start,
                                  fontWeight: FontWeight.w400,
                                  textColor: message.isMe
                                      ? AppColors.white
                                      : AppColors.textSecondColor,
                                ),
                              ),
                              SizedBox(
                                  height:
                                      5), // Spacing between message and time
                              TextWidget(
                                title:
                                    DateFormat('hh:mm a').format(message.time),
                                // Display time in HH:mm format
                                textColor: AppColors.textSecondColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
          SizedBox(
            height: 16,
          ),
          TextWidget(
            title: "Chee Lin is typing ....",
            fontSize: 10,
            fontWeight: FontWeight.w400,
            textColor: AppColors.dark_grey,
          ),
          SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: Get.width * 0.4,
                    height: 58,
                    padding: const EdgeInsets.only(
                      top: 12,
                      left: 16,
                      right: 16,
                      bottom: 8,
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            Images.user_headset_outline,
                            height: 16,
                            width: 16,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          TextWidget(
                            title: "Chat with Admin",
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            textColor: AppColors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Text input field and send button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                CustomCircularButton(
                  onPressFun: () {},
                  isSelected: false,
                  isImage: true,
                  imagePath: Images.paperclip,
                  imageColor: AppColors.dark_grey,
                  height: 48,
                  width: 48,
                  bacgroundColor: AppColors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 48,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      cursorColor: AppColors.brand2,
                      controller: _textController,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10, left: 10),
                          border: InputBorder.none,
                          hintText: "Write message",
                          hintStyle: TextStyle(
                              color: AppColors.containerTextColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                          suffixIcon: SvgPicture.asset(
                            Images.smile_emoji,
                            height: 16,
                            width: 16,
                            color: Color(0xff545F71),
                          )),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CustomCircularButton(
                  onPressFun: () {
                    _sendMessage();
                  },
                  isSelected: false,
                  isImage: true,
                  imagePath: Images.message_send,
                  imageColor: AppColors.white,
                  height: 48,
                  width: 48,
                  bacgroundColor: AppColors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
