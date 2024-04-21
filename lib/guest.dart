import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class Guest extends StatelessWidget {
  const Guest({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guest'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(154, 59, 59,1),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView( 
        reverse: true,
        child: Container(
          color: const Color.fromRGBO(242, 236, 190,1),
          width: 500,
          height: 981,
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    color: const Color.fromRGBO(242, 236, 190,1),
                    width: 300,
                    child: Image.asset('assets/images/quote.jpg'),
                    ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'Please Fill this feild';
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: 'What is your Gender?',
                        labelText: 'Gender',
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
                  ),
                  Container(
                    height: 10.0,
                    color: const Color.fromRGBO(242, 236, 190,1),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'Please Fill this feild';
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: 'What is your Age?',
                        labelText: 'Age',
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
                  ),
                  Container(
                    height: 10.0,
                    color: const Color.fromRGBO(242, 236, 190,1),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'Please Fill this feild';
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: 'What is your Weight?',
                        labelText: 'Weight',
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
                  ),
                  Container(
                    height: 10.0,
                    color: const Color.fromRGBO(242, 236, 190,1),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'What is your Height?',
                        labelText: 'Height',
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
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('submitted!'))
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
                    child: const Text('submit'),
                    ),
                  Container(
                    height: 20.0,
                    color: const Color.fromRGBO(242, 236, 190,1),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(
                        context
                        ).viewInsets.bottom),
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