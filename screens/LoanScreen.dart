import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loan extends StatefulWidget{
  const Loan({super.key});

  @override
  State<Loan> createState() => _LoanState();
}

class _LoanState extends State<Loan> {

  String amount = "1000";

  double _currentRateSliderValue = 9.7;
  String rateOfInterest = "9.7";

  double _currentTenureSliderValue = 6.5;
  String loanTenure = "6.5";

  String emi = "0";
  String totalInterest = "0";
  String totalPayable = "0";

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
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Loan",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(CupertinoIcons.money_dollar_circle_fill, color: Colors.deepOrange,),
          ],
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Amount:",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                        Text("$amount Rs.",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text("Interest Rate:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Slider(
                            value: _currentRateSliderValue,
                            min: 5,
                            max: 20,
                            divisions: 150,
                            activeColor: Colors.deepOrange,
                            inactiveColor: Theme.of(context).colorScheme.background,
                            label: _currentRateSliderValue.toStringAsFixed(1),
                            onChanged: (double value) {
                              setState(() {
                                _currentRateSliderValue = value;
                                rateOfInterest = _currentRateSliderValue.toStringAsFixed(1);
                              });},
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text("$rateOfInterest %",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                  color: Theme.of(context).colorScheme.primary
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text("Tenure:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Slider(
                            value: _currentTenureSliderValue,
                            min: 1,
                            max: 10,
                            divisions: 18,
                            activeColor: Colors.deepOrange,
                            inactiveColor: Theme.of(context).colorScheme.background,
                            label: _currentTenureSliderValue.toStringAsFixed(1),
                            onChanged: (double value) {
                              setState(() {
                                _currentTenureSliderValue = value;
                                loanTenure = _currentTenureSliderValue.toStringAsFixed(1);
                              });},
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text("$loanTenure yrs",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                  color: Theme.of(context).colorScheme.primary
                              ),
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
                      Text("EMI: ", style: TextStyle(fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary),),
                      Text(emi, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
                      Text(" Rs.", style: TextStyle(fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Loan Amount: ", style: TextStyle(fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary),),
                      Text(amount, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Interest: ", style: TextStyle(fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary),),
                      Text(totalInterest, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Payable: ", style: TextStyle(fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary),),
                      Text(totalPayable, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary,),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: GridView.builder(
                itemCount: buttonList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
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
      amount = "0";
      rateOfInterest = "9.7";
      loanTenure = "6.5";
      emi = "0";
      _currentRateSliderValue = 9.7;
      _currentTenureSliderValue = 6.5;
      return;
    }
    if(txt == "C"){
        if(amount.isNotEmpty){
          amount = amount.substring(0, amount.length - 1);
          return;
        }
        else {
          return null;
        }
    }

    if(txt == "GO"){
      if(amount == "" || amount == "0"){
        return;
      }
      else{
        emi = calculate();
        double dEMI = double.parse(emi);
        double months = _currentTenureSliderValue * 12;
        totalPayable = (dEMI * months).toStringAsFixed(2);
        double dTotal = double.parse(totalPayable);
        totalInterest = (dTotal - double.parse(amount)).toStringAsFixed(2);
        double dAmount = double.parse(amount);
        amount = dAmount.toStringAsFixed(2);
        return;
      }
    }
      amount = amount + txt;
  }
  String calculate(){
    try{
      double dAmount = double.parse(amount);
      double rate = _currentRateSliderValue / 12 / 100;
      double months = _currentTenureSliderValue * 12;
      String p = pow(1+rate, months).toStringAsFixed(5);
      double power = double.parse(p);
      double answer = (dAmount * rate * power) / (power - 1);
      return answer.toStringAsFixed(2);
    } catch(e){
      return "Error occurred!";
    }
  }


}