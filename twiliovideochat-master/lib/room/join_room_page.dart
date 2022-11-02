import 'package:flutter/material.dart';

import 'join_room_form.dart';


class JoinRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twilio Programmable Video'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: JoinRoomForm.create(context),
        ),
      ),
    );
  }
}
