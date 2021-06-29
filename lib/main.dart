import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Task 2 & 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        //  leading: Icon(Icons.sim_card),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: Icon(Icons.notification_add),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 200,
              width: 300,
              child: Center(
                  child: Text(
                "Burger Menu",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              )),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
              trailing: Icon(Icons.home),
              // tileColor: Colors.grey,
            ),
            Divider(thickness: 2.0, color: Colors.blue),
            ListTile(
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
              trailing: Icon(Icons.settings),
              //tileColor: Colors.grey,
            ),
            Divider(thickness: 2.0, color: Colors.blue),
            ListTile(
              title: Text(
                "Support",
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
              trailing: Icon(Icons.support),
              //tileColor: Colors.grey,
            ),
            Divider(thickness: 2.0, color: Colors.blue),
            ListTile(
              title: Text(
                "Help",
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
              trailing: Icon(Icons.help),
              //tileColor: Colors.grey,
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                "https://as1.ftcdn.net/jpg/01/07/99/42/500_F_107994250_cPTiphdmGOVM56qCuEvKu0AAWXBvbSx3.jpg"),
            Row(
              children: [
                Icon(Icons.home, size: 100.0, color: Colors.blue),
                Icon(Icons.games, size: 100.0, color: Colors.deepOrange),
                Icon(Icons.access_alarm, size: 100.0, color: Colors.green),
                Icon(Icons.account_balance_wallet,
                    size: 100.0, color: Colors.indigo),
              ],
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.network(
                        "https://cdn.wallpapersafari.com/17/50/AEdP9u.jpg"),
                  ),
                  Expanded(
                    flex: 3,
                    child: Image.network(
                        "https://thumbs.dreamstime.com/z/closeup-shot-cute-baby-lion-cub-205613132.jpg"),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.network(
                        "https://thelegitimatenews.com/wp-content/uploads/2017/08/Deep-Green-Forest-Slow-River-WaLp-TW.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 30.0, 100.0, 0.0),
              child: Center(
                child: Container(
                  height: 20,
                  width: 78,
                  padding: EdgeInsets.zero,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Icon(Icons.star, size: 15, color: Colors.white),
                      Icon(Icons.star, size: 15, color: Colors.white),
                      Icon(Icons.star, size: 15, color: Colors.white),
                      Icon(Icons.star, size: 15, color: Colors.white),
                      Icon(Icons.star, size: 15, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 8.0, 100.0, 8.0),
              child: ElevatedButton(
                  onPressed: () {
                    print("You clicked");
                  },
                  child: Text("Click here",
                      style: TextStyle(color: Colors.white))),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 200,
                  //color: Colors.black,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: Center(
                      child: Text("Lokesh Yogi",
                          style: TextStyle(color: Colors.yellow))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
