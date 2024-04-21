import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/foodlist.dart';
import 'package:flutter_application_1/guest.dart';
import 'package:flutter_application_1/login2.dart';
import 'package:flutter_application_1/signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MaterialApp(
  home: Home(),
));
}

class PreThemes extends StatelessWidget {
  const PreThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My FoodPrint",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(154, 59, 59,1),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My FoodPrint'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(154, 59, 59,1),
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Container(
        color: const Color.fromRGBO(242, 236, 190, 1),
        child: Center(  
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50.0,
            margin:const EdgeInsets.all(10.0),
           child: ElevatedButton(
             onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context)=> const LoginPage(),
                 )
                 );
             },
             style: ButtonStyle(
             backgroundColor: const MaterialStatePropertyAll<Color>(Color.fromRGBO(154, 59, 59,1)),
             foregroundColor: const MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 255, 255)),
             shape: MaterialStateProperty.all(
             RoundedRectangleBorder(
               // Change your radius here
               borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                    child: const Text('Login'),
              ),
             ),
          Container(
            margin:const EdgeInsets.all(10.0),
            height: 50.0,
           child: ElevatedButton(
           onPressed: () {
            Navigator.push(
                context,
                 MaterialPageRoute(builder: (context)=> NewUserLoginPage(),
                 )
                 );
           },
           style: ButtonStyle(
             backgroundColor: const MaterialStatePropertyAll<Color>(Color.fromRGBO(154, 59, 59,1)),
             foregroundColor: const MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 255, 255)),
             shape: MaterialStateProperty.all(
             RoundedRectangleBorder(
               // Change your radius here
               borderRadius: BorderRadius.circular(8),
                   ),
               ),
             ),
                 child: const Text('Sign In/Sign Up'),
           ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            height: 70.0,
            
          child: FilledButton(
              onPressed: () {
                Navigator.push(
                context,
                 MaterialPageRoute(builder: (context)=> Guest(),
                 )
                 );
              },
              style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll<Color>(Color.fromRGBO(154, 59, 59,1)),
              foregroundColor: const MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 255, 255)),
             shape: MaterialStateProperty.all(
             RoundedRectangleBorder(
               // Change your radius here
               borderRadius: BorderRadius.circular(8),
                   ),
               ), 
            ),
            child: const Text('Guest Login'),
          ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context)=> FoodList(),
                 )
                 );
            },
            child: Text("Click"))
         ],
              ),
              ),
      ),
    );
  }
}

