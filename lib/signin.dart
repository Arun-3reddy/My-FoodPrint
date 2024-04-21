import 'package:flutter/material.dart';

final _signinkey = GlobalKey<FormState>();

class UserSigninPage extends StatefulWidget {
  const UserSigninPage({super.key});

  @override
  State<UserSigninPage> createState() => _NewUserLoginPageState();
}

class _NewUserLoginPageState extends State<UserSigninPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In to your Account"),
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
            key: _signinkey,
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
                  labelText: "Re-Enter Password",
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
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_signinkey.currentState!.validate()) {
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
                child: const Text("Sign In"),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }


}
