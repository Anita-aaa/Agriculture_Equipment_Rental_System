// import 'package:agriculture_equipment_rental_system/features/auth/presentation/view/login_view.dart';
// import 'package:flutter/material.dart';

// class RegistrationView extends StatelessWidget {
//   const RegistrationView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   colors: [
//                     Colors.orange.shade900,
//                     Colors.orange.shade800,
//                     Colors.orange.shade400,
//                   ],
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   const SizedBox(height: 20),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(
//                           "Register",
//                           style: TextStyle(color: Colors.white, fontSize: 32),
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           "Create Your Account",
//                           style: TextStyle(color: Colors.white, fontSize: 16),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 40),
//                   _buildRegistrationForm(context),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildRegistrationForm(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: Form(
//           child: Column(
//             // mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               const SizedBox(height: 20),
//               _buildTextField(label: "Full Name", obscureText: false),
//               const SizedBox(height: 20),
//               _buildTextField(label: "Email", obscureText: false),
//               const SizedBox(height: 20),
//               _buildTextField(label: "Password", obscureText: true),
//               const SizedBox(height: 20),
//               _buildTextField(label: "Confirm Password", obscureText: true),
//               const SizedBox(height: 20),
//               _buildRegisterButton(context),
//               const SizedBox(height: 20),
//               _buildLoginTextButton(context),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({required String label, required bool obscureText}) {
//     return TextFormField(
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         labelText: label,
//         filled: true,
//         fillColor: Colors.grey[200],
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide.none,
//         ),
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//       ),
//     );
//   }

//   Widget _buildRegisterButton(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => LoginView()),
//           );
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.orange[900],
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(25),
//           ),
//           padding: const EdgeInsets.symmetric(vertical: 15),
//         ),
//         child: const Text(
//           "Register",
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildLoginTextButton(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => LoginView()),
//         );
//       },
//       child: const Text(
//         "Already have an account? Login",
//         style: TextStyle(color: Colors.grey),
//       ),
//     );
//   }
// }

// import 'package:agriculture_equipment_rental_system/view/login_view.dart';
import 'package:agriculture_equipment_rental_system/features/auth/presentation/view/login_view.dart';
import 'package:flutter/material.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Create Your Account",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _fullNameController,
                              decoration: InputDecoration(
                                labelText: "Full Name",
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your full name';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: "Email",
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                } else if (!RegExp(
                                        r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}")
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _confirmPasswordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Confirm Password",
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm your password';
                                } else if (value != _passwordController.text) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            MaterialButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginView(),
                                    ),
                                  );
                                }
                              },
                              height: 50,
                              minWidth: double.infinity,
                              color: Colors.orange[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginView(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Already have an account? Login",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
