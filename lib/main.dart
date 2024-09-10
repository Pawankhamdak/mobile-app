import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: "Score App",
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  int score = 0;
  void increase() {
    setState(() {
      print(score);
      score++;
    });
    
  }

  void decrease() {
    print(score);
    setState(() {
      score--;
    });
    
  }

  void reset() {
    setState(() {
      score = 0;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        child: IconButton(
          onPressed: reset,
          icon: Icon(Icons.delete),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blueGrey),
      ),
      appBar: AppBar(
        title: Text(
          "Score App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "Your Score",
            style: TextStyle(fontSize: 50),
          ),
          Text("$score"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:
                    IconButton(onPressed: increase, icon: Icon(Icons.arrow_upward)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
              ),
              SizedBox(
                width: 20,
                height:20
              ),
              Container(
                child: IconButton(
                    onPressed: decrease, icon: Icon(Icons.arrow_downward)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
              ),
            ],
          )
        ],
      ),
    );
  }
}