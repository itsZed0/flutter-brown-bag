import 'package:brownbag/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: (settings) {
        final args = settings.arguments as Map;
        switch (settings.name) {
          case '/second':
            return MaterialPageRoute(
                builder: (_) => SecondPage(
                    title: args["title"], decription: args["description"]));
        }
      },
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
          primarySwatch: Colors.green,
          accentColor: Colors.pink),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("App bar "),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Aaccount Name 1"),
                accountEmail: Text("dsome@foam.com"),
                currentAccountPicture: InkWell(
                  child: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  onTap: () {},
                ),
              ),
              ListTile(
                title: Text(
                  "Link1",
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text("Link2"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Link2"),
                onTap: () {},
              )
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          // child: Align(
          //   alignment:  Alignment.bottomCenter,
          //   child: ElevatedButton(
          //     child: Text("Button"),
          //     onPressed: () {},
          //   ),
          // )
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Count value $counter',
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Button"),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/second',
                    arguments: {
                      'title': 'dummy title',
                      'description': 'dummy descr'
                    },
                  );
                },
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
