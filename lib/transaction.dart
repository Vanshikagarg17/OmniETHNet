import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  double _currentSliderValue = 0;
  final snackBar = SnackBar(content: Text('Transaction initiated!'));
  String txn = ' ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('OmniETHNet'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 10,
              child: Column(
                children: [
                  Text(
                    'Start transaction',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      letterSpacing: -0.4,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(15.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          hintText: "Sender address",
                          fillColor: Colors.white70),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(15.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          hintText: "Receiver address",
                          fillColor: Colors.white70),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(15.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          hintText: "ETH Amount",
                          fillColor: Colors.white70),
                    ),
                  ),
                  Text(
                          'Speed: ' + (_currentSliderValue.round() == 50? 'Medium': ((_currentSliderValue.round() == 0)?'Slow':'Fast')),
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            letterSpacing: -0.4,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 100,
                    divisions: 2,
                    activeColor: Colors.black,
                    // label: _currentSliderValue.round() == 50? 'Medium': ((_currentSliderValue.round() == 0)?'Slow':'Fast'),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                  GestureDetector(
                    onTap:(){
                      print("object");
                      setState(() {
                        txn = 'Transaction initiated!';
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text(
                          'Start',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            letterSpacing: -0.4,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                  ),
                  Text(
                          txn,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            letterSpacing: -0.4,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),)
                ],
              ),
            )
          ],
        ));
  }
}
