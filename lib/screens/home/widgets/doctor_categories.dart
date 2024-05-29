part of '../home_screen.dart';

class DoctorCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            SectionTitle(
              title: 'Categories',
              action: 'See all',
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: DoctorCategory.values
                  .take(5)
                  .map(
                    (category) => Expanded(
                      child: CircleAvatarWithTextLabel(
                          icon: category.icon, label: category.name),
                    ),
                  )
                  .toList(),
            )
          ],
        );
      },
    );
  }
}
