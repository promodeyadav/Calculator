import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override

  State createState() => new HomePageState();

}

class HomePageState extends State<HomePage>{

  var num1=0,num2=0,sum=0;
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
     sum = num1 + num2; 
    });
  }
  void doSubtraction(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
     sum = num1 - num2; 
    });
  }
  void doMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
     sum = num1 * num2; 
    });
  }
  void doDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
     sum = num1 ~/ num2; 
    });
  }
  void doClear(){
    setState(() {
     t1.text = "0";
     t2.text = "0"; 
     
    });
  }

  @override

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Output : $sum",
            style: TextStyle(
              fontSize: 30,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              // fontFamily: 'RobotoMono'
            )),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number One"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration( 
                hintText: "Enter Number Two"),
              controller: t2,
            ),
            new Padding(
                padding:const EdgeInsets.only(top: 30.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.blue,
                  child: new Text("+"),
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  color: Colors.blue,
                  child: new Text("-"),
                  onPressed: doSubtraction,
                ),   
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                
                new MaterialButton(
                  color: Colors.blue,
                  child: new Text("*"),
                  onPressed: doMul,
                ),
                new MaterialButton(
                  color: Colors.blue,
                  child: new Text("/"),
                  onPressed: doDiv,
                ),      
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
             new Row(
               mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              new MaterialButton(
              color: Colors.teal,
              child: new Text("Clear"),
              onPressed: doClear,
            )
          ],
        )
          ],
        ),
       
      ),
    );
  }
}