
part of '../doctor_detail_screen.dart';


class DoctorWorkingHour extends StatelessWidget {
  const DoctorWorkingHour({
    super.key,
    required this.workingHours,
  });

  final List<DoctorWorkingHours> workingHours;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Working Hours',
          style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        ListView.separated(
          padding: const EdgeInsets.all(8.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: workingHours.length,
          separatorBuilder: (context, index) => const SizedBox(height: 8.0),
          itemBuilder: (context, index) {
            return Row(
              children: [
                Expanded(
                  child: Text(workingHours[index].dayOfWeek),
                ),
                const SizedBox(width: 16.0),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: colorScheme.surfaceVariant),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    workingHours[index].startTime.toCustomString(),
                    style: textTheme.bodySmall!.copyWith(
                      color: colorScheme.onBackground.withOpacity(.5),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                const Text("-"),
                const SizedBox(width: 16.0),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: colorScheme.surfaceVariant),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    workingHours[index].endTime.toCustomString(),
                    style: textTheme.bodySmall!.copyWith(
                      color: colorScheme.onBackground.withOpacity(.5),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
