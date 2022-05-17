import 'package:flutter/material.dart';
import 'package:viiv/model/music_info.p.dart';

import '../../../res/res.dart';

class MusicWidget extends StatefulWidget {
  final MusicInfo recommanedInfo;
  final String? nameMusic;
  final String? imageUrl;

  const MusicWidget({
    Key? key,
    this.nameMusic,
    this.imageUrl,
    required this.recommanedInfo,
  }) : super(key: key);

  @override
  _MusicWidgetState createState() => _MusicWidgetState();
}

class _MusicWidgetState extends State<MusicWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: Image.network(
              widget.recommanedInfo.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.recommanedInfo.name,
                style: St.textStyle9,
              ),
              Text(
                widget.recommanedInfo.artis,
                style: St.textStyle9,
              ),
            ],
          ),
          const Spacer(),
          Image.asset(Id.ic_play),
        ],
      ),
    );
  }
}
