// import 'package:agriculture_equipment_rental_system/view/add_view.dart';
// import 'package:agriculture_equipment_rental_system/view/home_page.dart';
// import 'package:agriculture_equipment_rental_system/view/messages_view.dart';
// import 'package:agriculture_equipment_rental_system/view/onboarding_screen_view.dart';
// import 'package:agriculture_equipment_rental_system/view/profile_view.dart';
// import 'package:flutter/material.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({super.key});

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   int _selectedIndex = 0; // To keep track of the selected tab

//   // List of pages to navigate to
//   final List<Widget> pages = [
//     const HomePage(),
//     const MessagesView(),
//     const AddView(),
//     const ProfileView(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Agriculture Equipment Rental'),
//         backgroundColor: Colors.orange[900],
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.help_outline), // Help or FAQ icon
//             onPressed: () {
//               // Navigate to FAQ or Help screen
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.notifications), // Notification icon
//             onPressed: () {
//               // Navigate to Notifications page
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.backspace), // Navigate to onboarding
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const OnboardingPage(),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       body: pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.white, // Background of the BottomNavigationBar
//         selectedItemColor: Colors.orange[900], // Selected item color
//         unselectedItemColor: Colors.grey, // Unselected item color
//         selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
//         unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//             label: "Messages",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add_circle_outline),
//             label: "Add",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }
