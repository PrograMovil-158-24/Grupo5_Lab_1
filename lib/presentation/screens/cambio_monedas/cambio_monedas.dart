import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  void setCurrencyNameEUR() {
    setState(() {
      _currencyName = "EUR";
    });
  }

  void setCurrencyNameUSD() {
    setState(() {
      _currencyName = "USD";
    });
  }

  void calculate(double value) {
    setState(() {
      //un valor verdadero =venta , valor falso=compra
      if (_isSwitched == false) {
        switch (_currencyName) {
          case 'EUR':
            _result = value * buy_euro;
            break;
          case 'USD':
            _result = value * buy_dollar;
            break;
          default:
        }
      } else {
        switch (_currencyName) {
          case 'EUR':
            _result = value * sell_euro;
            break;
          case 'USD':
            _result = value * sell_dollar;
            break;
          default:
        }
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  double Currency = 0.0;
  Color mainColor = const Color(0xFF212936);
  Color secondColor = const Color.fromARGB(255, 33, 243, 226);
  double sell_dollar = 24.6775;
  double buy_dollar = 24.7808;
  double sell_euro = 25.2196;
  double buy_euro = 29.7244;
  double _result = 0.00;
  bool _isSwitched = false;
  String _currencyName = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            title: const Text("App Ceutec"),
            backgroundColor: Colors.blue,
          ),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const Text(
                    "Seleccionar moneda: ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => setCurrencyNameUSD(),
                        child: const Text("Dolar"),
                      ),
                      ElevatedButton(
                        onPressed: () => setCurrencyNameEUR(),
                        child: const Text("Euro"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Compra",
                        style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed,
                            decorationColor: Colors.blue,
                            color: Colors.blue[700]),
                      ),
                      Text(
                        "Venta",
                        style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed,
                            decorationColor: Colors.blue,
                            color: Colors.blue[700]),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'L. $buy_dollar',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "L. $sell_dollar",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Switch(
                      value: _isSwitched,
                      onChanged: (value) {
                        setState(() {
                          _isSwitched = value;
                        });
                      },
                      activeColor: Colors.blue,
                      inactiveThumbColor: Colors.blue[100],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.black),
                        ),
                        child: Text(
                          "$_currencyName :",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Espacio entre el Text y el TextField

                      Expanded(
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          decoration: const InputDecoration(
                            hintText: "Escriba la cantidad aqui",
                            hintStyle: TextStyle(
                              color: Colors.white10,
                              fontSize: 16,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                          keyboardType: TextInputType.numberWithOptions(),
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            Currency = double.tryParse(value) ?? 0;
                            calculate(Currency);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Center(
                      child: Text(
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          "Lps. $_result")),
                ],
              ),
            ),
          ))),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
