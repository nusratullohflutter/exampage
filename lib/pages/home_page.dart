import 'package:exampage/pages/addcard_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _openPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return AddcardPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.all(5),
          child: Text(
            "Card List",
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[400],
          ),

          //#firstcard
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 165,
                height: 85,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/card.jpg"))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "**** **** **** **** 9275",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "11/25",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ],
          ),
          //#secondcard
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 165,
                height: 85,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/card.jpg"))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "**** **** **** **** 9275",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "11/25",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: SizedBox.shrink(),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 400,
              height: 60,
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  _openPage();
                },
                child: Text(
                  "Add Card",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
