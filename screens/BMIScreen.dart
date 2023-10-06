import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI extends StatefulWidget{
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  String userHeightInput = "";
  String userWeightInput = "";
  String userBmi = "";
  String userHealth = "";

  String currentSelection = "height";

  bool isHeightSelected = true;
  bool isWeightSelected = false;

  bool isUW = false;
  bool isOW = false;
  bool isN = false;

  List<String> buttonList = [
    "7",
    "8",
    "9",
    "AC",
    "4",
    "5",
    "6",
    "C",
    "1",
    "2",
    "3",
    "GO",
    "0",
    ".",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("BMI",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(CupertinoIcons.chart_bar_alt_fill, color: Colors.deepOrange,),
          ],
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            currentSelection = "height";
                            isHeightSelected = true;
                            isWeightSelected = false;
                          });
                        },
                        child: Text("Height",
                          style: isHeightSelected ? const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepOrange,
                          ) : TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary
                          ),
                      ),
                      ),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            currentSelection = "height";
                            isHeightSelected = true;
                            isWeightSelected = false;
                          });
                        },
                        child: Text("$userHeightInput cms",
                          style: isHeightSelected ? const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepOrange,
                          ) : TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            currentSelection = "weight";
                            isHeightSelected = false;
                            isWeightSelected = true;
                          });
                        },
                        child: Text("Weight",
                          style: isWeightSelected ? const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepOrange,
                          ) : TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            currentSelection = "weight";
                            isHeightSelected = false;
                            isWeightSelected = true;
                          });
                        },
                        child: Text("$userWeightInput kgs",
                          style: isWeightSelected ? const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepOrange,
                          ) : TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("BMI  ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),),
                        Text(userBmi, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700,),),
                        Text("  $userHealth",
                          style: isUW ? const TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.w500):
                          isOW ? const TextStyle(fontSize: 15, color: Colors.redAccent, fontWeight: FontWeight.w500):
                          const TextStyle(fontSize: 15, color: Colors.green, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text("Information", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Underweight", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),),
                        Text("Normal", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500),),
                        Text("Overweight", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(color: Colors.blue, height: 5,)),
                        Expanded(child: Container(color: Colors.green, height: 5,)),
                        Expanded(child: Container(color: Colors.redAccent, height: 5,)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("16.0", style: TextStyle(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),),
                        Text("18.5", style: TextStyle(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),),
                        Text("25.0", style: TextStyle(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),),
                        Text("40.0", style: TextStyle(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),),
                      ],
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
            flex: 4,
              child: Container(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: GridView.builder(
                    itemCount: buttonList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index){
                      return CustomButton(buttonList[index]);
                    }
                ),
              ),
          ),
        ],
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Widget CustomButton(String btn){
    return InkWell(
      splashColor: Theme.of(context).colorScheme.secondary,
      onTap: (){
        setState(() {
          handleButton(btn);
        });
      },
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Ink(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.secondary,
                blurRadius: 4,
                spreadRadius: 0.5,
                offset: const Offset(3, 3),
              ),
              BoxShadow(
                color: Theme.of(context).colorScheme.tertiary,
                blurRadius: 4,
                spreadRadius: 0.1,
                offset: const Offset(-3, -3),
              ),
            ]
        ),
        child: Center(
          child: Text(btn,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: getTextColor(btn),
            ),
          ),
        ),
      ),
    );
  }
  getTextColor(String txt){
    if(txt == "AC" || txt == "C"){
      return Colors.deepOrangeAccent;
    }
    if(txt == "GO"){
      return Colors.green;
    }
    else {
      return Theme.of(context).colorScheme.primary;
    }
  }
  handleButton(String txt){
    if(txt == "AC"){
      userHeightInput = "";
      userWeightInput = "";
      userBmi = "";
      userHealth = "";
      return;
    }
    if(txt == "C"){
      if(currentSelection == "height"){
        if(userHeightInput.isNotEmpty){
          userHeightInput = userHeightInput.substring(0, userHeightInput.length - 1);
          return;
        }
        else {
          return null;
        }
      }
      if(currentSelection == "weight"){
        if(userWeightInput.isNotEmpty){
          userWeightInput = userWeightInput.substring(0, userWeightInput.length - 1);
          return;
        }
        else {
          return null;
        }
      }
    }
    if(txt == "GO"){
      if(userHeightInput == "" || userWeightInput == ""){
        return;
      }
      else{
        userBmi = calculate();
        double bmi = double.parse(userBmi);
        if(bmi < 18.5){
          userHealth = "Underweight";
          isUW = true;
          isOW = false;
          isN = false;
        }
        else if(bmi > 25){
          userHealth = "Overweight";
          isUW = false;
          isOW = true;
          isN = false;
        }
        else{
          userHealth = "Normal";
          isUW = false;
          isOW = false;
          isN = true;
        }
        return;
      }
    }
    if(currentSelection == "height"){
      userHeightInput = userHeightInput + txt;
    }
    else{
      userWeightInput = userWeightInput + txt;
    }
  }
  String calculate(){
    try{
      double dHeight = double.parse(userHeightInput);
      double dWeight = double.parse(userWeightInput);

      double heightInMeter = dHeight * 0.01;
      double answer = dWeight / (heightInMeter * heightInMeter);
      return answer.toStringAsFixed(2);
    } catch(e){
      return "Error occurred!";
    }
  }

}