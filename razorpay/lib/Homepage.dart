import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Razorpay _razorpay;
  @override

  void initState(){
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }
  
  @override

  void dispose(){
    super.dispose();
    _razorpay.clear();
  }
void opencheackout() async {
    var options = {
  'key': 'rzp_test_GdWicyoPgzcQIg',
  'amount': 100,
  'name': 'Abdul Samad',
  'description': 'This is my first payment app',
  'prefill': {
    'contact': '7909004709',
    'email': 'sameerahmad.asa.2016@gmail.com'
  }
  };

  try{
    _razorpay.open(options);
  }
  catch(e){
    debugPrint(e);
  }
  }
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(msg: "Succes" + response.paymentId);
}

void _handlePaymentError(PaymentFailureResponse response) {
  Fluttertoast.showToast(msg: "Error"+ response.code.toString()+ " " + response.message);
}

void _handleExternalWallet(ExternalWalletResponse response) {
  Fluttertoast.showToast(msg: "External Wallet" + response.walletName);
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
              child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 200.0,
                width: double.infinity,
                child: Image.network("https://securionpay.com/wp-content/uploads/2016/08/Things-that-prove-your-payment-processing-is-secure.png")),
                Text("400"),
                MaterialButton(
                  height: 40.0,
                  minWidth: 200.0,
                  child: Text("Buy Now"),
                  onPressed: (){opencheackout();},
                )
            ],
          ),
        ),
      ),
    );
  }
}