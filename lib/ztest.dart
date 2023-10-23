import 'package:flutter/material.dart';





class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showGif = true;

  @override
  void initState() {
    super.initState();
    // After 10 seconds, set showGif to false
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        showGif = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remove GIF After 10 Seconds'),
      ),
      body: Center(
        child: showGif
            ? Image.network('https://example.com/your_gif.gif')
            : Text(
          'GIF Removed',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}