import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants/routes.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        const Text("We've sent an email verification link, please click it to verify your account"),
        const Text("Haven't received an email yet ? click the button below"),
        TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text('Send email verification')
            ),
        TextButton(
          onPressed: ()async {
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushNamedAndRemoveUntil(
              registerRoute, 
              (route) => false);
          }, 
          child: const Text('Restart')
          ),
      ]),
      
    );
  }
}
