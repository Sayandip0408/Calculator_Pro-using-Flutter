import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Discount extends StatefulWidget{
  const Discount({super.key});

  @override
  State<Discount> createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {

  String amount = "0";
  String discount = "0";
  String effectivePrice = "0";
  String save = "0";

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

  String currentSelection = "amount";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Discount",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(CupertinoIcons.shopping_cart, color: Colors.deepOrange,),
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
                          onTap: (){
                            setState(() {
                              currentSelection = "amount";
                            });
                          },
                          child: Text("Amount:",
                            style: currentSelection == "amount" ?
                            const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange,
                            ): TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              currentSelection = "amount";
                            });
                          },
                          child: Text("$amount Rs.",
                            style: currentSelection == "amount" ?
                            const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange,
                            ): TextStyle(
                              fontSize: 20,
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
                          onTap: (){
                            setState(() {
                              currentSelection = "discount";
                            });
                          },
                          child: Text("Discount:",
                            style: currentSelection == "discount" ?
                            const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange,
                            ): TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              currentSelection = "discount";
                            });
                          },
                          child: Text("$discount %",
                            style: currentSelection == "discount" ?
                            const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange,
                            ): TextStyle(
                              fontSize: 20,
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
                        Text("Effective Price:",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary
                            ),
                          ),
                        Text("$effectivePrice Rs.",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary
                            ),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Your Save: ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        Text("$save Rs.",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
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
      amount = "";
      discount = "";
      effectivePrice = "";
      save = "";
      return;
    }
    if(txt == "C"){
      if(currentSelection == "amount"){
        if(amount.isNotEmpty){
          amount = amount.substring(0, amount.length - 1);
          return;
        }
        else {
          return null;
        }
      }
      if(currentSelection == "discount"){
        if(discount.isNotEmpty){
          discount = discount.substring(0, discount.length - 1);
          return;
        }
        else {
          return null;
        }
      }
    }
    if(txt == "GO"){
      if(amount == "" || discount == ""){
        return;
      }
      else{
        effectivePrice = calculate();
        if(effectivePrice == ""){
          save = "";
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text("Oops!", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w500),),
              content: const Text("Effective price can't be negative, more than 100% discount is not practically possible."),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            )
          );
          return;
        }
        else{
          double dSave = double.parse(amount) - double.parse(effectivePrice);
          save = dSave.toStringAsFixed(2);
          return;
        }
      }
    }
    if(currentSelection == "amount"){
      amount = amount + txt;
    }
    else{
      discount = discount + txt;
    }
  }
  String calculate(){
    try{
      double dAmount = double.parse(amount);
      double dDiscount = double.parse(discount);

      double answer = (dAmount * (100 - dDiscount)) / 100;
      if(answer < 0.0){
        return "";
      }
      else {
        return answer.toStringAsFixed(2);
      }
    } catch(e){
      return "Error occurred!";
    }
  }

}