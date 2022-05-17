import 'package:flutter/material.dart';

import '../model/model.dart';
import '../res/res.dart';

class HashtagWidget extends StatelessWidget {
  final bool isSelected;
  final VoidCallback? onPressed;
  final HashtagInfo hashtagInfo;
  const HashtagWidget({
    Key? key,
    this.isSelected = false,
    this.onPressed,
    required this.hashtagInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(13),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(13),
        onTap: onPressed,
        child: Container(
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                color: isSelected ? Cl.darkishPink : Cl.veryLightPink,
              )),
          child: Center(
            child: Text(hashtagInfo.name),
          ),
        ),
      ),
    );
  }
}
