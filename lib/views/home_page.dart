import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/firebase_options.dart';
import 'package:notes_app/views/verifyemail_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Home page"),
        backgroundColor: Colors.blue,
        ),
        body: FutureBuilder(

          future: Firebase.initializeApp(
                options: DefaultFirebaseOptions.currentPlatform,
              ),

          builder: (context, snapshot) {
            switch (snapshot.connectionState){
              case ConnectionState.done:
                final user =  FirebaseAuth.instance.currentUser;
                // final emailVerified = user?.emailVerified ?? false;
                if(user?.emailVerified ?? false){
                  print('You are verified');
                } else {
                  print('Verfiy your email');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=> const VerifyEmailView()
                      )
                    );
                }
                // print(user);
               return  const Text('Done');
               default:
            return const Text('Loading...');
          } 
          },
          
        ),
    );
  }
}