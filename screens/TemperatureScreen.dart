import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Temperature extends StatefulWidget{
  const Temperature({super.key});

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {

  String celsiusVal = "0";
  String fahrenheitVal = "32";
  String kelvinVal = "273.15";
  String currentSelection = "celsius";

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
    "-/+",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Temperature ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(CupertinoIcons.cloud_sun_fill, color: Colors.deepOrange,),
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
                            currentSelection = "celsius";
                          });
                        },
                        child: Text("Celsius:",
                          style: currentSelection == "celsius" ?
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
                            currentSelection = "celsius";
                          });
                        },
                        child: Text("$celsiusVal°C",
                          style: currentSelection == "celsius" ?
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
                            currentSelection = "fahrenheit";
                          });
                        },
                        child: Text("Fahrenheit:",
                          style: currentSelection == "fahrenheit" ?
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
                            currentSelection = "fahrenheit";
                          });
                        },
                        child: Text("$fahrenheitVal°F",
                          style: currentSelection == "fahrenheit" ?
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
                            currentSelection = "kelvin";
                          });
                        },
                        child: Text("Kelvin:",
                          style: currentSelection == "kelvin" ?
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
                            currentSelection = "kelvin";
                          });
                        },
                        child: Text("$kelvinVal K",
                          style: currentSelection == "kelvin" ?
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
    if (txt == "AC" || txt == "C") {
      return Colors.deepOrangeAccent;
    }
    if (txt == "GO") {
      return Colors.green;
    }
    else {
      return Theme
          .of(context)
          .colorScheme
          .primary;
    }
  }

  handleButton(String txt) {
    if (txt == "AC") {
      celsiusVal = "0";
      fahrenheitVal = "32";
      kelvinVal = "273.15";
      return;
    }
    if (txt == "C") {
      if(currentSelection == "celsius"){
        if(celsiusVal.isNotEmpty){
          celsiusVal = celsiusVal.substring(0, celsiusVal.length - 1);
        }
        return;
      }
      else if(currentSelection == "fahrenheit"){
        if(fahrenheitVal.isNotEmpty){
          fahrenheitVal = fahrenheitVal.substring(0, fahrenheitVal.length - 1);
        }
        return;
      }
      else{
        if(kelvinVal.isNotEmpty){
          kelvinVal = kelvinVal.substring(0, kelvinVal.length - 1);
        }
        return;
      }
    }

    if(txt == "-/+"){
      double cel = double.parse(celsiusVal);
      double fah = double.parse(fahrenheitVal);
      double kel = double.parse(kelvinVal);

      if(currentSelection == "celsius"){
        if(cel < 0){
          cel = cel.abs();
          celsiusVal = cel.toString();
        }
        else{
          cel *= -1;
          celsiusVal = cel.toString();
        }
        return;
      }
      if(currentSelection == "fahrenheit"){
        if(fah < 0){
          fah = fah.abs();
          fahrenheitVal = fah.toString();
        }
        else{
          fah *= -1;
          fahrenheitVal = fah.toString();
        }
        return;
      }
      if(currentSelection == "kelvin"){
        if(kel < 0){
          kel = kel.abs();
          kelvinVal = kel.toString();
        }
        else{
          kel *= -1;
          kelvinVal = kel.toString();
        }
        return;
      }
    }

    if (txt == "GO") {
      if(celsiusVal == "" || fahrenheitVal == "" || kelvinVal == ""){
        return;
      }
      else{
        double cel = double.parse(celsiusVal);
        double fah = double.parse(fahrenheitVal);
        double kel = double.parse(kelvinVal);
        if(currentSelection == "celsius"){
          double fahAns = (cel * 9/5) + 32;
          double kelAns = cel + 273.15;
          fahrenheitVal = fahAns.toStringAsFixed(2);
          kelvinVal = kelAns.toStringAsFixed(2);
          return;
        }
        if(currentSelection == "fahrenheit"){
          double celAns = (fah - 32) * (5/9);
          double kelAns = (fah - 32) * (5/9) + 273.15;
          celsiusVal = celAns.toStringAsFixed(2);
          kelvinVal = kelAns.toStringAsFixed(2);
          return;
        }
        if(currentSelection == "kelvin"){
          double celAns = kel - 273.15;
          double fahAns = (kel - 273.15) * (9/5) + 32;
          celsiusVal = celAns.toStringAsFixed(2);
          fahrenheitVal = fahAns.toStringAsFixed(2);
          return;
        }
      }
    }

    if(currentSelection == "celsius"){
      celsiusVal += txt;
    }
    else if(currentSelection == "fahrenheit"){
      fahrenheitVal += txt;
    }
    else{
      kelvinVal += txt;
    }
  }
}
