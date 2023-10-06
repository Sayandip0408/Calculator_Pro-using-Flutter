import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LengthConverter extends StatefulWidget{
  const LengthConverter({super.key});

  @override
  State<LengthConverter> createState() => _LengthConverterState();
}

class _LengthConverterState extends State<LengthConverter> {

  String currentSelection = "km";

  String kmVal = "0";
  String mVal = "0";
  String cmVal = "0";
  String mmVal = "0";
  String miVal = "0";
  String ftVal = "0";
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
            Text("Length Converter ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(CupertinoIcons.arrow_left_right_circle_fill, color: Colors.deepOrange,),
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
                            currentSelection = "km";
                          });
                        },
                        child: Text("Kilometer:",
                          style: currentSelection == "km" ?
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
                            currentSelection = "km";
                          });
                        },
                        child: Text(kmVal,
                          style: currentSelection == "km" ?
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
                            currentSelection = "m";
                          });
                        },
                        child: Text("Meter:",
                          style: currentSelection == "m" ?
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
                            currentSelection = "m";
                          });
                        },
                        child: Text(mVal,
                          style: currentSelection == "m" ?
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
                            currentSelection = "cm";
                          });
                        },
                        child: Text("Centimeter:",
                          style: currentSelection == "cm" ?
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
                            currentSelection = "cm";
                          });
                        },
                        child: Text(cmVal,
                          style: currentSelection == "cm" ?
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
                            currentSelection = "mm";
                          });
                        },
                        child: Text("Millimeter:",
                          style: currentSelection == "mm" ?
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
                            currentSelection = "mm";
                          });
                        },
                        child: Text(mmVal,
                          style: currentSelection == "mm" ?
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
                            currentSelection = "mi";
                          });
                        },
                        child: Text("Mile:",
                          style: currentSelection == "mi" ?
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
                            currentSelection = "mi";
                          });
                        },
                        child: Text(miVal,
                          style: currentSelection == "mi" ?
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
                            currentSelection = "ft";
                          });
                        },
                        child: Text("Foot:",
                          style: currentSelection == "ft" ?
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
                            currentSelection = "ft";
                          });
                        },
                        child: Text(ftVal,
                          style: currentSelection == "ft" ?
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
                            currentSelection = "in";
                          });
                        },
                        child: Text("Inch:",
                          style: currentSelection == "in" ?
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
                            currentSelection = "in";
                          });
                        },
                        child: Text(inVal,
                          style: currentSelection == "in" ?
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
                            currentSelection = "yd";
                          });
                        },
                        child: Text("Yard:",
                          style: currentSelection == "yd" ?
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
                            currentSelection = "yd";
                          });
                        },
                        child: Text(ydVal,
                          style: currentSelection == "yd" ?
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
      kmVal = "0";
      mVal = "0";
      cmVal = "0";
      mmVal = "0";
      miVal = "0";
      ftVal = "0";
      inVal = "0";
      ydVal = "0";
      return;
    }
    if (txt == "C") {
      if(currentSelection == "km"){
        if(kmVal.isNotEmpty){
          kmVal = kmVal.substring(0, kmVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "m"){
        if(mVal.isNotEmpty){
          mVal = mVal.substring(0, mVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "cm"){
        if(cmVal.isNotEmpty){
          cmVal = cmVal.substring(0, cmVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "mm"){
        if(mmVal.isNotEmpty){
          mmVal = mmVal.substring(0, mmVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "mi"){
        if(miVal.isNotEmpty){
          miVal = miVal.substring(0, miVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "ft"){
        if(ftVal.isNotEmpty){
          ftVal = ftVal.substring(0, ftVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "in"){
        if(inVal.isNotEmpty){
          inVal = inVal.substring(0, inVal.length - 1);
        }
        return;
      }
      else{
        if(ydVal.isNotEmpty){
          ydVal = ydVal.substring(0, ydVal.length - 1);
        }
        return;
      }
    }

    if (txt == "GO") {
      double dKM = double.parse(kmVal);
      double dM = double.parse(mVal);
      double dCM = double.parse(cmVal);
      double dMM = double.parse(mmVal);
      double dMI = double.parse(miVal);
      double dFT = double.parse(ftVal);
      double dIN = double.parse(inVal);
      double dYD = double.parse(ydVal);


      if( kmVal == "" ||
          mVal == ""  ||
          cmVal == "" ||
          mmVal == "" ||
          miVal == "" ||
          ftVal == "" ||
          inVal == "" ||
          ydVal == ""){
        return;
      }
      else{
        if(currentSelection == "km"){
          mVal = (dKM * 1000).toStringAsFixed(2);
          cmVal = (dKM * 100000).toStringAsFixed(2);
          mmVal = (dKM * 1000000).toStringAsFixed(2);
          miVal = (dKM / 1.609).toStringAsFixed(2);
          ftVal = (dKM * 3280.8399).toStringAsFixed(2);
          inVal = (dKM * 39370.0787).toStringAsFixed(2);
          ydVal = (dKM * 1093.6133).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "m"){
          kmVal = (dM / 1000).toStringAsFixed(3);
          cmVal = (dM * 100).toStringAsFixed(2);
          mmVal = (dM * 1000).toStringAsFixed(2);
          miVal = (dM / 1609).toStringAsFixed(3);
          ftVal = (dM * 3.2808399).toStringAsFixed(2);
          inVal = (dM * 39.3700787).toStringAsFixed(2);
          ydVal = (dM * 1.0936133).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "cm"){
          kmVal = (dCM / 100000).toStringAsFixed(5);
          mVal = (dCM / 100).toStringAsFixed(2);
          mmVal = (dCM * 10).toStringAsFixed(2);
          miVal = (dCM / 160900).toStringAsFixed(6);
          ftVal = (dCM / 30.48).toStringAsFixed(2);
          inVal = (dCM / 2.54).toStringAsFixed(2);
          ydVal = (dCM / 91.44).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "mm"){
          kmVal = (dMM / 1000000).toStringAsFixed(6);
          mVal = (dMM / 1000).toStringAsFixed(3);
          cmVal = (dMM / 10).toStringAsFixed(1);
          miVal = (dMM / 1609000).toStringAsFixed(7);
          ftVal = (dMM / 304.8).toStringAsFixed(3);
          inVal = (dMM / 25.4).toStringAsFixed(2);
          ydVal = (dMM / 914.4).toStringAsFixed(3);
          return;
        }
        if(currentSelection == "mi"){
          kmVal = (dMI * 1.609).toStringAsFixed(2);
          mVal = (dMI * 1609).toStringAsFixed(2);
          cmVal = (dMI * 160900).toStringAsFixed(2);
          mmVal = (dMI * 1609000).toStringAsFixed(2);
          ftVal = (dMI * 5280).toStringAsFixed(2);
          inVal = (dMI * 63360).toStringAsFixed(2);
          ydVal = (dMI * 1760).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "ft"){
          kmVal = (dFT / 3281).toStringAsFixed(4);
          mVal = (dFT / 3.281).toStringAsFixed(2);
          cmVal = (dFT * 30.48).toStringAsFixed(2);
          mmVal = (dFT * 304.8).toStringAsFixed(2);
          miVal = (dFT / 5280).toStringAsFixed(5);
          inVal = (dFT * 12).toStringAsFixed(2);
          ydVal = (dFT / 3).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "in"){
          kmVal = (dIN / 39370).toStringAsFixed(5);
          mVal = (dIN / 39.37).toStringAsFixed(2);
          cmVal = (dIN * 2.54).toStringAsFixed(2);
          mmVal = (dIN * 25.4).toStringAsFixed(2);
          miVal = (dIN / 63360).toStringAsFixed(5);
          ftVal = (dIN / 12).toStringAsFixed(2);
          ydVal = (dIN / 36).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "yd"){
          kmVal = (dYD / 1094).toStringAsFixed(4);
          mVal = (dYD / 1.094).toStringAsFixed(2);
          cmVal = (dYD * 91.44).toStringAsFixed(2);
          mmVal = (dYD * 914.4).toStringAsFixed(2);
          miVal = (dYD / 1760).toStringAsFixed(5);
          ftVal = (dYD * 3).toStringAsFixed(2);
          inVal = (dYD * 36).toStringAsFixed(2);
          return;
        }
      }
    }

    if(currentSelection == "km"){
      kmVal += txt;
    }
    else if(currentSelection == "m"){
      mVal += txt;
    }
    else if(currentSelection == "cm"){
      cmVal += txt;
    }
    else if(currentSelection == "mm"){
      mmVal += txt;
    }
    else if(currentSelection == "mi"){
      miVal += txt;
    }
    else if(currentSelection == "ft"){
      ftVal += txt;
    }
    else if(currentSelection == "in"){
      inVal += txt;
    }
    else{
      ydVal += txt;
    }
  }

}
