import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doctor_booking_app_pratice/repositories/doctor_repositories.dart';
import 'package:doctor_booking_app_pratice/screens/home/home_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:models/models.dart';

part 'home_event.dart';
part 'home_state.dart';

enum HomeStatus { initial, loading, loaded, error }

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final DoctorRepository _doctorRepository;
  HomeBloc({
    required DoctorRepository doctorRepository,
  })  : _doctorRepository = doctorRepository,
        super(const HomeState()) {
    on<LoadHomeEvent>(_onLoadHome);
  }

  Future<FutureOr<void>> _onLoadHome(
      HomeEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      final List<DoctorCategory> categories = await _doctorRepository.fetchDoctorCategories();
      final  List<Doctor> doctors = await _doctorRepository.fetchDoctors();
      print("data geldi 1.alan geçti");

     

      emit(
        state.copyWith(
          status: HomeStatus.loaded,
          doctorCategories: categories,
          nearbyDoctors: doctors,
        ),
      );
    } catch (e) {
      print("patladı");

      emit(state.copyWith(status: HomeStatus.error));
    }
  }
}
