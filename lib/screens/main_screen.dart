import 'package:flutter/material.dart';
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
              foregroundImage: NetworkImage('https://picsum.photos/200'),
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
    );
  }
}
