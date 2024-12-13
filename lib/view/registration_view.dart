// import 'package:flutter/material.dart';

// class RegistrationView extends StatelessWidget {
//   const RegistrationView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true, // Adjust screen for the keyboard
//       body: SafeArea(
//         child: Center(
//           child: Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 colors: [
//                   Colors.orange.shade900,
//                   Colors.orange.shade800,
//                   Colors.orange.shade400,
//                 ],
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 const SizedBox(height: 20),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         "Register",
//                         style: TextStyle(color: Colors.white, fontSize: 32),
//                       ),
//                       SizedBox(height: 5),
//                       Text(
//                         "Create Your Account",
//                         style: TextStyle(color: Colors.white, fontSize: 16),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 40), // Reduced the space above the form
//                 Expanded(
//                   child: Container(
//                     width: double.infinity,
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                         topRight: Radius.circular(30),
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 20, vertical: 10),
//                       child: Column(
//                         mainAxisAlignment:
//                             MainAxisAlignment.spaceEvenly, // Align top
//                         children: <Widget>[
//                           const SizedBox(height: 20),
//                           // Full Name Field
//                           TextFormField(
//                             decoration: InputDecoration(
//                               labelText: "Full Name",
//                               filled: true,
//                               fillColor: Colors.grey[200],
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide.none,
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 15),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           // Email Field
//                           TextFormField(
//                             decoration: InputDecoration(
//                               labelText: "Email",
//                               filled: true,
//                               fillColor: Colors.grey[200],
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide.none,
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 5),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           // Password Field
//                           TextFormField(
//                             obscureText: true,
//                             decoration: InputDecoration(
//                               labelText: "Password",
//                               filled: true,
//                               fillColor: Colors.grey[200],
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide.none,
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 15),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           // Confirm Password Field
//                           TextFormField(
//                             obscureText: true,
//                             decoration: InputDecoration(
//                               labelText: "Confirm Password",
//                               filled: true,
//                               fillColor: Colors.grey[200],
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide.none,
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 15),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           // Register Button
//                           MaterialButton(
//                             onPressed: () {},
//                             height: 50,
//                             minWidth: double.infinity,
//                             color: Colors.orange[900],
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25),
//                             ),
//                             child: const Text(
//                               "Register",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           const Text(
//                             "Already have an account? Login",
//                             style: TextStyle(color: Colors.grey),
//                           ),
//                           const SizedBox(height: 10),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:agriculture_equipment_rental_system/view/login_view.dart';
import 'package:flutter/material.dart';

class RegistrationView extends StatelessWidget {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Adjust screen for the keyboard
      body: SafeArea(
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
                Expanded(
                  child: Container(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          // Full Name Field
                          TextFormField(
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
                          ),
                          const SizedBox(height: 10),
                          // Email Field
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Email",
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                            ),
                          ),
                          const SizedBox(height: 10),
                          // Password Field
                          TextFormField(
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
                          ),
                          const SizedBox(height: 10),
                          // Confirm Password Field
                          TextFormField(
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
                          ),
                          const SizedBox(height: 20),
                          // Register Button
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginView(),
                                ),
                              );
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
                              // Navigate to LoginView when clicked on "Already have an account? Login"
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginView(),
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
    );
  }
}
