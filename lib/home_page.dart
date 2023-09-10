import 'package:flutter/material.dart';
import 'package:new_project/util/emotion_faces.dart';
import 'package:new_project/util/exercise_tile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),

      ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            //Greetings Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, Ahmad!",style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('7 September, 2023',
                          style:
                            TextStyle(color: Colors.blue[200]),)
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child:
                        Icon(Icons.notifications,
                          color: Colors.white,),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search,
                        color: Colors.white,),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Search',
                        style:
                          TextStyle(
                            color: Colors.white,

                          ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("How do you feel?",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                      ),
                      Icon(Icons.more_horiz,color: Colors.white,),
                    ],
                  ),
                  //Emotions******
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //BAD****
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😫',),
                          SizedBox(height: 8,),
                          Text('Bad',style: TextStyle(
                            color: Colors.white,
                          ),
                          )
                        ],
                      ),

                      //FINE****
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '🙂',),
                          SizedBox(height: 8,),
                          Text('Fine',style: TextStyle(
                            color: Colors.white,
                          ),
                          )
                        ],
                      ),

                      //WELL***
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😄',),
                          SizedBox(height: 8,),
                          Text('Well',style: TextStyle(
                            color: Colors.white,
                          ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '🥳',),
                          SizedBox(height: 8,),
                          Text('Excellent',style: TextStyle(
                            color: Colors.white,
                          ),
                          )
                        ],
                      ),


                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
              borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
        topLeft: Radius.circular(40.0),
        )
                ),
    padding: EdgeInsets.all(25),
                // color: Colors.grey[100],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Exercises', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),
                          Icon(Icons.more_horiz),

                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                     Expanded(child: ListView(
                       children: [
                         ExerciseTile(icon: Icons.favorite,
                           exerciseName: 'Speaking Skills',
                           numberOfExxercises: 16,
                           color: Colors.orange,),
                         ExerciseTile(icon: Icons.person,
                           exerciseName: 'Reading Skills',
                           numberOfExxercises: 8,
                           color: Colors.green,),
                         ExerciseTile(icon: Icons.star,
                           exerciseName: 'Writing Skills',
                           numberOfExxercises: 20,
                           color: Colors.pink,)

                       ],
                     )
                     )
                    ],
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
