import 'package:flutter/material.dart';

class NewUserLoginPage extends StatefulWidget {
  const NewUserLoginPage({super.key});

  @override
  State<NewUserLoginPage> createState() => _NewUserLoginPageState();
}

class _NewUserLoginPageState extends State<NewUserLoginPage> {
  bool _agreedToTerms = false;
  bool _shareData = false;
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  // Placeholder survey questions (replace with actual questions)
  final List<String> _surveyQuestions = [
    "What is your primary reason for using this app?",
    "What features are most important to you?",
  ];



  // Placeholder survey completion handler (replace with actual logic)
  void _completeSurvey() {
    // Implement survey submission logic here
    print("Survey completed!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New User Login"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text("Agree to Terms and Conditions"),
              value: _agreedToTerms,
              onChanged:(newvalue) {
                setState(() {
                  _agreedToTerms = newvalue!;
                });
              },
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Checkbox(
                  value: _shareData,
                  onChanged:(newvalue) {
                    setState(() {
                      _shareData = newvalue!;
                    });
                  },
                ),
                const Text("Share data with the app (optional)"),
              ],
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: "Username",
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_agreedToTerms) {
                  // Implement account creation logic here (using email, username, password)
                  print("Account created!");
                  //_showSurveyDialog();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Please agree to Terms and Conditions"),
                    ),
                  );
                }
              },
              child: const Text("Create Account"),
            ),
          ],
        ),
      ),
    );
  }

  void _showSurveyDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Welcome! To personalize your experience, please complete a short survey."),
          content: ListView.builder(
            shrinkWrap: true, // Prevent dialog from expanding
            itemCount: _surveyQuestions.length,
            itemBuilder: (context, index) {
              return Text(_surveyQuestions[index]);
            },
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                _completeSurvey();
                Navigator.pop(context);
                // After survey completion, navigate to the main app screen
              },
              child: const Text("Complete"),
            ),
          ],
        );
      },
    );
  }
}


