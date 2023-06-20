import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Overweight extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('Diet',
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('* There s no single rule that applies to everyone, but to lose weight at a safe and sustainable rate of 0.5 to 1kg a week, most people are advised to reduce their energy intake by 600 calories a day. \n \n* For most men, this will mean consuming no more than 1,900 calories a day, and for most women, no more than 1,400 calories a day.\n\n *The best way to achieve this is to swap unhealthy and high-energy food choices – such as fast food, processed food and sugary drinks (including alcohol) – for healthier choices.\n\n *A healthy diet should consist of:',
                  style: TextStyle(
                      fontSize: 16
                  ),),
                SizedBox(
                  height: 30,
                ),
                Text('* plenty of fruit and vegetables. \n\n * plenty of potatoes, bread, rice, pasta and other starchy foods (ideally you should choose wholegrain varieties).\n\n * some milk and dairy foods \n\n * some meat, fish, eggs, beans and other non-dairy sources of protein. \n\n * just small amounts of food and drinks that are high in fat and sugar:',
                  style: TextStyle(
                      fontSize: 16
                  ),),
                Text('*Try to avoid foods containing high levels of salt because they can raise your blood pressure, which can be dangerous for people who are already obese. Read some tips for a lower-salt diet. \n\n * Youll also need to check calorie information for each type of food and drink you consume to make sure you dont go over your daily limit..\n\n * Some restaurants, cafés and fast food outlets provide calorie information per portion, although providing this information isn t compulsory. Be careful when eating out because some foods can quickly take you over the limit, such as burgers, fried chicken, and some curries or Chinese dishes..',
                  style: TextStyle(
                      fontSize: 16
                  ),),


              ],
            ),
          ),
        )
    );
  }
}
