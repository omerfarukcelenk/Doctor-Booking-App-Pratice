part of '../home_screen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.status == HomeStatus.initial ||
            state.status == HomeStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == HomeStatus.loaded) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DoctorCategories(),
                const SizedBox(
                  height: 24.0,
                ),
                const MySchedule(),
                const SizedBox(
                  height: 24.0,
                ),
                NearByDoctors()
              ],
            ),
          );
        } else {
          return const Center(
            child: Text("Failed to load data"),
          );
        }
      },
    );
  }
}
