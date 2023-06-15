import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home:  MyHomePage(),
      // routes: <String, WidgetBuilder>{
      //   "a/" : (BuildContext context) => NewPage("New Page",)
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Drawer App")
        ),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
           UserAccountsDrawerHeader(
               accountName: Text('Md Sharjeel'),
               accountEmail: Text("sharjeelfarooqui19@gmail.com"),
             currentAccountPicture: CircleAvatar(
               backgroundColor: Colors.brown,
               child: Text('S'
               ),
             ),
           ),
            ListTile(
              title: Text("Page 1"),
              trailing: Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => NewPage("Page one", Colors.lightGreen)));
              }

            ),
            ListTile(
              title: Text("Page 2"),
              trailing: Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NewPage("Page Two", Colors.redAccent)));
              },
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  String title2;
  Color colors;
  NewPage(this.title2, this.colors);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("New Page"),
      ),
      body: Container(
        color: colors,
        child: Center(child: Text(title2)),
      ),
    );
  }
}