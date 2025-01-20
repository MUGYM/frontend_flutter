import 'package:flutter/material.dart';
import 'package:mugym/widgets/songinfo.dart';

class PlaylistScreen extends StatefulWidget {
  final String playlistName;

  const PlaylistScreen({super.key, required this.playlistName});

  @override
  PlaylistScreenState createState() => PlaylistScreenState();
}

class PlaylistScreenState extends State<PlaylistScreen> {
  late String _playlistName;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _playlistName = widget.playlistName;
    _textEditingController.text = _playlistName;
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

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
        actions: [
          GestureDetector(
            onTap: () {
              showMenu(
                context: context,
                position: const RelativeRect.fromLTRB(100, 80, 0, 0),
                items: [
                  const PopupMenuItem(
                    value: 'savePlaylist',
                    child: Row(
                      children: [
                        Icon(Icons.playlist_add_rounded,
                            color: Color(0xff777777)),
                        SizedBox(width: 2),
                        Text('플레이리스트 저장'),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'deletePlaylist',
                    child: Row(
                      children: [
                        Icon(Icons.delete_outlined, color: Color(0xff777777)),
                        SizedBox(width: 2),
                        Text('재생 목록 삭제'),
                      ],
                    ),
                  ),
                ],
              ).then((value) {
                if (value != null) {}
              });
            },
            child: Image.asset('assets/images/more_menu.png',
                width: 24, height: 24),
          ),
          const SizedBox(width: 24),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 165,
                width: 165,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff777777),
                  // image: DecorationImage(
                  //   image: AssetImage('assets/images/album_cover.png'),
                  //   fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _playlistName,
                    style: const TextStyle(
                      fontFamily: 'Pretendard',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff111111),
                    ),
                  ),
                  const SizedBox(width: 5),
                  // 플레이리스트 이름 변경
                  GestureDetector(
                    onTap: () async {
                      final newName = await showDialog<String>(
                        context: context,
                        builder: (BuildContext context) {
                          String tempName = _playlistName;
                          return AlertDialog(
                            backgroundColor: const Color(0xffffffff),
                            title: const Text('플레이리스트 이름 변경',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff111111),
                                )),
                            content: TextField(
                              onChanged: (value) {
                                tempName = value;
                              },
                              controller: _textEditingController,
                              decoration: const InputDecoration(
                                hintText: "새 이름을 입력하세요",
                              ),
                              autofocus: true,
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('취소'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(tempName);
                                },
                                child: const Text('저장'),
                              ),
                            ],
                          );
                        },
                      );
                      if (newName != null && newName.isNotEmpty) {
                        setState(() {
                          _playlistName = newName;
                        });
                      }
                    },
                    child: const Icon(
                      Icons.edit_outlined,
                      color: Color(0xff777777),
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: const Color(0xff111111),
                    ),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff111111),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(500),
                          ),
                        ),
                        child: const Text(
                          '모두 재생',
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
                  const SizedBox(width: 21),
                  Container(
                    height: 48,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: const Color(0xffffffff),
                      border: Border.all(
                        color: const Color(0xff111111),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(500),
                          ),
                        ),
                        child: const Text(
                          '랜덤 재생',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff111111),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const SongInfo(
                  songTitle: '노래 제목1', singerName: '가수 명1', albumName: '앨범 명1'),
              const SizedBox(height: 10),
              const SongInfo(
                  songTitle: '노래 제목2', singerName: '가수 명2', albumName: '앨범 명2'),
              const SizedBox(height: 10),
              const SongInfo(
                  songTitle: '노래 제목3', singerName: '가수 명3', albumName: '앨범 명3'),
              const SizedBox(height: 10),
              const SongInfo(
                  songTitle: '노래 제목4', singerName: '가수 명4', albumName: '앨범 명4'),
              const SizedBox(height: 10),
              const SongInfo(
                  songTitle: '노래 제목5', singerName: '가수 명5', albumName: '앨범 명5'),
              const SizedBox(height: 10),
              const SongInfo(
                  songTitle: '노래 제목6', singerName: '가수 명6', albumName: '앨범 명6'),
            ],
          ),
        ),
      ),
    );
  }
}
