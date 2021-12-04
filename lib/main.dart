import 'package:chat_app/app.dart';
import 'package:chat_app/screens/select_user_screen.dart';
import 'package:chat_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

void main() {
  final client = StreamChatClient(streamKey);

  runApp(MyApp(
    client: client, appTheme: AppTheme(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,required this.appTheme, required this.client}) : super(key: key);

  final StreamChatClient client;
  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: appTheme.light,
      darkTheme: appTheme.dark,

      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      builder: (context, child) {
        return StreamChatCore(
            client: client,
            child: ChannelsBloc(child: UsersBloc(child: child!)));
      },
      // home: const HomeScreen(),
      home: const SelectUserScreen(),
    );
  }
}
