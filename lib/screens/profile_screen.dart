import 'package:chat_app/app.dart';
import 'package:chat_app/screens/screens.dart';
import 'package:chat_app/chat_widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

class ProfileScreen extends StatelessWidget {
  static Route get route =>
      MaterialPageRoute(builder: (context) => const ProfileScreen());

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.currentUser;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Hero(
              tag: 'hero-profile-picture',
              child: Avatar.large(url: user?.image),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(user?.name ?? 'No Name'),
            ),
            const Divider(),
            const _SingleOutButton(),
          ],
        ),
      ),
    );
  }
}

class _SingleOutButton extends StatefulWidget {
  const _SingleOutButton({Key? key}) : super(key: key);

  @override
  _SingleOutButtonState createState() => _SingleOutButtonState();
}

class _SingleOutButtonState extends State<_SingleOutButton> {
  bool _loading = false;

  Future<void> _signOut() async {
    setState(() {
      _loading = true;
    });

    try {
      await StreamChatCore.of(context).client.disconnectUser();

      Navigator.of(context).push(SelectUserScreen.route);
    } on Exception catch (e, st) {
      logger.e('Could not sign out', e, st);
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _loading
        ? const CircularProgressIndicator()
        : TextButton(onPressed: _signOut, child: const Text('Sign Out'));
  }
}
