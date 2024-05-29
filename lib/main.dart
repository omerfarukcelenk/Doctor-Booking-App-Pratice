import 'package:doctor_booking_app_pratice/repositories/doctor_repositories.dart';
import 'package:doctor_booking_app_pratice/shared/theme/app_theme.dart';
import 'package:doctor_booking_app_pratice/screens/home/home_screen.dart';
import 'package:doctor_booking_app_pratice/state/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final doctorRepository = DoctorRepository();
  runApp(AppScreen(
    doctorRepository: doctorRepository,
  ));
}

class AppScreen extends StatelessWidget {
  const AppScreen({super.key, required this.doctorRepository});
  final DoctorRepository doctorRepository;
  @override
  Widget build(BuildContext context) {
    final theme = const AppTheme().themeData;
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: doctorRepository
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeBloc(doctorRepository: doctorRepository)..add(LoadHomeEvent()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Doctor Booking App',
          theme: theme,
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
