import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  String result = '';
  double conversionRate = 310.0;

  void _convertToUSD() {
    double amount = double.tryParse(_controller.text) ?? 0;
    double convertedAmount = amount / conversionRate;
    setState(() {
      result = 'USD\$ ${convertedAmount.toStringAsFixed(2)}';
    });
  }

  void _convertToSL() {
    double amount = double.tryParse(_controller.text) ?? 0;
    double convertedAmount = amount * conversionRate;
    setState(() {
      result = 'RS. ${convertedAmount.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 37, 39),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Center(
            child: Container(
              height: 450, // Increased height to accommodate the title
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 121, 112, 112),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 300,
                      child: Column(
                        children: [
                          Text(
                            'CURRENCY CONVERTER',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 40),
                          TextField(
                            cursorColor: Colors.black,
                            controller: _controller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'ENTER AMOUNT',
                              hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: _convertToUSD,
                                child: Text(
                                  'CONVERT USD',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      Color.fromARGB(255, 67, 97, 122),
                                  minimumSize: Size(20, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: _convertToSL,
                                child: Text(
                                  'CONVERT SL',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      Color.fromARGB(255, 67, 97, 122),
                                  minimumSize: Size(20, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 60),
                          Text(
                            result,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
