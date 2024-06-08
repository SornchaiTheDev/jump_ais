import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jump_ais/constants/colors.dart';
import 'package:jump_ais/widgets/chat_top_bar_widget.dart';
import 'package:line_icons/line_icons.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ChatTopBarWidget(),
          Flexible(child: Container()),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Center(
                    child: Text(
                      "วิธีตั้งค่าโปรไฟล์",
                      style: TextStyle(
                        fontSize: 22,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Center(
                    child: Text(
                      "วิธีตั้งค่าโปรไฟล์",
                      style: TextStyle(
                        fontSize: 22,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Center(
                    child: Text(
                      "วิธีตั้งค่าโปรไฟล์",
                      style: TextStyle(
                        fontSize: 22,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Center(
                    child: Text(
                      "วิธีตั้งค่าโปรไฟล์",
                      style: TextStyle(
                        fontSize: 22,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Stack(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 50),
                color: Colors.white,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            hintText: "แตะที่นี่เพื่อพิมพ์ข้อความ",
                            hintStyle: const TextStyle(
                              color: textColor,
                              fontSize: 20,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[300]!,
                                width: 2,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[300]!,
                                width: 2,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        LineIcons.microphone,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
