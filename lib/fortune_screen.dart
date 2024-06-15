import 'package:flutter/material.dart';

class FortuneScreen extends StatelessWidget {
  const FortuneScreen({super.key, required this.fortune});
  final String fortune;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Fortune cookies',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'PlayfairDisplay',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.0),
              child: Text(
                'Here is the affirmative result as your answer for today!',
                maxLines: 2,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height / 2.5,
              width: MediaQuery.sizeOf(context).width,
              color: const Color(0xffd4889b),
              child: Image.asset('assets/images/open_cookie.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                fortune,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey.shade600),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Crack Another One Open',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
