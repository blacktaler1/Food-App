import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:foodapp/component/my_button.dart';

import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvcisfocused = false;

  //when user want to pay

  void userTapped() {
    if (formKey.currentState!.validate()) {
      //show dialog
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Confirm to payment'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text("Card number: $cardNumber"),
                      Text("Card number: $expiryDate"),
                      Text("Card number: $cardHolderName"),
                      Text("Card number: $cvvCode"),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => {
                      Navigator.pop(context),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DeliveryProgressPage(),
                        ),
                      ),
                    },
                    child: const Text('Pay'),
                  )
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('CHECKOUT'),
      ),
      body: Column(
        children: [
          //card widget
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvcisfocused,
            onCreditCardWidgetChange: (p0) {},
          ),
          CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formKey),
          const Spacer(),
          MyButton(
            text: 'Pay Now',
            onTap: userTapped,
          ),
          const SizedBox(height: 25,)
        ],
      ),
    );
  }
}
