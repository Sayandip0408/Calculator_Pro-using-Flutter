import 'package:calculator_pro/screens/MenuScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget{
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = "";
  String result = "0";
  List<String> buttonList = [
    "AC",
    "(",
    ")",
    "/",
    "7",
    "8",
    "9",
    "*",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    "0",
    ".",
    "C",
    "=",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(onPressed: (){},
                icon: const Icon(CupertinoIcons.equal_square_fill, color: Colors.deepOrangeAccent, size: 30,),
            ),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Menu()));
            },
              icon: const Icon(CupertinoIcons.square_favorites_alt_fill, color: Colors.grey, size: 28,),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(userInput,
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    Text(result,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(10),
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
                fontSize: getFontSize(btn),
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
    if(txt == "="){
      return Colors.green;
    }
    else {
      return Theme.of(context).colorScheme.primary;
    }
  }
  getFontSize(String txt){
    if(txt == "="){
      return 35.0;
    }
    else {
      return 24.0;
    }
  }
  handleButton(String txt){
    if(txt == "AC"){
      userInput = "";
      result = "0";
      return;
    }
    if(txt == "C"){
      if(userInput.isNotEmpty){
        userInput = userInput.substring(0, userInput.length - 1);
        return;
      }
      else {
        return null;
      }
    }
    if(txt == "="){
      result = calculate();
      userInput = result;
      if(userInput.endsWith(".0")){
        userInput = userInput.replaceAll(".0", "");
        return;
      }
      return;
    }
    userInput = userInput + txt;
  }
  String calculate(){
    try{
      var exp = Parser().parse(userInput);
      var evaluation = exp.evaluate(EvaluationType.REAL, ContextModel());
      String answer = evaluation.toString();
      if(answer.endsWith(".0")){
        answer = answer.replaceAll(".0", "");
      }
      return answer;
    } catch(e){
      return "Syntax Error!";
    }
  }

} // end of _CalculatorState