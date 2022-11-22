import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstController =
        TextEditingController(text: '');
    final TextEditingController secondController =
        TextEditingController(text: '');
    final TextEditingController thirdController =
        TextEditingController(text: '');

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  print(
                      "First Value=${value.substring(2).replaceAll(".", "")}");
                },
                decoration: const InputDecoration(hintText: "First Field"),
                inputFormatters: [
                  CurrencyTextInputFormatter(
                      locale: 'id', decimalDigits: 0, symbol: 'Rp.')
                ],
                keyboardType: TextInputType.number,
                controller: firstController,
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Second Field"),
                inputFormatters: [
                  CurrencyTextInputFormatter(
                      locale: 'id', decimalDigits: 0, symbol: 'Rp.')
                ],
                keyboardType: TextInputType.number,
                controller: secondController,
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Third Field"),
                inputFormatters: [
                  CurrencyTextInputFormatter(
                      locale: 'id', decimalDigits: 0, symbol: 'Rp.')
                ],
                keyboardType: TextInputType.number,
                controller: thirdController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
