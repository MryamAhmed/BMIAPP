import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Underweight extends StatelessWidget {


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
              Text('Why being underweight could be a problem',
              style: TextStyle(
                fontSize: 20
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('* Nutritional deficiencies: if you re underweight, it is likely that you re not eating a healthy, balanced diet, which can lead to you lacking nutrients that your body needs to work properly. Calcium, for example, is important for the maintenance of strong and healthy bones. If you do not get enough calcium, you risk developing osteoporosis (fragile bone disease). If you do not get enough iron, you may develop anaemia, which can make you feel drained and tired \n \n* Weakened immune system: your immune system is not 100% when youre underweight, so youre more likely to catch a cold flu or other infections \n\n * Fertility problems: women who are underweight can find that their periods stop.',
              style: TextStyle(
                fontSize: 16
              ),),
              SizedBox(
                height: 30,
              ),
              Text('How to put on weight safely',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text('*if diet is the cause of your low weight, changing to a healthy, balanced diet that provides the right amount of calories for your age, height and how active you are can help you achieve a healthy weight. \n\n * Aim to gain weight gradually until you reach a healthy weight.\n\n * Try to avoid relying on high-calorie foods full of saturated fat and sugar – such as chocolate, cakes and sugary drinks – to gain weight. \n\n * These foods can increase body fat instead of lean body mass and increase your risk of developing high levels of cholesterol in your blood. \n\n * Instead, aim for regular meals and occasional snacks, and base your diet on the Eatwell Guide. This means:',
                style: TextStyle(
                    fontSize: 16
                ),),
              Text('*Eating at least 5 portions of a variety of fruit and vegetables every day. \n\n * Basing meals on potatoes, bread, rice, pasta or other starchy carbohydrates. Choose wholegrain where possible..\n\n * Having some dairy or dairy alternatives (such as soya drinks and yoghurts). Have whole (full-fat) milk until you build your weight back up.\n\n * Eating some beans, pulses, fish, eggs, meat and other protein. Aim for 2 portions of fish every week – 1 of which should be oily, such as salmon or mackerel. \n\n * Choosing unsaturated oils and spreads, such as sunflower or rapeseed, and eating them in small amounts. \n\n *Drinking plenty of fluids. The government recommends 6 to 8 glasses a day. But try not to have drinks just before meals to avoid feeling too full to eat.',
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
