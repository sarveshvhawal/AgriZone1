import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'newpage.dart';
import 'package:path/path.dart';
import 'HomePageFarmer.dart';


void main()=> runApp(new MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Agrizone",
      theme: new ThemeData(
          primaryColor: Colors.green,
          accentColor: Colors.greenAccent
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title:

                new Text("AgriZone"),

          elevation: defaultTargetPlatform == TargetPlatform.android
              ? 15.0
              : 0.0,
        ),
        body: new HomePageFarmersbuy(),
        drawer: new dapp(),
      ),

    );
  }
}

class dapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("NO_ONE"),
              accountEmail: new Text("no_name1221@gmail.com"),
              decoration: BoxDecoration(
                  color: Colors.redAccent
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.limeAccent,
                child: new Text("F"),
              ),
              onDetailsPressed: ()
          {
    Navigator.of(context).pop();
    Navigator.of(context).push(new MaterialPageRoute(
    builder: (BuildContext context) =>
    new NewPage("Info")));
    },


              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.limeAccent,
                  child: new Text("S"),
                )
              ],
            ),

            new Divider(),
            new ListTile(
              title: new Text("Contacts Us"),
              trailing: new Icon(Icons.contacts),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new NewPage("call me")));
              },
            ),

            new ListTile(
              title: new Text("Log Out"),
              trailing: new Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new NewPage("Bye Bye")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons
                  .close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}


