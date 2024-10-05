import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class OtpForm extends StatefulWidget {
  const OtpForm({
    super.key,
  });

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  late FocusNode focusNode1;
  late FocusNode focusNode2;
  late FocusNode focusNode3;
  late FocusNode focusNode4;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Row(
        children: [
          SizedBox(
              height: 50,
              width: 50,
              child: TextFormField(
                focusNode: focusNode1,
                onChanged: (value) {
                  if (value.length >= 1) ;
                  focusNode2.requestFocus();
                },
                controller: controller1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2))),
              )),
          SizedBox(
            width: 10,
          ),
          SizedBox(
              height: 50,
              width: 50,
              child: TextFormField(
                focusNode: focusNode2,
                onChanged: (value) {
                  if (value.length >= 1) ;
                  focusNode3.requestFocus();
                },
                controller: controller2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2))),
              )),
          SizedBox(
            width: 10,
          ),
          SizedBox(
              height: 50,
              width: 50,
              child: TextFormField(
                focusNode: focusNode3,
                onChanged: (value) {
                  if (value.length >= 1) ;
                  focusNode4.requestFocus();
                },
                controller: controller3,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2))),
              )),
          SizedBox(
            width: 10,
          ),
          SizedBox(
              height: 50,
              width: 50,
              child: TextFormField(
                focusNode: focusNode4,
                onChanged: (value) {},
                controller: controller4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2))),
              )),
        ],
      ),
    );
  }
}
