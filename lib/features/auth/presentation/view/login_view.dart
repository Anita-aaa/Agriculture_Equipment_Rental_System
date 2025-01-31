import 'package:agriculture_equipment_rental_system/features/auth/presentation/view/register_view%20.dart';
import 'package:agriculture_equipment_rental_system/features/auth/presentation/view_model/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final _formKey = GlobalKey<FormState>();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  final _emailController = TextEditingController(text: 'anita@gmail.com');
  final _passwordController = TextEditingController();
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
                              key: const ValueKey('email'),
                              controller: _emailController,
                              decoration: const InputDecoration(
                                hintText: "Email  ",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter email';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              key: const ValueKey('password'),
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
                            ElevatedButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  context.read<LoginBloc>().add(
                                        LoginUserEvent(
                                          context: context,
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                        ),
                                      );
                                }
                                // if (_formKey.currentState!.validate()) {
                                //   if (_formKey.currentState!.validate()) {
                                //     if (_emailController.text ==
                                //             'anita@gmail.com' &&
                                //         _passwordController.text ==
                                //             'anita123') {
                                //       Navigator.push(
                                //         context,
                                //         MaterialPageRoute(
                                //             builder: (context) =>
                                //                 const Dashboard()),
                                //       );
                                //     } else {
                                //       print("no");
                                //     }

                                //   }
                                // }
                              },
                              // height: 50,
                              // color: Colors.orange[900],
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(50),
                              // ),
//
                              // child: const Center(
                              //   child: Text(
                              //     "Login",
                              //     style: TextStyle(
                              //         color: Colors.white,
                              //         fontWeight: FontWeight.bold),
                              //   ),
                              // ),
                              child: const SizedBox(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Brand Bold',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              key: const ValueKey('registerButton'),
                              onPressed: () {
                                context.read<LoginBloc>().add(
                                      NavigateRegisterScreenEvent(
                                        destination: const RegistrationView(),
                                        context: context,
                                      ),
                                    );
                              },
                              child: const SizedBox(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Brand Bold',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // GestureDetector(
                            //   onTap: () {
                            //     // Navigate to RegisterView
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) =>
                            //               const RegistrationView()),
                            //     );
                            //   },
                            //   child: const Text(
                            //     "Don't have an account? Register",
                            //     style: TextStyle(
                            //       color: Colors.orange,
                            //       fontSize: 16,
                            //     ),
                            //   ),
                            // ),
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
