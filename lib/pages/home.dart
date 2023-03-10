import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> with SingleTickerProviderStateMixin {

  int _index = 0;

  List quotes = [
    "If you can dream it, you can do it.",
    "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "The most important thing is to enjoy your life - to be happy - it's all that matters.",
    "The best way to find out what you want in life is to try a lot of things.",
    "You only live once, but if you do it right, once is enough.",
    "The only limit to our realization of tomorrow will be our doubts of today.",
    "The only way to do great work is to love what you do.",
    "A journey of a thousand miles begins with a single step.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 350,
                height: 300,
                margin: const EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade200,
                  borderRadius: BorderRadius.circular(12.5)
                ),
                
                child: Padding(
                  padding: EdgeInsets.all(20), 
                  child: Center(
                    child: Text(
                      quotes[_index % quotes.length],
                      style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    )
                  )
                ),
              ),
              const Divider(thickness: 1.3,),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ElevatedButton.icon(
                  onPressed: (){
                    _showQuote();
                  }, 
                  icon: const Icon(Icons.wb_sunny),  //icon data for elevated button
                  label: const Text("Inspire me!!"), //label text 
                ),
              ),
              const Spacer(),
              
          ]),
        ),
      )
    );
  }
  
  void _showQuote() {
    setState(() {
      _index += 1;  
    });
  }

}