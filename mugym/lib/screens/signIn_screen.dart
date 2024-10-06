import "package:flutter/material.dart";

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 342,
                height: 160.8,
                child: Image(
                  image: AssetImage(
                    "assets/icons/Logo_Name.png",
                  ),
                ),
              ),
              const SizedBox(height: 120),
              Container(
                width: double.infinity,
                constraints: const BoxConstraints(
                  minHeight: 0,
                  minWidth: 0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xff111111),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(500),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      '로그인',
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
        ),
      ),
    );
  }
}
