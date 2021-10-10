import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/button_row.dart';
import 'package:my_portfolio/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              foregroundImage: AssetImage('dp_small.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "ErAftab",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        actions: [
          ContactButton(
            buttonText: "Contact me",
            icon: const Icon(Icons.send_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Body(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: SizedBox(
                height: 59,
                child: ButtonRow(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  final projectsList = [
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Flutter 2.0 Course',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Connekto',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Image.asset('dp.png'),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'I \'m Aftab.\nA Software Developer\nand teacher',
                                style: TextStyle(
                                    fontSize: 44.5, color: Colors.blueGrey),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 120, vertical: 100),
                                  child: ContactButton(
                                      buttonText: 'Drop me a line',
                                      icon: const Icon(Icons.mail_outline),
                                      onPressed: () {}),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            // flex: 2,
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      'My Projects',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: projectsList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Card(
                                elevation: 3,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Icon(Icons.work),
                                      title: Text(
                                          "${projectsList[index]['title']}"),
                                      subtitle: Text(
                                          "${projectsList[index]['subtitle']}"),
                                    ),
                                    Image.network(
                                        "${projectsList[index]['image']}")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 100,
          )
        ],
      ),
    );
  }
}
