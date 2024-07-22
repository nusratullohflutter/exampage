import 'package:exampage/pages/home_page.dart';
import 'package:flutter/material.dart';

class AddcardPage extends StatefulWidget {
  const AddcardPage({super.key});

  @override
  State<AddcardPage> createState() => _AddcardPageState();
}

class _AddcardPageState extends State<AddcardPage> {
  _backToHome() {
    Navigator.of(context).pop(HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Card",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              width: double.infinity,
              height: 300,
              child: Image(
                image: AssetImage("assets/images/card3.jpg"),
              ),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  child: Text(
                    "Enter expiration date",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "5272 8920 9183 9232",
                          hintStyle:
                              TextStyle(fontSize: 35, color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    Container(
                        width: 100,
                        child: Center(
                          child: TextField(
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              hintText: "11/26",
                              hintStyle: TextStyle(
                                  fontSize: 35, color: Colors.grey[700]),
                            ),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "* Only Visa, MasterCard issued  cards supported",
                          style: TextStyle(fontSize: 16),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 200,
                      height: 50,
                      child: MaterialButton(
                        color: Colors.blue,
                        onPressed: () {
                          _backToHome();
                        },
                        child: Text(
                          "Back to Card",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
