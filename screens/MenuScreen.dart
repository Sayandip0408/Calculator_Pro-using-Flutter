import 'package:calculator_pro/screens/BMIScreen.dart';
import 'package:calculator_pro/screens/CalculatorScreen.dart';
import 'package:calculator_pro/screens/DataScreen.dart';
import 'package:calculator_pro/screens/DiscountScreen.dart';
import 'package:calculator_pro/screens/LengthScreen.dart';
import 'package:calculator_pro/screens/LoanScreen.dart';
import 'package:calculator_pro/screens/NumberSystemScreen.dart';
import 'package:calculator_pro/screens/TemperatureScreen.dart';
import 'package:calculator_pro/screens/WeightScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _developerUri = Uri.parse("https://portfolio-adhikarysayandip-gmailcom.vercel.app/");

class Menu extends StatelessWidget{
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        surfaceTintColor: Colors.grey,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Calculator()));
            },
              icon: const Icon(CupertinoIcons.equal_square_fill, color: Colors.grey, size: 30,),
            ),
            IconButton(onPressed: (){},
              icon: const Icon(CupertinoIcons.square_favorites_alt_fill, color: Colors.deepOrangeAccent, size: 29,),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          InkWell(
            splashColor: Theme.of(context).colorScheme.secondary,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const BMI()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.tertiary),
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
                        spreadRadius: 0.5,
                        offset: const Offset(-1, -1),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.chart_bar_alt_fill, size: 30, color: Colors.red,),
                    Text("     Body Mass Index (BMI)",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Theme.of(context).colorScheme.secondary,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Discount()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.tertiary),
                    color: Theme.of(context).colorScheme.background,
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
                        offset: const Offset(-1, -1),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.shopping_cart, size: 30, color: Colors.blue,),
                    Text("     Discount Calculator",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Theme.of(context).colorScheme.secondary,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Loan()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.tertiary),
                    color: Theme.of(context).colorScheme.background,
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
                        offset: const Offset(-1, -1),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    const Icon(Icons.currency_rupee, size: 30, color: Colors.green,),
                    Text("     Loan (EMI) Calculator",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Theme.of(context).colorScheme.secondary,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Temperature()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.tertiary),
                    color: Theme.of(context).colorScheme.background,
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
                        offset: const Offset(-1, -1),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.cloud_sun_fill, size: 30, color: Colors.deepOrangeAccent,),
                    Text("     Temperature Conversion",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Theme.of(context).colorScheme.secondary,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const LengthConverter()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.tertiary),
                    color: Theme.of(context).colorScheme.background,
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
                        offset: const Offset(-1, -1),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.arrow_left_right_circle_fill, size: 30, color: Colors.purpleAccent,),
                    Text("     Length Conversion",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Theme.of(context).colorScheme.secondary,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const WeightConverter()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.tertiary),
                    color: Theme.of(context).colorScheme.background,
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
                        offset: const Offset(-1, -1),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.layers_alt_fill, size: 30, color: Colors.red,),
                    Text("     Weight Conversion",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Theme.of(context).colorScheme.secondary,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const DataConverter()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.tertiary),
                    color: Theme.of(context).colorScheme.background,
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
                        offset: const Offset(-1, -1),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.keyboard, size: 30, color: Colors.green,),
                    Text("     Data Conversion",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Theme.of(context).colorScheme.secondary,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const NumberSystem()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.tertiary),
                    color: Theme.of(context).colorScheme.background,
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
                        offset: const Offset(-1, -1),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.list_number_rtl, size: 30, color: Colors.blue,),
                    Text("     Number System",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Theme.of(context).colorScheme.secondary,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: (){
              _launchUrl();
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.tertiary),
                    color: Theme.of(context).colorScheme.background,
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
                        offset: const Offset(-1, -1),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.person_alt_circle_fill, size: 30, color: Colors.redAccent,),
                    Text("     Developer Contact",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_developerUri)) {
      throw Exception('Could not launch $_developerUri');
    }
  }

}