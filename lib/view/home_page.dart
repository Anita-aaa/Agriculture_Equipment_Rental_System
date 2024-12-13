// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Agriculture Equipment Rental'),
//         backgroundColor: Colors.orange[900],
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.account_circle),
//             onPressed: () {
//               // Navigate to profile page or login page
//             },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.orange,
//               ),
//               child: Text(
//                 'Menu',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text('Home'),
//               onTap: () {
//                 // Navigate to Home Page
//               },
//             ),
//             ListTile(
//               title: const Text('Equipment Catalog'),
//               onTap: () {
//                 // Navigate to Equipment Catalog
//               },
//             ),
//             ListTile(
//               title: const Text('My Rentals'),
//               onTap: () {
//                 // Navigate to My Rentals page
//               },
//             ),
//             ListTile(
//               title: const Text('Profile'),
//               onTap: () {
//                 // Navigate to Profile page
//               },
//             ),
//             ListTile(
//               title: const Text('Log Out'),
//               onTap: () {
//                 // Log out the user
//               },
//             ),
//           ],
//         ),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               const SizedBox(height: 20),
//               const Text(
//                 'Welcome to the Agriculture Equipment Rental System!',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.orange,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 'Here, you can rent the best agricultural equipment to help you with your farming needs.',
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black87,
//                 ),
//               ),
//               const SizedBox(height: 30),
//               // Equipment Catalog Section
//               ElevatedButton(
//                 onPressed: () {
//                   // Navigate to the Equipment Catalog
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange[900],
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: const Text(
//                   'Browse Equipment Catalog',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               // My Rentals Section
//               ElevatedButton(
//                 onPressed: () {
//                   // Navigate to the My Rentals page
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange[600],
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: const Text(
//                   'View My Rentals',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:agriculture_equipment_rental_system/view/onboarding_screen_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agriculture Equipment Rental'),
        backgroundColor: Colors.orange[900],
        actions: [
          IconButton(
            icon: const Icon(Icons.backspace), // Icon for onboarding
            onPressed: () {
              // Navigate to the onboarding screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnboardingPage(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Navigate to Home Page
              },
            ),
            ListTile(
              title: const Text('Equipment Catalog'),
              onTap: () {
                // Navigate to Equipment Catalog
              },
            ),
            ListTile(
              title: const Text('My Rentals'),
              onTap: () {
                // Navigate to My Rentals page
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                // Navigate to Profile page
              },
            ),
            ListTile(
              title: const Text('Log Out'),
              onTap: () {
                // Log out the user
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              const Text(
                'Welcome to the Agriculture Equipment Rental System!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Here, you can rent the best agricultural equipment to help you with your farming needs.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 30),
              // Equipment Catalog Section
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Equipment Catalog
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[900],
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Browse Equipment Catalog',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // My Rentals Section
              ElevatedButton(
                onPressed: () {
                  // Navigate to the My Rentals page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[600],
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'View My Rentals',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
