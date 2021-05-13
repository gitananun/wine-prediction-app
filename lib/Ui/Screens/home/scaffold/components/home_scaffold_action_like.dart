import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScaffoldActionLike extends StatefulWidget {
  const HomeScaffoldActionLike({Key? key}) : super(key: key);

  @override
  _HomeScaffoldActionLikeState createState() => _HomeScaffoldActionLikeState();
}

class _HomeScaffoldActionLikeState extends State<HomeScaffoldActionLike> {
  bool _liked = false;

  void _onTap() {
    HapticFeedback.mediumImpact();
    setState(() => _liked = !_liked);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return GestureDetector(
      onTap: _onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Icon(_liked ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart, color: _themeData.errorColor),
      ),
    );
  }
}
