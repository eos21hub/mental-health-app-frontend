import 'package:flutter/material.dart';
import 'package:mentalapp/pages/home_page.dart';
import 'package:mentalapp/util/emotiocon_face.dart';
import 'package:mentalapp/util/exercise_tile.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Greetings row
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Hi Emma
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Emma!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        //Date
                        Text(
                          '26 July, 2025',
                          style: TextStyle(color: Colors.blue[200]),
                        ),
                      ],
                    ),

                    //Notification
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(Icons.notifications, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Search bar
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Search text
                        Text('Search', style: TextStyle(color: Colors.white)),
                        // icon
                        Icon(Icons.search, color: Colors.white),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // how do you feel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    Icon(Icons.more_horiz, color: Colors.white),
                  ],
                ),

                SizedBox(height: 15),
                //4 different emoji faces
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //bad
                    Column(
                      children: [
                        EmotioconFace(emotioconFace: '😣'),
                        SizedBox(height: 8),
                        Text('Bad', style: TextStyle(color: Colors.white)),
                      ],
                    ),

                    // fine
                    Column(
                      children: [
                        EmotioconFace(emotioconFace: '😓'),
                        SizedBox(height: 8),
                        Text('Fine', style: TextStyle(color: Colors.white)),
                      ],
                    ),

                    //well
                    Column(
                      children: [
                        EmotioconFace(emotioconFace: '😊'),
                        SizedBox(height: 8),
                        Text('well', style: TextStyle(color: Colors.white)),
                      ],
                    ),

                    //execellent
                    Column(
                      children: [
                        EmotioconFace(emotioconFace: '😂'),
                        SizedBox(height: 8),
                        Text(
                          'excellent',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 1),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26.0),
                  topRight: Radius.circular(26.0),
                ),
              ),
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  //exercise heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exercises',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      Icon(Icons.more_horiz),
                    ],
                  ),

                  SizedBox(height: 20),

                  //ListView of exercises
                  Expanded(
                    child: ListView(
                      children: [
                        ExerciseTile(
                          icon: Icons.favorite,
                          exerciseName: 'Speaking Skills',
                          numberOfExercises: 16,
                          color: Colors.orange,
                        ),
                        ExerciseTile(
                          icon: Icons.person,
                          exerciseName: ' Reading Skills',
                          numberOfExercises: 12,
                          color: Colors.green,
                        ),
                        ExerciseTile(
                          icon: Icons.star,
                          exerciseName: 'Writing Skills',
                          numberOfExercises: 14,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
