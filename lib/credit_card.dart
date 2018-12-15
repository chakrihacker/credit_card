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

class CreditCard extends StatefulWidget{

  final CreditCardValues focusedValue;
  final String brand;
  final String name;
  final String number;
  final String expiry;
  final String cvc;
  final Object placeHolder;

  const CreditCard({Key key, this.focusedValue, this.brand, this.name, this.number, this.expiry, this.cvc, this.placeHolder = PlaceHolder}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return _CreditCardState();
  }
}

class _CreditCardState extends State<CreditCard> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Card(child: Image.asset('assets/card-front.png'), );
  }

}
