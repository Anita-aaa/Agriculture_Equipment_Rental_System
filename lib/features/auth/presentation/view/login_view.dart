import 'package:agriculture_equipment_rental_system/features/auth/presentation/view/register_view%20.dart';
import 'package:agriculture_equipment_rental_system/view/Dashboard_view.dart';
// import 'package:agriculture_equipment_rental_system/view/registration_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final _formKey = GlobalKey<FormState>();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  final _emailController = TextEditingController(text: 'anita');
  final _passwordController = TextEditingController(text: 'anita123');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange.shade900,
              Colors.orange.shade800,
              Colors.orange.shade400,
            ],
          ),
        ),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 80),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Welcome Back",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 60),
                            TextFormField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                hintText: "Email or Phone number",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter email or phone number';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter password';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 40),
                            MaterialButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  if (_formKey.currentState!.validate()) {
                                    if (_emailController.text == 'anita' &&
                                        _passwordController.text ==
                                            'anita123') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Dashboard()),
                                      );
                                    } else {
                                      print("no");
                                    }
                                    // if (_emailController.text == 'anita' &&
                                    //     _passwordController.text == 'anita123') {
                                    //   context.read<LoginBloc>().add(
                                    //         NavigateHomeScreenEvent(
                                    //           destination: HomeView(),
                                    //           context: context,
                                    //         ),
                                    //       );
                                    // } else {
                                    //   showMySnackBar(
                                    //     context: context,
                                    //     message: 'Invalid username or password',
                                    //     color: Colors.red,
                                    //   );
                                    // }
                                  }
                                  // Navigate to Dashboard if login is successful
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const Dashboard()),
                                  // );
                                }
                              },
                              height: 50,
                              color: Colors.orange[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                // Navigate to RegisterView
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegistrationView()),
                                );
                              },
                              child: const Text(
                                "Don't have an account? Register",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
