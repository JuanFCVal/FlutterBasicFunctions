import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Avatar Page"), actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            width: 60,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cronicaglobal.elespanol.com/uploads/s1/61/11/50/7/main-700b9bff30.jpeg"),
              radius: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text("JC"),
              backgroundColor: Colors.brown,
            ),
          )
        ]),
        body: Center(
            child: FadeInImage(
          fadeInDuration: Duration(milliseconds: 200),
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
            "https://assets.entrepreneur.com/content/3x2/2000/20190927183318-Spiderman.jpeg",
          ),
        )));
  }
}
