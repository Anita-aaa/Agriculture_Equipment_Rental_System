import 'package:agriculture_equipment_rental_system/core/common/snackbar/my_snackBar.dart';
import 'package:agriculture_equipment_rental_system/features/home/presentation/view_model/home_cubit.dart';
import 'package:agriculture_equipment_rental_system/features/home/presentation/view_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Logout code
              showMySnackBar(
                context: context,
                message: 'Logging out...',
                color: Colors.red,
              );

              context.read<HomeCubit>().logout(context);
            },
          ),
          Switch(
            value: _isDarkTheme,
            onChanged: (value) {
              // Change theme
              // setState(() {
              //   _isDarkTheme = value;
              // });
            },
          ),
        ],
      ),
      // body: _views.elementAt(_selectedIndex),
      body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        return state.views.elementAt(state.selectedIndex);
      }),
      bottomNavigationBar: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Account',
              ),
            ],
            currentIndex: state.selectedIndex,
            selectedItemColor: Colors.deepPurpleAccent,
            onTap: (index) {
              context.read<HomeCubit>().onTabTapped(index);
            },
          );
        },
      ),
    );
  }
}

// import 'package:agriculture_equipment_rental_system/core/common/snackbar/my_snackbar.dart';
// import 'package:agriculture_equipment_rental_system/features/home/presentation/view_model/home_cubit.dart';
// import 'package:agriculture_equipment_rental_system/features/home/presentation/view_model/home_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeCubit, HomeState>(
//       builder: (context, state) {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text('Home'),
//             centerTitle: true,
//             actions: [
//               IconButton(
//                 icon: const Icon(Icons.logout),
//                 onPressed: () {
//                   showMySnackBar(
//                     context: context,
//                     message: 'Logging out...',
//                     color: Colors.red,
//                   );
//                   context.read<HomeCubit>().logout(context);
//                 },
//               ),
//             ],
//           ),
//           body: state.views[state.selectedIndex], // Show selected view
//           bottomNavigationBar: BottomNavigationBar(
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.dashboard),
//                 label: 'Dashboard',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.book),
//                 label: 'Course',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.group),
//                 label: 'Batch',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.account_circle),
//                 label: 'Account',
//               ),
//             ],
//             currentIndex: state.selectedIndex,
//             selectedItemColor: Colors.white,
//             onTap: (index) {
//               context.read<HomeCubit>().onTabTapped(index);
//             },
//           ),
//         );
//       },
//     );
//   }
// }
