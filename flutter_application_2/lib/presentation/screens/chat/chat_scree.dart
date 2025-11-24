import 'package:flutter/material.dart';
import 'package:flutter_application_2/dominio/entidad/mensajes.dart';
import 'package:flutter_application_2/presentation/providers/chat_provider.dart';
import 'package:flutter_application_2/presentation/widget/chat/her_message_bubble.dart';
import 'package:flutter_application_2/presentation/widget/chat/my_message_bubble.dart';
import 'package:flutter_application_2/presentation/widget/chat/shared/message_field_box.dart';
import 'package:provider/provider.dart';

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

    final chatProvider=context.watch<ChatProvider>();
    return SafeArea(child:Padding(

      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(child: ListView.builder( 
            itemCount: chatProvider.mensajes.length,
            itemBuilder:(context, index) {
              final mensaje=chatProvider.mensajes[index];
              return(mensaje.fromWho == FromWho.hers)
              ? HerMessageBubble()
              : MyMessageBubble();
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