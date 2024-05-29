part of '../home_screen.dart';


class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.textTheme,
    required this.colorScheme,
  });

  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Welcome",
          style: textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          "Ömer",
          style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: colorScheme.error,
            ),
            const SizedBox(
              width: 4.0,
            ),
            Text(
              "Turkiye, Mersin",
              style:
                  textTheme.bodySmall!.copyWith(color: colorScheme.error),
            ),
            const SizedBox(
              width: 4.0,
            ),
            Icon(
              Icons.expand_more,
              color: colorScheme.error,
            ),
          ],
        )
      ],
    );
  }
}
