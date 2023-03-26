import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class HomeLayout_Screen extends StatefulWidget {
  const HomeLayout_Screen({Key? key}) : super(key: key);
  static const routeName = 'homeScreen';

  @override
  State<HomeLayout_Screen> createState() => _HomeLayout_ScreenState();
}

class _HomeLayout_ScreenState extends State<HomeLayout_Screen> {
  var controller = TextEditingController();
String? txt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr Code'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: double.infinity,
            child: SfBarcodeGenerator(
              value: txt==''?'zewin':controller.text,
              symbology: Code128B(),
              showValue: true,
            ),
          ),
        ),
          ElevatedButton(onPressed: () {
          txt=controller.text;
             setState(() {

             });
          }, child: Text('QrCODE'))
        ],
      ),
    );
  }
}
