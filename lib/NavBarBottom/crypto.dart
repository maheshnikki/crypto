import 'package:crypto/Models/cryptoTraning.dart';
import 'package:crypto/widgets/addingCrypto.dart';
import 'package:flutter/material.dart';
import 'package:crypto/NavBarBottom/home.dart';

class Crypto extends StatefulWidget {
  Crypto({Key? key}) : super(key: key);

  @override
  _CryptoState createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> {
  final List<CryptoTraning> cypto = [
    CryptoTraning(Name: 'Doge', amount: 12, percentage: 12),
    CryptoTraning(Name: 'Doge', amount: 12, percentage: 12),
  ];

  void AddCrypto(BuildContext cyp) {
    showModalBottomSheet(
        context: cyp,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: AddingCrypto(add),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  void add(String name, double amount, double percentage) {
    final addedCryto = CryptoTraning(
      Name: name,
      amount: amount,
      percentage: percentage,
    );
    setState(() {
      cypto.add(addedCryto);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CrytoCurrency'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            iconSize: 50,
            onPressed: () => AddCrypto(context),
            icon: Icon(Icons.add),
            color: Colors.purple[600],
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: RefreshIndicator(
            onRefresh: () {
              return Future.delayed(Duration(seconds: 5), () {
                setState(() {
                  print('refresh');
                });
              });
            },
            child: Column(
              children: cypto.map((cryptoCurrency) {
                return InkWell(
                  onDoubleTap: () {
                    setState(() {
                      cypto.remove(cryptoCurrency);
                    });
                  },
                  child: Card(
                    elevation: 5,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage:
                                NetworkImage("http://i.imgur.com/pSHXfu5.jpg"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(cryptoCurrency.Name),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                cryptoCurrency.Name,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '\$${cryptoCurrency.amount.toString()}',
                                textAlign: TextAlign.end,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$${cryptoCurrency.percentage.toString()}',
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    cypto.remove(cryptoCurrency);
                                  });
                                },
                                icon: Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
