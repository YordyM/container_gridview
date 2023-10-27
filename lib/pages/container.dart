import 'package:flutter/material.dart';

class MyAppc extends StatelessWidget {
  const MyAppc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de Container Yordy'),
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 700,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/fondoapp.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  color: Color.fromARGB(255, 31, 20, 234),
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
        ),
      ),
    );
  }
}
