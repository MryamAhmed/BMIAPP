import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result/Result_screen.dart';


class BMI_screen extends StatefulWidget
{
  @override
  _BMI_screenState createState() => _BMI_screenState();
}

class _BMI_screenState extends State<BMI_screen> {

  bool isFemale = true;
  double height = 120;
  int weight =40;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal,
        title: (
        Text(
            'BMI')
        ),
      ),

      body: Column(
        children: [
          //first obj
          Expanded (
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded (
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                          isFemale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.jpg'),
                              height: 90,
                              width: 90,
                            ),
                            Text(
                              'MALE',
                            style:TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ) ),
                          ],
                        ),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: !isFemale ? Colors.teal: Colors.grey[400],

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isFemale= true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image(
                                image: AssetImage('assets/images/female.jpg'),
                                 height: 90,
                                 width: 90,
                                ),
                            Text(
                                'FEMALE',
                                style:TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ) ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isFemale ? Colors.teal : Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //second
          Expanded (
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
               child: ( Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                           'HEIGHT',
                           style:TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.bold,
                           )
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         //الالتنين دول مع بعض ومش شايفه ليهم لازمه هم بس حركو cm
                         crossAxisAlignment: CrossAxisAlignment.baseline,
                         textBaseline: TextBaseline.alphabetic, ////////
                         children: [
                           Text(
                               '${height.round()}',
                               style:TextStyle(
                                 fontSize: 40,
                                 fontWeight: FontWeight.w400,
                               ) ),
                           SizedBox(
                             height: 5,
                           ),
                           Text(
                               'CM',
                               style:TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                               ) ),
                         ],
                       ),
                       Slider(
                         activeColor: Colors.teal,
                           value: height,
                           max: 220.0,
                           min: 80.0,
                           onChanged:(value){
                             setState(() {
                               height =value;
                             });
                            // print(value.round()); // روند عشان يقرب لرقم صحيح
                           }

                       )
                     ],
                   )
               ),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[400],

    ),
              ),
            ),
          ),
          //third
          Expanded (
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded (
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                              'weight',
                              style:TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ),
                          Text(
                              '${weight}',
                              style:TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                              ) ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Colors.teal,
                              heroTag: 'weight--',
                                  onPressed: ()
                                  {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.teal,
                                heroTag: 'weight++',
                                onPressed: ()
                                {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[400],

                    ),

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                              'AGE',
                              style:TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ),
                          Text(
                              '${age}',
                              style:TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                              ) ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Colors.teal,
                                heroTag: 'age--',
                                onPressed: ()
                                {
                                  age--;
                                },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.teal,
                                heroTag: 'age++',
                                onPressed: ()
                                {
                                  age++;
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],

                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            color: Colors.teal,
            height: 50,
            child: MaterialButton(
                onPressed: ()
                {
                  double result = weight/ pow(height/100 ,2);
                  //print(result.round());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Result_screen(  //constructor
                            result: result.round(),
                          ),
                      ),
                  );
                },
              child: (
              Text('CALCULATE',
              style: TextStyle(
                color: Colors.white,
              ),)
              ),
             ),
          ),
        ],
      ),
    );
  }
}
