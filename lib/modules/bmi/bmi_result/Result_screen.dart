import 'package:bmi/modules/bmi/bmi_result/underweight.dart';
import 'package:flutter/material.dart';


import 'extream_obesity.dart';
import 'normalweight.dart';
import 'obesity.dart';
import 'overweight.dart';


class Result_screen extends StatelessWidget {

  final int result;
  String s;
  int a;
  Result_screen({
    @required this.result,
    this.s,
    this.a,
  });


  String statues(){
    if(result < 18.5 ){
      s  = 'Underweight' ;
      a=1;
      return '${s}';
    }
    else if(result > 18.5 && result <24.9 ){
      s  = 'Normalweight';
      a=2;
      return(s);
    }
    else if(result > 25 && result < 29.9 ){
      s  = 'Overweight';
     a=3;
      return '${s}';
    }
    else if(result > 30 && result < 39.9){
      s  = 'Obesity';
      a=4;
      return '${s}';
    }
    else if(result >40){
      s  = 'Extream Obesity';
     a=5;
      return '${s}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        //عشان اغير شكل السهم الافتراضي
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          } ,
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),

        title: (
        Text(
          'BMI Result'
        )
        ),
      ),

      body:
      Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(

            children: [
              Text(
                'Result = ${result} Your statues is ${statues()} ',

                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '\n\n\n\n You are always beautiful, there is no beauty standard for our weights \n \n But it is important to take care of our health, so here are some appropriate tips for ${statues()} ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pink
                  ),),
              ),
              SizedBox(
                   height:90 ,
                ),
              Container(
                width: 200,
                color: Colors.teal,
                height: 50,
                child: MaterialButton(
                  onPressed: ()
                  {
                    if(a==1){Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Underweight(),
                      ),
                    );}
                    else if(a==2){Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NormalWeight(),
                      ),
                    );}
                    else if(a==3){Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Overweight(),
                      ),
                    );}
                    else if(a==4){Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Obesity(),
                      ),
                    );}
                    else if(a==5){Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Extream_Obesity(),
                      ),
                    );}
                  },
                  child: (
                      Text('lets go',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
