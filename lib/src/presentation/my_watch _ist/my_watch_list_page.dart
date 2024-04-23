import 'package:flutter/cupertino.dart';
import 'package:video_stream_clone/src/presentation/my_watch%20_ist/my_watch_list_loggedin_empty_page.dart';
import 'package:video_stream_clone/src/presentation/my_watch%20_ist/my_watch_list_loggedin_page.dart';
import 'package:video_stream_clone/src/presentation/my_watch%20_ist/my_watch_list_logout_page.dart';

class MyWatchList extends StatelessWidget {
  const MyWatchList({super.key});

  @override
  Widget build(BuildContext context) {
    final List pages = [
      const MyWatchListLogOut(),
      const MyWatchListLoggedInEmpty(),
      const MyWatchListLoggedIn(),
    ];
    return pages[2];
  }
}
