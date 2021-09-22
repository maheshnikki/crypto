import 'package:crypto/Models/cryptoTraning.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imagesList = [
    "http://i.imgur.com/zuG2bGQ.jpg",
    "http://i.imgur.com/ovr0NAF.jpg",
    "http://i.imgur.com/pSHXfu5.jpg",
  ];

  // final List<Crypto> cypto = [
  //   Crypto(Name: 'Dogecoin', amount: 2.2, percentage: 22),
  //   Crypto(Name: 'BitCoin', amount: 5.555, percentage: 35),
  // ];
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text(
                          'Total Worth',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '\$' '0' '❔',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 150,
                        height: 30,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'BUY BITCOIN',
                          ),
                          textColor: Colors.white,
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        child: SizedBox(
                          width: 150,
                          height: 30,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              'DEPOSIT INR',
                            ),
                            textColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.blue)),
                            color: Colors.white,
                            splashColor: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: false,
                enableInfiniteScroll: false,
              ),
              items: imagesList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(
                              e,
                              width: 25,
                              height: 50,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Watchlist',
                  ),
                ),
                Container(
                  // child: Align(
                  //   child: TextButton(
                  //     onPressed: () => _AddCrypto(context),
                  //     child: Text(
                  //       'Add More',
                  //       // textAlign: TextAlign.right,
                  //     ),
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
          // Container(
          //   child: Column(
          //     children: cypto.map((cryptoCurrency) {
          //       return Card(
          //         child: Row(
          //           children: <Widget>[
          //             Container(
          //               child: CircleAvatar(
          //                 radius: 45,
          //                 backgroundImage:
          //                     NetworkImage("http://i.imgur.com/pSHXfu5.jpg"),
          //               ),
          //             ),
          //             Container(
          //               margin: EdgeInsets.all(20),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: <Widget>[
          //                   Text(cryptoCurrency.Name),
          //                   SizedBox(
          //                     height: 10,
          //                   ),
          //                   Text(
          //                     cryptoCurrency.Name,
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Container(
          //               color: Colors.red,
          //               child: Column(
          //                 // mainAxisAlignment: MainAxisAlignment.end,
          //                 // crossAxisAlignment: CrossAxisAlignment.end,
          //                 children: [
          //                   Text(
          //                     '\$${cryptoCurrency.amount.toString()}',
          //                     textAlign: TextAlign.end,
          //                   ),
          //                   SizedBox(
          //                     height: 10,
          //                   ),
          //                   Text(
          //                     '\$${cryptoCurrency.percentage.toString()}',
          //                     textAlign: TextAlign.end,
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     }).toList(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
