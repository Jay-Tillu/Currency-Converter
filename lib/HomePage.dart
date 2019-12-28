import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var inputController = TextEditingController();
  var outputController = TextEditingController();
  var warning = "";

  onButtonPressed(String buttonText) {
    if(inputController.text == ""){
      warning = "Please enter value";
    }
    setState(() {

      var number = double.tryParse(inputController.text);
      if (buttonText == "Dollar") {
        outputController.text = (number * 0.014).toString();
      } else if (buttonText == "Pound") {
        outputController.text = (number * 0.011).toString();
      } else if (buttonText == "Dinar") {
        outputController.text = (number * 0.0043).toString();
      } else if (buttonText == "Euro") {
        outputController.text = (number * 0.012).toString();
      }
    });
  }

  Widget myCustomButton(String myCustomButtonText) {
    return MaterialButton(
      onPressed: () => onButtonPressed(myCustomButtonText),
      minWidth: 141.0,
      height: 50.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      color: Colors.amber,
      child: Text(
        myCustomButtonText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Currency Convert",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
//*********************** Text Field 1 **************************
            Container(
              margin: EdgeInsets.only(top: 100.0, right: 25.0, left: 25.0),
              child: TextField(
                controller: inputController,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.monetization_on,
                    color: Colors.amber,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                    ),
                  ),
                  hintText: "Enter Amount",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

//*********************** Text Field 2 **************************
            Container(
              margin: EdgeInsets.only(top: 20.0, right: 25.0, left: 25.0),
              child: TextField(
                controller: outputController,
                enabled: false,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.compare_arrows,
                    color: Colors.amber,
                  ),
                  hintText: "Converted Amount",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

//*************************** Rows *******************************
            Container(
              margin: EdgeInsets.only(top: 40.0),
              child: Column(
                children: <Widget>[
//********************** Row 1 ***************************
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        myCustomButton("Dollar"),
                        myCustomButton("Pound"),
                      ],
                    ),
                  ),

//************************ Row 2 ***************************
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        myCustomButton("Euro"),
                        myCustomButton("Dinar"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100.0),
              child: Text(
                "Created by JD",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Text(
              warning,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
