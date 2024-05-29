part of '../home_screen.dart';

class AppBarBottom extends StatelessWidget {
  const AppBarBottom({
    super.key,
    required this.colorScheme,
  });

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search for doctors...",
          prefixIcon: const Icon(Icons.search),
          suffixIcon: Container(
            margin: EdgeInsets.all(4),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: colorScheme.onSurfaceVariant,
                borderRadius: BorderRadius.circular(12)),
            child: Icon(
              Icons.filter_alt_outlined,
              color: colorScheme.surfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
