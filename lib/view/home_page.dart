// import 'package:agriculture_equipment_rental_system/view/onboarding_screen_view.dart';
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
//             icon: const Icon(Icons.backspace), // Icon for onboarding
//             onPressed: () {
//               // Navigate to the onboarding screen
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const OnboardingPage(),
//                 ),
//               );
//             },
//           ),
//           // IconButton(
//           //   icon: const Icon(Icons.account_circle),
//           //   onPressed: () {
//           //     // Navigate to profile page or login page
//           //   },
//           // ),
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

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              title: const Text('Dashboard'),
              onTap: () {
                // Navigate to Dashboard (current page)
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
              title: const Text('Add Equipment'),
              onTap: () {
                // Navigate to Add Equipment page (if applicable for admins/suppliers)
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                const Text(
                  'Welcome to Agriculture Equipment Rental!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Rent high-quality equipment to enhance your farming experience.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 30),

                // Equipment Catalog Section
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Equipment Catalog
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[900],
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
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
                    // Navigate to My Rentals page
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[600],
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
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
                const SizedBox(height: 30),

                // Dashboard Statistics Section
                const Text(
                  'Dashboard Overview',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),

                // Display Key Stats
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildDashboardCard(
                      icon: Icons.agriculture,
                      title: 'Available Equipment',
                      value: '120',
                    ),
                    _buildDashboardCard(
                      icon: Icons.handshake_outlined,
                      title: 'Active Rentals',
                      value: '45',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildDashboardCard(
                      icon: Icons.star_rate,
                      title: 'User Reviews',
                      value: '340+',
                    ),
                    _buildDashboardCard(
                      icon: Icons.local_offer,
                      title: 'Special Offers',
                      value: '5',
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // Notifications Section
                const Text(
                  'Latest Notifications',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.notifications, color: Colors.orange[900]),
                  title: const Text('New Equipment Added'),
                  subtitle: const Text(
                      'Check out the latest equipment available for rent.'),
                ),
                ListTile(
                  leading: Icon(Icons.notifications, color: Colors.orange[900]),
                  title: const Text('Discount on Harvesters'),
                  subtitle: const Text(
                      '20% off on selected harvesters. Offer valid till Dec 31.'),
                ),
                ListTile(
                  leading: Icon(Icons.notifications, color: Colors.orange[900]),
                  title: const Text('Rental Due Reminder'),
                  subtitle: const Text(
                      'Your rental for Tractor TX900 is due on Dec 25.'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build dashboard cards
  Widget _buildDashboardCard(
      {required IconData icon, required String title, required String value}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.orange[900]),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
