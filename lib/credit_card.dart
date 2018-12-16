library credit_card;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum CreditCardValues {
  NUMBER,
  EXPIRY,
  CVC,
  TYPE,
  NAME,
}

const Object PlaceHolder = {
  "number": "1234 5678 1234 5678",
  "expiry": "MM/YY",
  "cvc": "CVC"
};

class CreditCard extends StatefulWidget {
  final CreditCardValues focusedValue;
  final String brand;
  final String name;
  final String number;
  final String expiry;
  final String cvc;
  final Object placeHolder;

  const CreditCard(
      {Key key,
      this.focusedValue,
      this.brand,
      this.name,
      this.number,
      this.expiry,
      this.cvc,
      this.placeHolder = PlaceHolder})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CreditCardState();
  }
}

class _CreditCardState extends State<CreditCard>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Image.asset('assets/card-front.png', package: 'credit_card'),
          new Container(
            height: 100,
            child: new CustomScrollView(
              scrollDirection: Axis.horizontal,
              slivers: <Widget>[
                new SliverPadding(
                    padding: EdgeInsets.all(20.0),
                    sliver: new SliverList(
                      delegate: new SliverChildListDelegate(<Widget>[
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                        new Text("Hello"),
                      ]),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
