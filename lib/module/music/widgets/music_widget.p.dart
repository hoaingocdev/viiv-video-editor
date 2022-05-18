import 'package:flutter/material.dart';
import 'package:viiv/model/music_info.p.dart';

import '../../../res/res.dart';

class MusicWidget extends StatefulWidget {
  final MusicInfo musicInfo;
  final String? nameMusic;
  final String? imageUrl;
  final VoidCallback? onPressed;
  final bool isSelected;

  const MusicWidget({
    Key? key,
    this.nameMusic,
    this.imageUrl,
    required this.musicInfo,
    this.onPressed,
    this.isSelected = false,
  }) : super(key: key);

  @override
  _MusicWidgetState createState() => _MusicWidgetState();
}

class _MusicWidgetState extends State<MusicWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: 52 + (widget.isSelected ? 44 : 0),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.network(
                    widget.musicInfo.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.musicInfo.name,
                      style: St.textStyle9,
                    ),
                    Text(
                      widget.musicInfo.artis,
                      style: St.textStyle9,
                    ),
                  ],
                ),
                Spacer(),
                widget.isSelected
                    ? Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset(Id.ic_square),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset(Id.ic_comeback),
                          ),
                        ],
                      )
                    : Image.asset(Id.ic_play),
              ],
            ),
            if (widget.isSelected)
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 34,
                color: Cl.azure,
              )
          ],
        ),
      ),
    );
  }
}
