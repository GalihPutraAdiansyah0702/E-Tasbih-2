import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
   

  int _counter = 0;

  void increment(){
    setState(() {
      _counter++;
    });
  }

  void decrement(){
    setState(() {
      _counter--;
    });
  }

  void reset(){
    setState(() {
      _counter = 0;
    });
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasbih Digital'),
        //centerTitle: true,
        actions: <Widget>
        [

        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bcg.png"),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter', 
            style: TextStyle(fontSize: 80.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: reset,
                  child: Icon(Icons.restore),
                  tooltip: 'reset',
                ),
                SizedBox(
                  width:20.0,
                ),
                FloatingActionButton(
                  onPressed: increment,
                  child: Icon(Icons.add),
                  tooltip: 'Increment',
                ),
                SizedBox(
                  width:20.0,
                ),
                FloatingActionButton(
                  onPressed: decrement,
                  child: Icon(Icons.remove),
                  tooltip: 'Decrement',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
