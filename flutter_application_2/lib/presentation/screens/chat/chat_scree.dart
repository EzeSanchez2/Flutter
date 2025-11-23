import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/widget/chat/her_message_bubble.dart';
import 'package:flutter_application_2/presentation/widget/chat/my_message_bubble.dart';
import 'package:flutter_application_2/presentation/widget/chat/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://i.pinimg.com/280x280_RS/2b/a1/f7/2ba1f7d49d4bc712c5f9a57e0222801f.jpg"),
          ),
        ),
        title: Text("Mi amor"),
        centerTitle: false,
      ),
      body:_ChatView() ,
    );
  }
}

class _ChatView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(child: ListView.builder( itemCount: 100 ,itemBuilder:(context, index) {
            return(index % 2 == 0)
            ? const HerMessageBubble()
            : const MyMessageBubble();
          },
          )
          ),

          //Caja de mensaje
          const MessageFieldBox(),
        ],
      ),
    )
    );
  }
}