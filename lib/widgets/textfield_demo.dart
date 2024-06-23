import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  bool isVisiable = false;
  var mailController = TextEditingController();
  var passwordController = TextEditingController();
  final FocusScopeNode focusScopeNode = FocusScopeNode();
  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(milliseconds: 1000),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            if (!focusScopeNode.hasPrimaryFocus) {
              focusScopeNode.unfocus();
            }
          },
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_circle,
                size: 128,
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: mailController,
                onChanged: (String value) {
                  // print('On Changed Value: $value');
                showSnackBar('On Changed Value: $value');
                },
                onSubmitted: (String value){
                  // print('On Submitted value $value');
                  showSnackBar('On Submitted value $value');

                },
                decoration: const InputDecoration(
                    // icon: Icon(Icons.email),
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    helperText: 'Enter Your Email',
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: passwordController,
                obscureText: isVisiable,
                decoration: InputDecoration(
                    // icon: Icon(Icons.lock),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisiable = !isVisiable;
                        });
                      },
                      icon: Icon(
                          isVisiable ? Icons.visibility_off : Icons.visibility),
                    ),
                    labelText: 'Password',
                    helperText: 'Enter Your Password',
                    border: const OutlineInputBorder()),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[900],
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 60),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)))),
                  onPressed: () {
                    String mail = mailController.text.trim();
                    String password = passwordController.text.trim();
                    if (mail == 'some@gmail.com' && password == '1234') {
                      // print('Authenticated');
                      showSnackBar('Authenticated');
                    } else {
                      mailController.clear();
                      passwordController.clear();
                      // print('Invalid Email or Password');
                      showSnackBar('Invalid Email or Password');
                    }
                  },
                  child: const Text('Sign in'))
            ],
          ),
        ),
      ),
    );
  }
}
