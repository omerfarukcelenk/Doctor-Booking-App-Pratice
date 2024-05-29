part of 'home_bloc.dart';

class HomeState extends Equatable {
  final HomeStatus status;
  final List<DoctorCategory> doctorCategories;
  final List<Doctor> nearbyDoctors;
  final List myAppointments;
  const HomeState({
    this.status = HomeStatus.initial,
    this.doctorCategories = const <DoctorCategory>[],
    this.nearbyDoctors = const <Doctor>[],
    this.myAppointments = const [],
  });

  HomeState copyWith({
    HomeStatus? status,
    List<DoctorCategory>? doctorCategories,
    List<Doctor>? nearbyDoctors,
    List? myAppointments,
  }) {
    return HomeState(
        status: status ?? this.status,
        doctorCategories: doctorCategories ?? this.doctorCategories,
        myAppointments: myAppointments ?? this.myAppointments,
        nearbyDoctors: nearbyDoctors ?? this.nearbyDoctors);
  }

  @override
  List<Object> get props =>
      [status, doctorCategories, nearbyDoctors, myAppointments];
}
