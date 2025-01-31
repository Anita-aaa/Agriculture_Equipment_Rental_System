import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
// import 'package:softwarica_student_management_bloc/app/di/di.dart';

class HomeState extends Equatable {
  final int selectedIndex;
  final List<Widget> views;

  const HomeState({
    required this.selectedIndex,
    required this.views,
  });

  // Initial state
  static HomeState initial() {
    return const HomeState(
      selectedIndex: 0,
      views: [
        // DashboardView(),
        Center(
          child: Text('Dashboard'),
        ),
        Center(
          child: Text('Messages'),
        ),

        Center(
          child: Text('Add'),
        ),
        Center(
          child: Text('Account'),
        ),
      ],
    );
  }

  HomeState copyWith({
    int? selectedIndex,
    List<Widget>? views,
  }) {
    return HomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      views: views ?? this.views,
    );
  }

  @override
  List<Object?> get props => [selectedIndex, views];
}
