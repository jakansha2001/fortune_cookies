import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Fortune cookies',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'PlayfairDisplay',
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
                            HoverImage(image: items[index]);
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
