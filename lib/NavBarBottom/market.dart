import 'package:crypto/Models/cryptoTraning.dart';
import 'package:crypto/NavBarBottom/crypto.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  Market({Key? key}) : super(key: key);

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {

  final List<CryptoTraning> cypto = [
    CryptoTraning(Name: 'Doge', amount: 12, percentage: 12),
    CryptoTraning(Name: 'Doge', amount: 12, percentage: 12),
    
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
          children: cypto.map((cryptoCurrency) {
                return Card(
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
                        color: Colors.red,
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
                    ],
                  ),
                );
              }).toList(),
        ),
    );
  }
}
