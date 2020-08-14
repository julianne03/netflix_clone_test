import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/profile.png'),
                backgroundColor: Colors.red,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Julianne',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 140,
              height: 5,
              color: Colors.red,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Linkify(onOpen: (link) async {
                if (await canLaunch(link.url)) {
                  await launch(link.url);
                }
              },
              text: "https://github.com/julianne03",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
              linkStyle: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.black,
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    SizedBox(width: 4,),
                    Text('프로필 관리', style: TextStyle(color: Colors.white, fontSize: 23),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Container(
              height: 100,
              padding: EdgeInsets.all(30),
              color: Colors.black,
              child: FlatButton(
                color: Colors.black,
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text('내가 찜한 콘텐츠', textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 23,),
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              padding: EdgeInsets.all(30),
              color: Colors.black,
              child: FlatButton(
                color: Colors.black,
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text('앱 설정', textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 23,),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              padding: EdgeInsets.all(30),
              color: Colors.black,
              child: FlatButton(
                color: Colors.black,
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.help_outline,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text('고객 센터', textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 23,),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
