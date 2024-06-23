import 'package:flutter/material.dart';

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({super.key});

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CircleAvatar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              radius: 70,
              child: Icon(
                Icons.login,
                size: 80,
              ),
            ),
            // Icon(Icons.login,size: 256,),
            const SizedBox(height: 24),
            TextFormField(
              controller: mailController,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter your mail';
                } else if (!value.contains('@gmail.com')) {
                  return 'Please Enter a valid mail';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter Your mail ....',
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              controller: passwordController,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                } else if (value.length < 8) {
                  return 'The password must have at least 8 characters';
                } else {
                  return null;
                }
              },
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Your password ....',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder()),
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
                  if (formKey.currentState!.validate()) {
                    print('All data are validated');
                  }
                },
                child: const Text('Sign in'))
          ],
        ),
      ),
    );
  }
}
