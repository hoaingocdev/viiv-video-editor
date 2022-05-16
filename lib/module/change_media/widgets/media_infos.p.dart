part of change_media;

class MediaInfosWidget extends StatelessWidget {
  final MediaInfo mediaInfo;
  const MediaInfosWidget({Key? key, required this.mediaInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network('https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg'),
        mediaInfo.isVideo
            ? Padding(
                padding: const EdgeInsets.only(
                  left: 9,
                  top: 11,
                ),
                child: Container(
                  height: 25,
                  width: 25,
                  color: Cl.black.withOpacity(0.8),
                  child: const Center(
                    child: Icon(
                      Icons.photo_camera_front,
                      color: Cl.white,
                    ),
                  ),
                ),
              )
            : SizedBox(),
        mediaInfo.isVideo
            ? Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: const EdgeInsets.all(6),
                  height: 20,
                  width: 60,
                  color: Cl.black.withOpacity(0.8),
                  child: Center(
                    child: Text(
                      mediaInfo.duration,
                      style: TextStyle(color: Cl.white),
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }

  // static void from(Map<String, Object> map) {}
}
