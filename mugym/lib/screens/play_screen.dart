import 'package:flutter/material.dart';
import 'package:mugym/widgets/songinfo.dart';

class PlayScreen extends StatelessWidget {
  final String songTitle;
  final String singerName;

  const PlayScreen({
    super.key,
    required this.songTitle,
    required this.singerName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xffffffff),
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(
            'assets/images/arrow.png',
            width: 24,
            height: 24,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 295,
                width: 295,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffd9d9d9),
                  // image: DecorationImage(
                  //   image: AssetImage('assets/images/album.png'),
                  //   fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 35),
              Text(
                songTitle,
                style: const TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff111111),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                singerName,
                style: const TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111111),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                // progress bar (스포티파이 api 연결되면 수정)
                height: 5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff111111),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/shuffle.png',
                    width: 28,
                    height: 28,
                  ),
                  Image.asset('assets/images/skip_to_prev.png',
                      width: 28, height: 28),
                  const Icon(Icons.play_circle_fill,
                      size: 58, color: Color(0xff111111)),
                  Image.asset('assets/images/skip_to_next.png',
                      width: 28, height: 28),
                  Image.asset('assets/images/repeat.png',
                      width: 28, height: 28),
                ],
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 400,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 24),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '노래 제목',
                                              style: TextStyle(
                                                fontFamily: 'Pretendard',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff111111),
                                              ),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              '가수',
                                              style: TextStyle(
                                                fontFamily: 'Pretendard',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff777777),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Image.asset(
                                          'assets/images/skip_to_prev.png',
                                          width: 25,
                                          height: 25,
                                          color: const Color(0xff111111),
                                        ),
                                        const SizedBox(width: 17),
                                        const Icon(
                                          Icons.pause,
                                          size: 38,
                                          color: Color(0xff111111),
                                        ),
                                        const SizedBox(width: 17),
                                        Image.asset(
                                          'assets/images/skip_to_next.png',
                                          width: 25,
                                          height: 25,
                                          color: const Color(0xff111111),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 24),
                                    Container(
                                      // progress bar (스포티파이 api 연결되면 수정)
                                      height: 5,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff111111),
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    const SongInfo(
                                        songTitle: '노래 제목1',
                                        singerName: '가수 명1',
                                        albumName: '앨범 명1'),
                                    const SizedBox(height: 10),
                                    const SongInfo(
                                        songTitle: '노래 제목2',
                                        singerName: '가수 명2',
                                        albumName: '앨범 명2'),
                                    const SizedBox(height: 10),
                                    const SongInfo(
                                        songTitle: '노래 제목3',
                                        singerName: '가수 명3',
                                        albumName: '앨범 명3'),
                                    const SizedBox(height: 10),
                                    const SongInfo(
                                        songTitle: '노래 제목4',
                                        singerName: '가수 명4',
                                        albumName: '앨범 명4'),
                                    const SizedBox(height: 10),
                                    const SongInfo(
                                        songTitle: '노래 제목5',
                                        singerName: '가수 명5',
                                        albumName: '앨범 명4'),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Image.asset(
                      'assets/images/playlist.png',
                      width: 28,
                      height: 28,
                    ),
                  ),
                  Image.asset('assets/images/heart.png', width: 28, height: 28),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
