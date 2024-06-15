import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fortune_cookies/fortune_screen.dart';
import 'package:fortune_cookies/home/widgets/hover_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List items = [
    //   Image.asset('assets/images/fortune_cookie.png'),
    //   Image.asset('assets/images/fortune_cookie.png'),
    //   Image.asset('assets/images/fortune_cookie.png'),
    //   Image.asset('assets/images/fortune_cookie.png'),
    //   Image.asset('assets/images/fortune_cookie.png'),
    //   Image.asset('assets/images/fortune_cookie.png')
    // ];
    List<Image> items = List<Image>.generate(6, (index) {
      return Image.asset('assets/images/fortune_cookie.png');
    });

    final List<String> fortunes = [
      "You will have a great day!",
      "Something wonderful is about to happen.",
      "You will achieve your goals.",
      "A surprise is waiting for you.",
      "You will meet someone special.",
      "Good fortune is coming your way.",
      "Happiness is right around the corner.",
      "Expect great things ahead.",
      "Your dreams will come true.",
      "New opportunities are on the horizon.",
      "You will find peace and joy.",
      "Success is in your future.",
      "Today is your lucky day.",
      "You will make someone smile today.",
      "A new adventure awaits you.",
      "Good things are coming your way.",
      "Believe in yourself and all that you are.",
      "Your hard work will soon pay off.",
      "You are capable of amazing things.",
      "A positive attitude will bring you success.",
      "Opportunities are plentiful.",
      "Prosperity is on its way to you.",
      "You have a keen sense of creativity.",
      "Your potential is limitless.",
      "Adventure awaits around every corner.",
      "Trust your instincts; they will guide you well.",
      "A special surprise is headed your way.",
      "Your kindness will be repaid in unexpected ways.",
      "Luck is on your side today.",
      "A solution to a long-standing problem is near.",
      "Keep your eyes open for new friendships.",
      "You have the ability to turn dreams into reality.",
      "Exciting news is coming your way.",
      "You will find joy in unexpected places.",
      "Your smile brightens someone's day.",
      "Tomorrow brings new opportunities.",
      "Believe in yourself and your abilities.",
      "You are stronger than you think.",
      "Trust that everything happens for a reason.",
      "Your creativity knows no bounds.",
      "Stay true to yourself and your dreams.",
      "Success is within your reach.",
      "A new friendship will bring joy to your life.",
      "Follow your heart; it knows the way.",
      "You are destined for greatness.",
      "The universe is conspiring in your favor.",
      "You have the power to make a difference.",
      "Embrace change; it leads to growth.",
      "Your courage will lead to success.",
      "Love and happiness are coming your way.",
      "You are capable of achieving anything you set your mind to.",
    ];
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
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Choose a cookie and read the predicton!',
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
                height: 20,
              ),
              Expanded(
                child: Container(
                  color: const Color(0xffd4889b),
                  child:

                      /// This method is ideal when you know the exact number of children elements you want to display in the grid.
                      //     GridView.count(
                      //   crossAxisCount: 2,
                      //   crossAxisSpacing: 10,
                      //   mainAxisSpacing: 5,
                      //   children: [
                      //     Image.asset('assets/images/fortune_cookie.png'),
                      //     Image.asset('assets/images/fortune_cookie.png'),
                      //     Image.asset('assets/images/fortune_cookie.png'),
                      //     Image.asset('assets/images/fortune_cookie.png')
                      //   ],
                      // ),

                      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5),

                    /// This method is ideal when you don't know the exact number of children elements you want to display in the grid.
                    child: GridView.builder(
                      //itemCount: 4,
                      itemCount: items.length, // Number of items in your data source
                      /// This defines the layout properties of the grid. Here, we're using SliverGridDelegateWithFixedCrossAxisCount for a fixed number of columns.
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 5,
                      ),

                      /// This is a callback function that takes the context and index as arguments and returns the widget to be displayed at that specific position in the grid.
                      itemBuilder: (context, index) {
                        return
                            //Image.asset('assets/images/fortune_cookie.png');
                            //items[index];
                            GestureDetector(
                                onTap: () {
                                  final random = Random();
                                  final randomFortune = fortunes[random.nextInt(fortunes.length)];
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FortuneScreen(
                                        fortune: randomFortune,
                                      ),
                                    ),
                                  );
                                },
                                child: HoverImage(image: items[index]));
                      },
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
