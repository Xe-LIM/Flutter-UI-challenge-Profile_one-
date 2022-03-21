import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ProfileOne()));
}

class ProfileOne extends StatelessWidget {
  const ProfileOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 1,
          leading: Icon(Icons.arrow_back_ios),
          title: Text("View Profile"),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 205,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red.shade600.withOpacity(0.8),
                    Colors.deepOrangeAccent.shade100.withOpacity(0.9)
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      circleavatar(Icons.phone_rounded, 30, Colors.red),
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.deepOrangeAccent.shade100,
                        child: CircleAvatar(
                          radius: 49,
                          foregroundImage: NetworkImage(
                              "https://brand.esa.int/files/2020/05/ESA_logo_2020_White-1024x643.jpg"),
                        ),
                      ),
                      circleavatar(Icons.message, 30, Colors.red),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "ESA",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Paris, France",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 15,
                        fontStyle: FontStyle.normal),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 197,
                    height: 80,
                    color: Colors.deepOrangeAccent.shade100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        textContainer("50895"),
                        textContainer2("FOLLOWERS", Colors.redAccent),
                      ],
                    ),
                  ),
                  Container(
                    width: 195,
                    height: 80,
                    color: Colors.red.shade600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        textContainer("34524"),
                        textContainer2(
                            "FOLLOWING", Colors.deepOrangeAccent.shade100),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            text("Email", "esa@esaeu.com"),
            SizedBox(height: 15),
            divider(),
            SizedBox(height: 20),
            text("Phone", "+977 9818225533"),
            SizedBox(height: 15),
            divider(),
            SizedBox(height: 20),
            text("Twitter", "@esa"),
            SizedBox(height: 15),
            divider(),
            SizedBox(height: 20),
            text("Facebook", "facebook.com/esa"),
            SizedBox(height: 15),
            divider(),
            SizedBox(height: 20),
          ],
        ),
      );

  Text textContainer(String text) {
    return Text(
      "$text",
      style: TextStyle(
          color: Colors.white, fontSize: 30, fontStyle: FontStyle.normal),
    );
  }

  Text textContainer2(String text, Color color) {
    return Text(
      "$text",
      style: TextStyle(color: color),
    );
  }

  CircleAvatar circleavatar(IconData icon, double radius, Color color) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      child: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
    );
  }

  Column text(text1, text2) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 20),
            Text(
              '$text1',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            SizedBox(width: 20),
            Text(
              '$text2',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Divider divider() {
    return Divider(
      color: Colors.grey,
      thickness: 1,
    );
  }
}
