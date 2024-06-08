import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jump_ais/widgets/chat_top_bar_widget.dart';
import 'package:jump_ais/widgets/message_section_widget.dart';
import 'package:jump_ais/widgets/suggestion_messages_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  padding: const EdgeInsets.all(0),
                  children: const [
                    MessageWidget(),
                    MessageWidget(),
                    MessageWidget(),
                    MessageWidget(),
                    MessageWidget(),
                    MessageWidget(),
                    MessageWidget(),
                    MessageWidget(),
                    const SizedBox(height: 200),
                  ],
                ),
              ),
            ),
            const ChatTopBarWidget(),
            // const SizedBox(height: 20),
            const MessageSectionWidget(),
          ],
        ),
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("หลานสอน"),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 0.5,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: const Text(
                    "lorem ipsum asldjaslkdjaslkdjljlkaj lajsdl ajsldj ajdlasjdlk ajsld ajld ajlsdj lakj lkaj dlajk ajsl kdjkaljd lkajslkdjljalssd"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
