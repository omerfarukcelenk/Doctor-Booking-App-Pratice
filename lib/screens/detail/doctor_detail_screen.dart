import 'package:doctor_booking_app_pratice/repositories/doctor_repositories.dart';
import 'package:doctor_booking_app_pratice/shared/utils/time_of_days.dart';
import 'package:doctor_booking_app_pratice/shared/widgets/buttons/app_icon_button.dart';
import 'package:doctor_booking_app_pratice/shared/widgets/cards/doctor_card.dart';
import 'package:doctor_booking_app_pratice/state/detail/detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';

part 'widgets/doctor_detail_body.dart';
part 'widgets/doctor_detail_view.dart';
part 'widgets/doctor_working_hour_widget.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key, required this.doctorId});
  final String doctorId;
  @override
  Widget build(BuildContext context) {
    // CREATE bloc here
    return BlocProvider(
      create: (context) => DoctorDetailsBloc(
        doctorRepository: context.read<DoctorRepository>(),
      )..add(
          LoadDoctorDetailsEvent(doctorId: doctorId),
        ),
      child: BlocBuilder<DoctorDetailsBloc, DoctorDetailsState>(
        builder: (context, state) {
          if (state.status == DoctorDetailsStatus.initial ||
              state.status == DoctorDetailsStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(state.status == DoctorDetailsStatus.loaded) {
            final doctor = state.doctor;
            if (doctor == null) {
              return const Center(
                child: Text('Doctor not found'),
              );
            }
          }
          return DoctorDetailsView();
        },
      ),
    );
  }
}
