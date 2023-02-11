// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(153, 57, 146, 219),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.app_shortcut_rounded,
                size: 40,
                color: Color.fromARGB(255, 248, 156, 17),
              ),
              SizedBox(
                width: 10,
              ),
              Text("IPhone",
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 156, 17),
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        bottomNavigationBar:
            BottomNavigationBar(selectedItemColor: Colors.red, items: [
          BottomNavigationBarItem(
              label: " Home", icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(
              label: " Search",
              icon: Icon(
                Icons.search,
                // size: 15,
              )),
          BottomNavigationBarItem(
              label: "Explore ",
              icon: Icon(
                Icons.explore,
              )),
        ]),
        body: _bodyBuild());
  }
}

_bodyBuild() {
  return Column(
    children: [
      Column(
        children: [
          Row(
            children: [
              Image.network(
                "https://shop.unicornstore.in/uploads/42d8aefdb7b98aaa12458f144c52ac8e.jpeg",
                fit: BoxFit.cover,
                width: 423,
              )
            ],
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 20),
            color: Color.fromARGB(164, 189, 185, 185),
            elevation: 0,
            child: ListTile(
              leading: Container(
                margin: EdgeInsets.only(left: 250),
                child: Text("ابحث هنا",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 139, 139, 139),
                    )),
              ),
              trailing: Icon(
                Icons.search,
                size: 40,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "الاقسام",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(246, 158, 158, 158)),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 207, 205, 198),
                            borderRadius: BorderRadius.circular(20)),
                        child: Opacity(
                          opacity: 0.5,
                          child: ClipRRect(
                            child: Image(
                              width: 200,
                              height: 150,
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSE5hbK4tXLxrQ-64oWlyDJpy282fk27KIMw&usqp=CAU",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 55,
                          left: 25,
                          child: Text(
                            "الاكسسوارات",
                            style: TextStyle(
                              fontSize: 32,
                              color: Color.fromARGB(255, 43, 42, 42),
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 207, 205, 198),
                            borderRadius: BorderRadius.circular(20)),
                        child: Opacity(
                          opacity: 0.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              width: 200,
                              height: 150,
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfvhgbmq25M1OmNWb6zfvkynMZMRB1SFX70KbGeytJ4vteytLQ4cCAlPDcAMhHZojjbj4&usqp=CAU",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 50,
                          left: 50,
                          child: Text(
                            "الاجهزة",
                            style: TextStyle(
                              fontSize: 35,
                              color: Color.fromARGB(255, 37, 36, 36),
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      )
    ],
  );
}
