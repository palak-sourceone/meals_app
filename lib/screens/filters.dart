// import 'package:flutter/material.dart';

// class FiltersScreen extends StatefulWidget {
//   const FiltersScreen({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return _FiltersScreenState();
//   }
// }

// class _FiltersScreenState extends State<FiltersScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Filters"),
//       ),
//       body: Column(children: [
//         SwitchListTile(
//           value: value,
//           onChanged: onChanged,
//           title: Text(
//             "Guten-Free",
//             style: Theme.of(context)
//                 .textTheme
//                 .titleLarge!
//                 .copyWith(color: Theme.of(context).colorScheme.onBackground),
//           ),
//           subtitle: Text(
//             "Only include gluten-free",
//             style: Theme.of(context)
//                 .textTheme
//                 .titleMedium!
//                 .copyWith(color: Theme.of(context).colorScheme.onBackground),
//           ),
//           activeColor: Theme.of(context).colorScheme.tertiary,
//           contentPadding: const EdgeInsets.only(left: 34, right: 22),
//         )
//       ]),
//     );
//   }
// }
