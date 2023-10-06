import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeightConverter extends StatefulWidget{
  const WeightConverter({super.key});

  @override
  State<WeightConverter> createState() => _WeightConverterState();
}

class _WeightConverterState extends State<WeightConverter> {

  String currentSelection = "kg";

  String kgVal = "0";
  String gVal = "0";
  String tnVal = "0";
  String mgVal = "0";
  String qtVal = "0";
  String pdVal = "0";
  String inVal = "0";
  String ydVal = "0";


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
            Text("Weight Converter ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(CupertinoIcons.layers_alt_fill, color: Colors.deepOrange,),
          ],
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
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
                            currentSelection = "kg";
                          });
                        },
                        child: Text("Kilogram:",
                          style: currentSelection == "kg" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "kg";
                          });
                        },
                        child: Text(kgVal,
                          style: currentSelection == "kg" ?
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
                            currentSelection = "g";
                          });
                        },
                        child: Text("Gram:",
                          style: currentSelection == "g" ?
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
                            currentSelection = "g";
                          });
                        },
                        child: Text(gVal,
                          style: currentSelection == "g" ?
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
                            currentSelection = "tn";
                          });
                        },
                        child: Text("Tonne:",
                          style: currentSelection == "tn" ?
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
                            currentSelection = "tn";
                          });
                        },
                        child: Text(tnVal,
                          style: currentSelection == "tn" ?
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
                            currentSelection = "mg";
                          });
                        },
                        child: Text("Milligram:",
                          style: currentSelection == "mg" ?
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
                            currentSelection = "mg";
                          });
                        },
                        child: Text(mgVal,
                          style: currentSelection == "mg" ?
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
                            currentSelection = "qt";
                          });
                        },
                        child: Text("Quintal:",
                          style: currentSelection == "qt" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "qt";
                          });
                        },
                        child: Text(qtVal,
                          style: currentSelection == "qt" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
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
                        onTap: () {
                          setState(() {
                            currentSelection = "pd";
                          });
                        },
                        child: Text("Pound:",
                          style: currentSelection == "pd" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
                          ) : TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "pd";
                          });
                        },
                        child: Text(pdVal,
                          style: currentSelection == "pd" ?
                          const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange
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
            flex: 4,
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

  // ignore: non_constant_identifier_names
  Widget CustomButton(String btn) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.secondary,
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

  getTextColor(String txt) {
    if (txt == "AC" || txt == "C") {
      return Colors.deepOrangeAccent;
    }
    if (txt == "GO") {
      return Colors.green;
    }
    else {
      return Theme.of(context).colorScheme.primary;
    }
  }

  handleButton(String txt) {
    if (txt == "AC") {
      kgVal = "0";
      gVal = "0";
      tnVal = "0";
      mgVal = "0";
      qtVal = "0";
      pdVal = "0";
      return;
    }
    if (txt == "C") {
      if(currentSelection == "kg"){
        if(kgVal.isNotEmpty){
          kgVal = kgVal.substring(0, kgVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "g"){
        if(gVal.isNotEmpty){
          gVal = gVal.substring(0, gVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "tn"){
        if(tnVal.isNotEmpty){
          tnVal = tnVal.substring(0, tnVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "mg"){
        if(mgVal.isNotEmpty){
          mgVal = mgVal.substring(0, mgVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "qt"){
        if(qtVal.isNotEmpty){
          qtVal = qtVal.substring(0, qtVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "pd"){
        if(pdVal.isNotEmpty){
          pdVal = pdVal.substring(0, pdVal.length - 1);
        }
        return;
      }
    }

    if (txt == "GO") {
      double dKG = double.parse(kgVal);
      double dG = double.parse(gVal);
      double dTN = double.parse(tnVal);
      double dMG = double.parse(mgVal);
      double dQT = double.parse(qtVal);
      double dPD = double.parse(pdVal);

      if( kgVal == "" ||
          gVal == ""  ||
          tnVal == "" ||
          mgVal == "" ||
          qtVal == "" ||
          pdVal == ""){
        return;
      }
      else{
        if(currentSelection == "kg"){
          gVal = (dKG * 1000).toStringAsFixed(2);
          tnVal = (dKG / 1000).toStringAsFixed(3);
          mgVal = (dKG * 1000000).toStringAsFixed(2);
          qtVal = (dKG / 100).toStringAsFixed(2);
          pdVal = (dKG * 2.2046).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "g"){
          kgVal = (dG / 1000).toStringAsFixed(3);
          tnVal = (dG / 1000000).toStringAsFixed(6);
          mgVal = (dG * 1000).toStringAsFixed(2);
          qtVal = (dG / 100000).toStringAsFixed(5);
          pdVal = (dG / 453.59237).toStringAsFixed(3);
          return;
        }
        if(currentSelection == "tn"){
          kgVal = (dTN * 1000).toStringAsFixed(2);
          gVal = (dTN * 1000000).toStringAsFixed(2);
          mgVal = (dTN * 1000000000).toStringAsFixed(2);
          qtVal = (dTN * 10).toStringAsFixed(2);
          pdVal = (dTN * 2204.62262).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "mg"){
          kgVal = (dMG / 1000000).toStringAsFixed(6);
          gVal = (dMG / 1000).toStringAsFixed(3);
          tnVal = (dMG / 1000000000).toStringAsFixed(9);
          qtVal = (dMG / 100000000).toStringAsFixed(8);
          pdVal = (dMG / 453592.37).toStringAsFixed(6);
          return;
        }
        if(currentSelection == "qt"){
          kgVal = (dQT * 100).toStringAsFixed(2);
          gVal = (dQT * 100000).toStringAsFixed(2);
          tnVal = (dQT / 10).toStringAsFixed(2);
          mgVal = (dQT * 100000000).toStringAsFixed(2);
          pdVal = (dQT * 220.462262).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "pd"){
          kgVal = (dPD / 2.2046).toStringAsFixed(2);
          gVal = (dPD / 0.0022046).toStringAsFixed(2);
          tnVal = (dPD / 2204.62262).toStringAsFixed(5);
          mgVal = (dPD * 453592.37).toStringAsFixed(2);
          qtVal = (dPD / 220.462262).toStringAsFixed(4);
          return;
        }
      }
    }

    if(currentSelection == "kg"){
      kgVal += txt;
    }
    else if(currentSelection == "g"){
      gVal += txt;
    }
    else if(currentSelection == "tn"){
      tnVal += txt;
    }
    else if(currentSelection == "mg"){
      mgVal += txt;
    }
    else if(currentSelection == "qt"){
      qtVal += txt;
    }
    else{
      pdVal += txt;
    }
  }

}
