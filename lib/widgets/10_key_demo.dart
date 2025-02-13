import 'package:flutter/material.dart';

class KeyDemo extends StatefulWidget {
  const KeyDemo({super.key});

  @override
  State<KeyDemo> createState() => _KeyDemoState();
}

class _KeyDemoState extends State<KeyDemo> {
  // globalkeys are used in stateful widgets
  // declare a global key and depending on the need of use
  // add the proper T argument
  // for our case we need a Formstate
  // Others include FormFieldState etc

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Keys'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          // assign the globalkey to the key of the form widgets
          key: formkey,
          child: ListView(
            children: [
              TextFormField(
                validator: ((value) {
                  if (value == null) {
                    return 'Invalid value';
                  }
                  if (value.isEmpty) {
                    return 'Empty value';
                  }
                  return null;
                }),
              ),
              TextFormField(
                validator: ((value) {
                  if (value == null) {
                    return 'Invalid value';
                  }
                  if (value.isEmpty) {
                    return 'Empty value';
                  }
                  return null;
                }),
              ),
              TextButton(
                  onPressed: () {
                    // access the Form widgets variables and functions
                    // in this case we use the validate() method
                    if (!formkey.currentState!.validate()) {
                      print('error in the form');
                      return;
                    }
                  },
                  child: const Text('Validate'))
            ],
          ),
        ),
      ),
    );
  }
}
