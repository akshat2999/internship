import 'package:flutter/material.dart';
import 'package:sample/screens/holiday_screen.dart';
import 'package:sample/screens/kyc_screen.dart';
import 'package:sample/screens/work_screen.dart';
import './screens/attendence_screen.dart';
import './screens/complaints_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: GridScreen(),
        routes: {
          MyWork.routeName: (ctx) => MyWork(),
          Complaints.routeName: (ctx) => Complaints(),
          Holiday.routeName: (ctx) => Holiday(),
          Attendence.routeName: (ctx) => Attendence(),
          Kyc.routeName: (ctx) => Kyc(),
        });
  }
}

class GridScreen extends StatelessWidget {
  static final routeName = '/grid_page';

  const GridScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //func
    GridTile gridtile(String title, Icon icon, var screens) {
      return GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(screens);
          },
          child: Container(
            margin: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: icon,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
        ),
      );
    }

    List<Widget> gridTile = [
      gridtile(
        'My Work',
        Icon(
          Icons.work,
          color: Colors.black,
          size: 60,
        ),
        MyWork.routeName,
      ),
      gridtile(
        'Complaints',
        Icon(
          Icons.warning,
          color: Colors.black,
          size: 60,
        ),
        Complaints.routeName,
      ),
      gridtile(
        'My Holidays',
        Icon(
          Icons.home,
          color: Colors.black,
          size: 60,
        ),
        Holiday.routeName,
      ),
      gridtile(
        'My Attendence',
        Icon(
          Icons.person_pin,
          color: Colors.black,
          size: 60,
        ),
        Attendence.routeName,
      ),
      gridtile(
        'My KYC',
        Icon(
          Icons.book,
          color: Colors.black,
          size: 60,
        ),
        Kyc.routeName,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Color(0xff414040),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
        ),
        child: GridView.builder(
          padding: EdgeInsets.only(top: 40),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            // crossAxisSpacing: 4.0,
            // mainAxisSpacing: 4.0,
          ),
          itemBuilder: (ctx, i) => gridTile[i],
          itemCount: gridTile.length,
        ),
      ),
    );
  }
}
