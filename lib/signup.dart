import 'package:flutter/material.dart';
import 'package:flutter_application_1/signin.dart';

final _signupkey = GlobalKey<FormState>();

class NewUserLoginPage extends StatefulWidget {
  const NewUserLoginPage({super.key});

  @override
  State<NewUserLoginPage> createState() => _NewUserLoginPageState();
}

class _NewUserLoginPageState extends State<NewUserLoginPage> {
  bool _shareData = false;
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New User Login"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(154, 59, 59,1),
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Container(
        color: const Color.fromRGBO(242, 236, 190, 1),
        height: 1000,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child:Form(
            key: _signupkey,
           child: Column(
            children: [
              const SizedBox(height: 10.0),
              const SizedBox(height: 10.0),
              TextFormField(
                validator: (value){
                          if (value == null || value.isEmpty){
                            return 'Please Fill this feild';
                          }
                          else{
                            return null;
                          }
                        },
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(154, 59, 59,1),
                    fontWeight: FontWeight.bold),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(154, 59, 59,1),
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(226, 199, 153,1),
                      width: 3,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                validator: (value){
                          if (value == null || value.isEmpty){
                            return 'Please Fill this feild';
                          }
                          else{
                            return null;
                          }
                        },
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(154, 59, 59,1),
                    fontWeight: FontWeight.bold),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(154, 59, 59,1),
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(226, 199, 153,1),
                      width: 3,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                validator: (value){
                          if (value == null || value.isEmpty){
                            return 'Please Fill this feild';
                          }
                          else{
                            return null;
                          }
                        },
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(154, 59, 59,1),
                    fontWeight: FontWeight.bold),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(154, 59, 59,1),
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(226, 199, 153,1),
                      width: 3,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: _shareData,
                    activeColor: const Color.fromRGBO(154, 59, 59,1),
                    onChanged:(newvalue) {
                      setState(() {
                        _shareData = newvalue!;
                      });
                    },
                  ),
                  const Text("Share data with the app (optional)",style: TextStyle(color:  Color.fromRGBO(154, 59, 59,1), ),),
                ],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Terms and Conditions: 1.Do you agree to share your data with the app. 2.This app requires accurate data to function. 3.End results shown in the app are purely machine generated."),
                        actions: <Widget>[
                        TextButton(
                          child: Text('Agree'),
                          onPressed: () {
                            // Add your logic for when the user agrees
                            Navigator.of(context).pop(); // Close the dialog
                          },
                        ),
                        TextButton(
                          child: Text('Disagree'),
                          onPressed: () {
                            // Add your logic for when the user disagrees
                            Navigator.of(context).pop(); // Close the dialog
                          },
                        ),
                      ],
                      );
                    });
                  if (_signupkey.currentState!.validate()) {
                    // Implement account creation logic here (using email, username, password)
                    print("Account created!");
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please agree to Terms and Conditions"),
                      ),
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
                child: const Text("Create Account"),
              ),
              TextButton(onPressed: () {
                Navigator.push(
                context,
                 MaterialPageRoute(builder: (context)=> const UserSigninPage(),
                 )
                 );
              },
              child: const Text("Have a Account, Sign-in",style: TextStyle(color:  Color.fromRGBO(154, 59, 59,1), ),))
            ],
          ),
        ),
        ),
      ),
    );
  }


}
