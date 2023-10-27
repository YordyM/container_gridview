import 'package:flutter/material.dart';

class MyAppg extends StatelessWidget {
  const MyAppg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de GridView Yordy'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Container(
              margin: EdgeInsets.all(10),
              color: Color.fromARGB(255, 15, 31, 214),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/imagen${index + 1}.png',
                      width: 150,
                      height: 150,
                    ),
                    Text(
                      'imagen $index',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
