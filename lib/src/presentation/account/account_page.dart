import 'package:flutter/cupertino.dart';
import 'package:video_stream_clone/src/presentation/account/account_loggedin_page.dart';
import 'package:video_stream_clone/src/presentation/account/account_logout_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List pages = [const AccountLogOut(), const AccountLogIn()];
    return pages[1];
  }
}
