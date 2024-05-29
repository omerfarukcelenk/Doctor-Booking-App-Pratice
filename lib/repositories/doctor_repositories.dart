import 'package:models/models.dart';

class DoctorRepository {
  const DoctorRepository();

  Future<List<DoctorCategory>> fetchDoctorCategories() async {
    await Future.delayed(Duration(milliseconds: 1000));
    print("kategori geldi");
    return DoctorCategory.values;
  }

  Future<List<Doctor>> fetchDoctors() async {
    await Future.delayed(Duration(milliseconds: 1000));
    print("doktor geldi");
    return Doctor.sampleDoctors;
  }

  Future<List<Doctor>> fetchDoctorByCategories(String categoryId) async {
    await Future.delayed(Duration(milliseconds: 1000));

    throw UnimplementedError();
  }

  Future<Doctor?> fetchDoctorById(String doctorId) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return Doctor.sampleDoctors.firstWhere(
      (doctor) => doctor.id == doctorId,
    );
  }
}
