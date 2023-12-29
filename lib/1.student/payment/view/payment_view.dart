import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/Students/view/widgets/custom_textfield.dart';
import 'package:tfm_control/utils/styles/colors.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  PaymentPageState createState() => PaymentPageState();
}

class PaymentPageState extends State<PaymentPage> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cardHolderNameController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();


  void _submitPayment() {
    bool isNotEmpty(String value) => value.trim().isNotEmpty;

    if (isNotEmpty(cardNumberController.text) &&
        isNotEmpty(expiryDateController.text) &&
        isNotEmpty(cardHolderNameController.text) &&
        isNotEmpty(cvvController.text)) {

      showDialog(

        context: context,
        builder: (context) => AlertDialog(

          title: const Row(
            children: [
              Text('Success',style: TextStyle(color: Colors.green),),
             Icon(Icons.check,color: Colors.green,)
            ],
          ),
          content: const Text('Payment submitted successfully.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK',style: TextStyle(color: ColorsAsset.kPrimary)),
            ),
          ],
        ),
      );
    } else {

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title:  const Row(
            children: [
              Text('Error',style: TextStyle(color: Colors.red),),
              Icon(Icons.close,color: Colors.red,)
            ],
          ),
          content: const Text('Please fill in all fields.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK',style: TextStyle(color: ColorsAsset.kPrimary)),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Electronic Payment',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorsAsset.kPrimary,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text("Total Amount : 12000LE",style: TextStyle(color: ColorsAsset.kPrimary,fontWeight: FontWeight.bold),),
            Center(
              child: Image.asset(
                'assets/images/compngwingyobdm-fotor-bg-remover-202312293115.png',
                height: 100,
              ),
            ),
            const SizedBox(height: 20),

            MyTextField(
              controller: cardNumberController,
              labeltext: 'Card Number',
            ),
            const SizedBox(height: 15,),
            MyTextField(
              controller: expiryDateController,
              labeltext: 'Expiry Date (MM/YY)',
            ),

            const SizedBox(height: 15,),
            MyTextField(
              controller: cardHolderNameController,
              labeltext: 'Card Holder Name',
            ),
            const SizedBox(height: 15,),
            MyTextField(
              controller: cvvController,
              labeltext: "CVV",
            ),
            const SizedBox(height: 15,),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  _submitPayment();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsAsset.kPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Border radius
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
                  child: Text(
                    'Submit Payment',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
