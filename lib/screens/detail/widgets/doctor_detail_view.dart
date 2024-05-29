
part of '../doctor_detail_screen.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    // CREATE UI here
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Doctor Details',
            style: textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          leading: AppIconButton(
              icon: Icons.arrow_back, onTap: () => Navigator.pop(context)),
          actions: [
            AppIconButton(icon: Icons.favorite_outline, onTap: () {}),
          ],
        ),
        body: const DoctorDetailBody());
  }
}

