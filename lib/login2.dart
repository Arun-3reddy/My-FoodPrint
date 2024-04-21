import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Food_cat.dart';
import 'package:flutter_application_1/new_food.dart';
import 'package:flutter_application_1/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your username.';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(154, 59, 59, 1),
        foregroundColor: Colors.white, // White text for better contrast
      ),
      body: Container(
        color: const Color.fromRGBO(242, 236, 190, 1),
        child: Center(
          child: SingleChildScrollView( // Allow content to scroll if overflowing
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(color: Color.fromRGBO(154, 59, 59,1), width: 3.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(color: Color.fromRGBO(226, 199, 153,1), width: 3.0),
                      ),
                      prefixIcon: const Icon(Icons.account_box, color: Color.fromRGBO(154, 59, 59,1),),
                    ),
                    validator: validateUsername,
                  ),
                  const SizedBox(height: 20.0), // Add spacing between fields
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true, // Hide password by default
                    decoration: InputDecoration(
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(color: Color.fromRGBO(154, 59, 59,1), width: 3.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(color: Color.fromRGBO(226, 199, 153,1), width: 3.0),
                      ),
                      prefixIcon: const Icon(Icons.lock, color: Color.fromRGBO(154, 59, 59,1),),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.remove_red_eye, color: Color.fromRGBO(154, 59, 59,1),),
                        onPressed: () {
                          // Toggle password visibility (optional)
                          setState(() {
                            // Update obscureText value to show/hide password
                          });
                        },
                      ),
                    ),
                    validator: validatePassword,
                  ),
                  const SizedBox(height: 20.0), // Add spacing after password field
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Implement login logic here (using username, password)
                            if (_formKey.currentState!.validate()) {
                                if (_usernameController.text == 'admin' && _passwordController.text == 'admin') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=> FoodCategories(),
                                    )
                                    );
                                  // You can also show a different snackbar to indicate successful login
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Invalid username or password')),
                                  );
                                }
                              }
                            // Show a snackbar or dialog to indicate login attempt
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Logging in...')),
                            );
                          }
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
                      Container(width: 15.0,),
                    ElevatedButton(
                      onPressed: () {},
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
                      child: const Text('Forgot Password'), 
                      ),
                    ],
                  ),
                  Container(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromRGBO(154, 59, 59,1),
                    ),
                    onPressed: () { 
                      Navigator.push(
                context,
                 MaterialPageRoute(builder: (context)=> NewUserLoginPage(),
                 )
                 );
                  }, child: const Text('Create Account',),
                  )
                ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
