import 'package:flutter/material.dart';

class AddingCrypto extends StatefulWidget {
  final Function addCry;
  AddingCrypto(this.addCry);

  @override
  _AddingCryptoState createState() => _AddingCryptoState();
}

class _AddingCryptoState extends State<AddingCrypto> {
  final nameController = TextEditingController();
  final amountController = TextEditingController();
  final percentageController = TextEditingController();

  void Submit() {
    final enteredName = nameController.text;
    final enteredAmount = double.parse(amountController.text);
    final enteredpercentage = double.parse(percentageController.text);

    widget.addCry(
      enteredName,
      enteredAmount,
      enteredpercentage,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            'Add CryptoCurrency',
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Crypto Name',
                ),
                controller: nameController,
                onSubmitted: (_) => Submit(),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Crypto amount',
                ),
                controller: amountController,
                onSubmitted: (_) => Submit(),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Crypto Percentage',
                ),
                controller: percentageController,
                onSubmitted: (_) => Submit(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: Submit,
                      child: Text('ADD'),
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
