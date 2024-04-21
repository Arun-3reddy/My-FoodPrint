import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

final _loginkey = GlobalKey<FormState>();

class Login extends StatelessWidget {
  Login({super.key});
  
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(154, 59, 59,1),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        color: const Color.fromRGBO(242, 236, 190, 1),
        
       child: Center(
          child: Form(
            child: Column(
              key: _loginkey,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: const Color.fromRGBO(242, 236, 190, 1),
                  width: 350,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    validator: (val){
                          if (val == null || val.isEmpty){
                            return 'Please Fill this feild';
                          }
                          else{
                            return null;
                          }
                        },
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      hintText: "Username",
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
                      prefixIcon: Icon(Icons.account_box, color: Color.fromRGBO(154, 59, 59,1),),
                    ),
                  ),
                  ),
                Container(
                    color: const Color.fromRGBO(242, 236, 190, 1),
                    width: 350,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (val){
                          if (val == null || val.isEmpty){
                            return 'Please Fill this feild';
                          }
                          else{
                            return null;
                          }
                        },
                      controller: _passwordController,
                      decoration: InputDecoration(
                      hintText: "Password",
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(154, 59, 59,1),
                          width: 3,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(226, 199, 153,1),
                          width: 3,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.lock, color: Color.fromRGBO(154, 59, 59,1),),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.remove_red_eye_sharp, color: Color.fromRGBO(154, 59, 59,1),),
                        onPressed: () {
                          //const Icon(Icons.remove_red_eye_sharp, color: Color.fromRGBO(192, 130, 97,1));
                        },),
                      ),
                    ),
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                    onPressed: () {
                      print("clicked");
                      if (_loginkey.currentState!.validate()) {
                    // Implement account creation logic here (using email, username, password)
                    print("Sign IN succesful");
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please fill all the feilds"),
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
                  }, child: const Text('Create Account',),
                  )
                ),
                ],
                ),
          ),
          ),
          ),
          );
  }
}