import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/icons/mugym_logo(small).png',
                width: 28,
                height: 28,
              ),
              const Text(
                'MY',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff111111),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '내 플레이리스트',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff111111),
                    ),
                  ),
                  Text(
                    '전체보기 >',
                    style: TextStyle(
                      fontFamily: 'Preteard',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF777777),
                    ),
                  )
                ]),
            const SizedBox(height: 12),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PlaylistBox(playlistName: '플레이리스트1'),
                  SizedBox(width: 12),
                  PlaylistBox(playlistName: '플레이리스트 2'),
                  SizedBox(width: 12),
                  PlaylistBox(playlistName: '플레이리스트 3'),
                  SizedBox(width: 12),
                  PlaylistBox(playlistName: '플레이리스트 4'),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Row(
              children: [
                Text(
                  '나만의 믹스 만들기',
                  style: TextStyle(
                    fontFamily: 'Pretenard',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff111111),
                  ),
                ),
                SizedBox(width: 8),
                Image(
                  image: AssetImage('assets/images/AI_beta_button.png'),
                  width: 59,
                  height: 18,
                ),
              ],
            ),
            const SizedBox(height: 2),
            const Text(
              '운동 시간에 맞게 AI가 자동으로 노래를 선곡해줘요.',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(0xff777777),
              ),
            ),
            const SizedBox(height: 12),
            const Image(
              image: AssetImage('assets/images/AI_mix_button.png'),
              width: double.infinity,
              height: 48,
            ),
            const SizedBox(height: 32),
            const Text(
              '새로운 발견',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff111111),
              ),
            ),
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: const Color(0xff3f3f3f),
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: const Text(
                      '런닝',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: const Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: const Text(
                      '요가',
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffb7b7b7)),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: const Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: const Text(
                      '필라테스',
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffb7b7b7)),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: const Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: const Text(
                      '헬스',
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffb7b7b7)),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: const Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: const Text(
                      '클라이밍',
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffb7b7b7)),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: const Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: const Text(
                      '사이클링',
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffb7b7b7)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const SongInfo(songTitle: '노래 제목', albumName: '앨범 명'),
            const SizedBox(height: 10),
            const SongInfo(songTitle: '노래 제목', albumName: '앨범 명'),
            const SizedBox(height: 10),
            const SongInfo(songTitle: '노래 제목', albumName: '앨범 명'),
            const SizedBox(height: 10),
            const SongInfo(songTitle: '노래 제목', albumName: '앨범 명'),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(
                minHeight: 0,
                minWidth: 0,
              ),
              decoration: BoxDecoration(
                color: const Color(0xffefefef),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    '목록 전체 보기',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff111111),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SongInfo extends StatelessWidget {
  final String songTitle;
  final String albumName;
  // final String imagePath;

  const SongInfo({
    super.key,
    required this.songTitle,
    required this.albumName,
    // required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.5),
            color: const Color(0xFF777777),
            // image: DecorationImage(
            //   image: AssetImage(imagePath),
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              songTitle,
              style: const TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xff111111),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              albumName,
              style: const TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff777777),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PlaylistBox extends StatelessWidget {
  // playlist box widget
  final String playlistName;

  const PlaylistBox({
    super.key,
    required this.playlistName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFF777777),
                // image: const DecorationImage(
                //   image: AssetImage('assets/images/playlist1.jpg'),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(180),
                  image: const DecorationImage(
                    image:
                        AssetImage('assets/images/playlist_button(small).png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Align(
          alignment: const Alignment(0, 0),
          child: Text(
            playlistName,
            style: const TextStyle(
              fontFamily: 'Pretendard',
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color(0xff111111),
            ),
          ),
        ),
      ],
    );
  }
}
