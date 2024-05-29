import 'package:doctor_booking_app_pratice/repositories/doctor_repositories.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';


part 'detail_event.dart';
part 'detail_state.dart';

class DoctorDetailsBloc extends Bloc<DoctorDetailsEvent, DoctorDetailsState> {
  final DoctorRepository _doctorRepository;
  DoctorDetailsBloc({
    required DoctorRepository doctorRepository,
  })  : _doctorRepository = doctorRepository,
        super(const DoctorDetailsState()) {
    on<LoadDoctorDetailsEvent>(_onLoadDoctorDetails);
  }

  void _onLoadDoctorDetails(
    LoadDoctorDetailsEvent event,
    Emitter<DoctorDetailsState> emit,
  ) async {
    emit(state.copyWith(status: DoctorDetailsStatus.loading));
    try {
      final doctor = await _doctorRepository.fetchDoctorById(event.doctorId);

      if (doctor == null) {
        emit(state.copyWith(status: DoctorDetailsStatus.error));
      } else {
        emit(
          state.copyWith(
            status: DoctorDetailsStatus.loaded,
            doctor: doctor,
          ),
        );
      }
    } catch (err) {
      debugPrint(err.toString());
      emit(state.copyWith(status: DoctorDetailsStatus.error));
    }
  }
}