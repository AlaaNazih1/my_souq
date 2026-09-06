import 'package:flutter/material.dart';
import 'package:my_souq/components/declartions.dart';

enum Auth {
  signin,
  signup,
}
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});
static const String routeName = '/auth-screen'; 
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Declartions.greyBackgroundColor,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          const Text('Welcome', style: TextStyle(fontSize: 24.0,
          fontWeight: FontWeight.w500),),
          ListTile(
            title: const Text('New Customer', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
           
            leading: Radio(
              activeColor: Declartions.secondaryColor,
              value: Auth.signup,
              groupValue: _auth,
              onChanged: (Auth? value) {
                setState(() {
                  _auth = value!;
                });
              },
            ),
           
          ),
          if (_auth == Auth.signup)
            Form(
              key: _signUpFormKey,
              child: Column(
                children: const [
                  Text('Sign Up'),
                ],
              ),
            ),
         
          ListTile(
            title: const Text('Already have an account', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
           
            leading: Radio(
              activeColor: Declartions.secondaryColor,
              value: Auth.signin,
              groupValue: _auth,
              onChanged: (Auth? value) {
                setState(() {
                  _auth = value!;
                });
              },
            ),
           
          ),
        ]),
      )),
    );
  }
}
