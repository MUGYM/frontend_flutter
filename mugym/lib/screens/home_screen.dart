import 'package:flutter/material.dart';
import 'package:mugym/screens/mix_screen.dart';
import 'package:mugym/screens/mypage.dart';
import 'package:mugym/screens/playlist_screen.dart';
import 'package:mugym/widgets/songinfo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyPage()),
                  );
                },
                child: const Text(
                  'MY',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff111111),
                  ),
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
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                '내 플레이리스트',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff111111),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyPage()),
                  );
                },
                child: const Text(
                  '전체보기 >',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF777777),
                  ),
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MixScreen()),
                );
              },
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(
                  minHeight: 0,
                  minWidth: 0,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF638DFF), Color(0xFF51D888)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(500),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'OO님만의 믹스 생성하러 가기 >',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
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
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ExercisePlaylist(
                    text: '런닝',
                  ),
                  SizedBox(width: 6),
                  ExercisePlaylist(
                    text: '요가',
                  ),
                  SizedBox(width: 6),
                  ExercisePlaylist(
                    text: '필라테스',
                  ),
                  SizedBox(width: 6),
                  ExercisePlaylist(
                    text: '웨이트',
                  ),
                  SizedBox(width: 6),
                  ExercisePlaylist(
                    text: '클라이밍',
                  ),
                  SizedBox(width: 6),
                  ExercisePlaylist(
                    text: '사이클링',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const SongInfo(
                songTitle: '노래 제목', singerName: '가수 명', albumName: '앨범 명'),
            const SizedBox(height: 10),
            const SongInfo(
                songTitle: '노래 제목', singerName: '가수 명', albumName: '앨범 명'),
            const SizedBox(height: 10),
            const SongInfo(
                songTitle: '노래 제목', singerName: '가수 명', albumName: '앨범 명'),
            const SizedBox(height: 10),
            const SongInfo(
                songTitle: '노래 제목', singerName: '가수 명', albumName: '앨범 명'),
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
            ),
          ],
        ),
      ),
    );
  }
}

class ExercisePlaylist extends StatelessWidget {
  final String text;
  final Color textColor;

  Color getTextColor(Set<WidgetState> states) {
    if (states.contains(WidgetState.pressed)) {
      return const Color(0xffffffff);
    }
    if (states.contains(WidgetState.selected)) {
      return const Color(0xffffffff);
    }
    return textColor;
  }

  const ExercisePlaylist({
    super.key,
    required this.text,
    this.textColor = const Color(0xff111111),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          const Color(0xffefefef),
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) {
            /*
            WidgetState
              hovered : 호버링 상태 (마우스 커서를 올려둠)
              focused : 포커스 되었을 때 (텍스트 필드)
              pressed : 눌렀을 때
              dragged : 드래그 했을 때
              selected : 선택 되었을 때 (라이도, 체크박스)
              disabled : 비활성화 되었을 때
              scrollUnder : 다른 컴포넌트 밑으로 스크롤링 되었을 때
              error : 에러 상태
          */
            if (states.contains(WidgetState.pressed)) {
              // 왜 안되지..?
              return const Color(0xff3f3f3f);
            }
            if (states.contains(WidgetState.selected)) {
              return const Color(0xff3f3f3f);
            }
            return const Color(0xffefefef);
          },
        ),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
            vertical: 5.0, horizontal: 15.0)), // vertical은 왜 적용 안되지..?
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 13,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PlaylistScreen(playlistName: playlistName)),
        );
      },
      child: Column(
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
                      image: AssetImage(
                          'assets/images/playlist_button(small).png'),
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
      ),
    );
  }
}
