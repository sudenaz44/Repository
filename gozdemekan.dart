// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class GozdeMekan extends StatelessWidget {
  const GozdeMekan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gozde Mekanlar",
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
                             
                                
                              ],
                            ),
                            height: 200,
                            width: 185,
                            
                          )),
                    ],
                  ),
                  
                ],
              ),
            ),
            
          ],
        );
  }
}
