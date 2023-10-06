import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:number_system/number_system.dart';

class NumberSystem extends StatefulWidget{
  const NumberSystem({super.key});

  @override
  State<NumberSystem> createState() => _NumberSystemState();
}

class _NumberSystemState extends State<NumberSystem> {
  String currentSelection = "bin";

  String binVal = "0";
  String octVal = "0";
  String decVal = "0";
  String hexVal = "0";


  List<String> buttonList = [
    "AC",
    "CL",
    "F",
    "E",
    "7",
    "8",
    "9",
    "D",
    "4",
    "5",
    "6",
    "C",
    "1",
    "2",
    "3",
    "B",
    "0",
    "00",
    "GO",
    "A",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Number System ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(CupertinoIcons.list_number_rtl, color: Colors.deepOrange,),
          ],
        ),
        centerTitle: true,
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "bin";
                          });
                        },
                        child: Text("Binary:",
                          style: currentSelection == "bin" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "bin";
                          });
                        },
                        child: Text(binVal,
                          style: currentSelection == "bin" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "oct";
                          });
                        },
                        child: Text("Octal:",
                          style: currentSelection == "oct" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "oct";
                          });
                        },
                        child: Text(octVal,
                          style: currentSelection == "oct" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "dec";
                          });
                        },
                        child: Text("Decimal:",
                          style: currentSelection == "dec" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "dec";
                          });
                        },
                        child: Text(decVal,
                          style: currentSelection == "dec" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "hex";
                          });
                        },
                        child: Text("HexaDec:",
                          style: currentSelection == "hex" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "hex";
                          });
                        },
                        child: Text(hexVal,
                          style: currentSelection == "hex" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
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
            flex: 5,
            child: Container(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: GridView.builder(
                  itemCount: buttonList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return CustomButton(buttonList[index]);
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget CustomButton(String btn) {
    return InkWell(
      splashColor: Theme
          .of(context)
          .colorScheme
          .secondary,
      onTap: () {
        setState(() {
          handleButton(btn);
        });
      },
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Ink(
        decoration: BoxDecoration(
            color: Theme
                .of(context)
                .colorScheme
                .background,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Theme
                    .of(context)
                    .colorScheme
                    .secondary,
                blurRadius: 4,
                spreadRadius: 0.5,
                offset: const Offset(3, 3),
              ),
              BoxShadow(
                color: Theme
                    .of(context)
                    .colorScheme
                    .tertiary,
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

  getTextColor(String txt) {
    if (txt == "AC" || txt == "CL") {
      return Colors.deepOrangeAccent;
    }
    if (txt == "GO") {
      return Colors.green;
    }
    else {
      if(currentSelection == "bin"){
        if( txt == "F" ||
            txt == "E" ||
            txt == "D" ||
            txt == "C" ||
            txt == "B" ||
            txt == "A" ||
            txt == "7" ||
            txt == "8" ||
            txt == "9" ||
            txt == "4" ||
            txt == "5" ||
            txt == "6" ||
            txt == "2" ||
            txt == "3"){
          return Theme.of(context).colorScheme.secondary;
        }
        else{
          return Theme.of(context).colorScheme.primary;
        }
      }
      if(currentSelection == "oct"){
        if( txt == "F" ||
            txt == "E" ||
            txt == "D" ||
            txt == "C" ||
            txt == "B" ||
            txt == "A" ||
            txt == "8" ||
            txt == "9"){
          return Theme.of(context).colorScheme.secondary;
        }
        else{
          return Theme.of(context).colorScheme.primary;
        }
      }
      if(currentSelection == "dec"){
        if( txt == "F" ||
            txt == "E" ||
            txt == "D" ||
            txt == "C" ||
            txt == "B" ||
            txt == "A"){
          return Theme.of(context).colorScheme.secondary;
        }
        else{
          return Theme.of(context).colorScheme.primary;
        }
      }
      if(currentSelection == "hex"){
        return Theme.of(context).colorScheme.primary;
      }
    }
  }

  handleButton(String txt) {
    if (txt == "AC") {
      binVal = "0";
      octVal = "0";
      decVal = "0";
      hexVal = "0";
      return;
    }
    if (txt == "CL") {
      if(currentSelection == "bin"){
        if(binVal.isNotEmpty){
          binVal = binVal.substring(0, binVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "oct"){
        if(octVal.isNotEmpty){
          octVal = octVal.substring(0, octVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "dec"){
        if(decVal.isNotEmpty){
          decVal = decVal.substring(0, decVal.length - 1);
        }
        return;
      }
      else{
        if(hexVal.isNotEmpty){
          hexVal = hexVal.substring(0, hexVal.length - 1);
        }
        return;
      }
    }

    if (txt == "GO") {
      if(binVal == "" || octVal == "" || decVal == "" || hexVal == ""){
        return;
      }
      else{
        if(currentSelection == "bin"){
          decVal = binVal.binaryToDec().toString();
          int decInt = int.parse(decVal);
          octVal = decInt.decToOctal().toString();
          hexVal = decInt.decToHex();
          hexVal = hexVal.substring(1);
          return;
        }
        if(currentSelection == "oct"){
          int octInt = int.parse(octVal);
          decVal = octInt.octalToDec().toString();
          int decInt = int.parse(decVal);
          hexVal = decInt.decToHex();
          hexVal = hexVal.substring(1);
          binVal = decInt.decToBinary();
          return;
        }
        if(currentSelection == "dec"){
          int decInt = int.parse(decVal);
          hexVal = decInt.decToHex();
          hexVal = hexVal.substring(1);
          binVal = decInt.decToBinary();
          octVal = decInt.decToOctal().toString();
          return;
        }
        if(currentSelection == "hex"){
          String sHex = "#$hexVal";
          decVal = sHex.hexToDEC().toString();
          int decInt = int.parse(decVal);
          binVal = decInt.decToBinary();
          octVal = decInt.decToOctal().toString();
          return;
        }
      }
    }

    if(currentSelection == "bin"){
      if( txt == "F" ||
          txt == "E" ||
          txt == "D" ||
          txt == "C" ||
          txt == "B" ||
          txt == "A" ||
          txt == "7" ||
          txt == "8" ||
          txt == "9" ||
          txt == "4" ||
          txt == "5" ||
          txt == "6" ||
          txt == "2" ||
          txt == "3"){
        return;
      }
      else{
        binVal += txt;
      }
    }
    else if(currentSelection == "oct"){
      if( txt == "F" ||
          txt == "E" ||
          txt == "D" ||
          txt == "C" ||
          txt == "B" ||
          txt == "A" ||
          txt == "8" ||
          txt == "9"){
        return;
      }
      else{
        octVal += txt;
      }
    }
    else if(currentSelection == "dec"){
      if( txt == "F" ||
          txt == "E" ||
          txt == "D" ||
          txt == "C" ||
          txt == "B" ||
          txt == "A"){
        return;
      }
      else{
        decVal += txt;
      }
    }
    else{
      hexVal += txt;
    }
  }
}
