import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataConverter extends StatefulWidget{
  const DataConverter({super.key});

  @override
  State<DataConverter> createState() => _DataConverterState();
}

class _DataConverterState extends State<DataConverter> {

  String currentSelection = "bit";

  String bitVal = "0";
  String byteVal = "0";
  String kbVal = "0";
  String mbVal = "0";
  String gbVal = "0";
  String tbVal = "0";


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
            Text("Data Converter ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(CupertinoIcons.keyboard, color: Colors.deepOrange,),
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelection = "bit";
                          });
                        },
                        child: Text("Bit:",
                          style: currentSelection == "bit" ?
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
                            currentSelection = "bit";
                          });
                        },
                        child: Text(bitVal,
                          style: currentSelection == "bit" ?
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
                            currentSelection = "byte";
                          });
                        },
                        child: Text("Byte:",
                          style: currentSelection == "byte" ?
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
                            currentSelection = "byte";
                          });
                        },
                        child: Text(byteVal,
                          style: currentSelection == "byte" ?
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
                            currentSelection = "kb";
                          });
                        },
                        child: Text("Kilobyte:",
                          style: currentSelection == "kb" ?
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
                            currentSelection = "kb";
                          });
                        },
                        child: Text(kbVal,
                          style: currentSelection == "kb" ?
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
                            currentSelection = "mb";
                          });
                        },
                        child: Text("Megabyte:",
                          style: currentSelection == "mb" ?
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
                            currentSelection = "mb";
                          });
                        },
                        child: Text(mbVal,
                          style: currentSelection == "mb" ?
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
                            currentSelection = "gb";
                          });
                        },
                        child: Text("Gigabyte:",
                          style: currentSelection == "gb" ?
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
                            currentSelection = "gb";
                          });
                        },
                        child: Text(gbVal,
                          style: currentSelection == "gb" ?
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
                            currentSelection = "tb";
                          });
                        },
                        child: Text("Terabyte:",
                          style: currentSelection == "tb" ?
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
                            currentSelection = "tb";
                          });
                        },
                        child: Text(tbVal,
                          style: currentSelection == "tb" ?
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
            flex: 3,
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
      bitVal = "0";
      byteVal = "0";
      kbVal = "0";
      mbVal = "0";
      gbVal = "0";
      tbVal = "0";
      return;
    }
    if (txt == "C") {
      if(currentSelection == "bit"){
        if(bitVal.isNotEmpty){
          bitVal = bitVal.substring(0, bitVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "byte"){
        if(byteVal.isNotEmpty){
          byteVal = byteVal.substring(0, byteVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "kb"){
        if(kbVal.isNotEmpty){
          kbVal = kbVal.substring(0, kbVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "mb"){
        if(mbVal.isNotEmpty){
          mbVal = mbVal.substring(0, mbVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "gb"){
        if(gbVal.isNotEmpty){
          gbVal = gbVal.substring(0, gbVal.length - 1);
        }
        return;
      }
      else{
        if(tbVal.isNotEmpty){
          tbVal = tbVal.substring(0, tbVal.length - 1);
        }
        return;
      }
    }

    if (txt == "GO") {
      double dBit = double.parse(bitVal);
      double dbyte = double.parse(byteVal);
      double dKB = double.parse(kbVal);
      double dMB = double.parse(mbVal);
      double dGB = double.parse(gbVal);
      double dTB = double.parse(tbVal);

      if(bitVal == "" || byteVal == "" || kbVal == "" || mbVal == "" || gbVal == "" || tbVal == ""){
        return;
      }
      else{
        if(currentSelection == "bit"){
          byteVal = (dBit / 8).toStringAsFixed(2);
          kbVal = (dBit / 8 / 1024).toStringAsFixed(2);
          mbVal = (dBit / 8 / 1024 / 1024).toStringAsFixed(2);
          gbVal = (dBit / 8 / 1024 / 1024 / 1024).toStringAsFixed(2);
          tbVal = (dBit / 8 / 1024 / 1024 / 1024 / 1024).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "byte"){
          bitVal = (dbyte * 8).toStringAsFixed(2);
          kbVal = (dbyte / 1024).toStringAsFixed(2);
          mbVal = (dbyte / 1024 / 1024).toStringAsFixed(2);
          gbVal = (dbyte / 1024 / 1024 / 1024).toStringAsFixed(2);
          tbVal = (dbyte / 1024 / 1024 / 1024 / 1024).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "kb"){
          bitVal = (dKB * 8 * 1024).toStringAsFixed(2);
          byteVal = (dKB * 1024).toStringAsFixed(2);
          mbVal = (dKB / 1024).toStringAsFixed(2);
          gbVal = (dKB / 1024 / 1024).toStringAsFixed(2);
          tbVal = (dKB / 1024 / 1024 / 1024).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "mb"){
          bitVal = (dMB * 8 * 1024 * 1024).toStringAsFixed(2);
          byteVal = (dMB * 1024 * 1024).toStringAsFixed(2);
          kbVal = (dMB * 1024).toStringAsFixed(2);
          gbVal = (dMB / 1024).toStringAsFixed(2);
          tbVal = (dMB / 1024 / 1024).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "gb"){
          bitVal = (dGB * 8 * 1024 * 1024 * 1024).toStringAsFixed(2);
          byteVal = (dGB * 1024 * 1024 * 1024).toStringAsFixed(2);
          kbVal = (dGB * 1024 * 1024).toStringAsFixed(2);
          mbVal = (dGB * 1024).toStringAsFixed(2);
          tbVal = (dGB / 1024).toStringAsFixed(2);
          return;
        }
        if(currentSelection == "tb"){
          bitVal = (dTB * 8 * 1024 * 1024 * 1024 * 1024).toStringAsFixed(2);
          byteVal = (dTB * 1024 * 1024 * 1024 * 1024).toStringAsFixed(2);
          kbVal = (dTB * 1024 * 1024 * 1024).toStringAsFixed(2);
          mbVal = (dTB * 1024 * 1024).toStringAsFixed(2);
          gbVal = (dTB * 1024).toStringAsFixed(2);
          return;
        }
      }
    }

    if(currentSelection == "bit"){
      bitVal += txt;
    }
    else if(currentSelection == "byte"){
      byteVal += txt;
    }
    else if(currentSelection == "kb"){
      kbVal += txt;
    }
    else if(currentSelection == "mb"){
      mbVal += txt;
    }
    else if(currentSelection == "gb"){
      gbVal += txt;
    }
    else{
      tbVal += txt;
    }
  }

}
