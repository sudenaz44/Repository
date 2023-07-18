// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:bootcamp/widgets/GozdeMekan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePagestate createState() => _HomePagestate();
}

class _HomePagestate extends State<HomePage> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GoTasted',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          title: Text(
            'GoTasted',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tercih Edilen Mekanlar",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Hepsini Gör",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset("assets/classkumpir.jpg",
                                  fit: BoxFit.cover,
                                  height: 120,
                                  width: 175,
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top:5),
                                      child: Text("Class Kumpir",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(right:8.0, top:3),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,color: Colors.yellow,),
                                          Text("4.2")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Row(children: [
                                    Icon(Icons.location_pin, color: Colors.black54 ,),
                                  Text("Beşiktaş",style: TextStyle(color: Colors.black54),),
                                  ],),
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right:8.0),
                                      child: Icon(Icons.favorite, color: Colors.red,size: 27,),
                                    )
                                  ],)
                                ],)
                              ],
                            ),
                            height: 200,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(2.5, 5)),
                              ],
                            ),
                          )),
                          Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset("assets/classkumpir.jpg",
                                  fit: BoxFit.cover,
                                  height: 120,
                                  width: 175,
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top:5),
                                      child: Text("Class Kumpir",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(right:8.0, top:3),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,color: Colors.yellow,),
                                          Text("4.2")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Row(children: [
                                    Icon(Icons.location_pin, color: Colors.black54 ,),
                                  Text("Beşiktaş",style: TextStyle(color: Colors.black54),),
                                  ],),
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right:8.0),
                                      child: Icon(Icons.favorite, color: Colors.red,size: 27,),
                                    )
                                  ],)
                                ],)
                              ],
                            ),
                            height: 200,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(2.5, 5)),
                              ],
                            ),
                          )),
                          Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset("assets/classkumpir.jpg",
                                  fit: BoxFit.cover,
                                  height: 120,
                                  width: 175,
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top:5),
                                      child: Text("Class Kumpir",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(right:8.0, top:3),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,color: Colors.yellow,),
                                          Text("4.2")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Row(children: [
                                    Icon(Icons.location_pin, color: Colors.black54 ,),
                                  Text("Beşiktaş",style: TextStyle(color: Colors.black54),),
                                  ],),
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right:8.0),
                                      child: Icon(Icons.favorite, color: Colors.red,size: 27,),
                                    )
                                  ],)
                                ],)
                              ],
                            ),
                            height: 200,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(2.5, 5)),
                              ],
                            ),
                          )),
                    ],
                  ),
                  
                ],
              ),
            ),
            
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          selectedItemColor: Color(0xff008FA0), // Seçilen buton rengi
          unselectedItemColor: Colors.grey, // Seçilmemiş buton rengi
          onTap: _onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Lokasyon',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoriler',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
