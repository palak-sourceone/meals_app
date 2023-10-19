import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/providers/favorites_provider.dart';

class MealDeatilsScreen extends ConsumerWidget {
  const MealDeatilsScreen({
    super.key,
    required this.meal,
  });
  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);
    final isFav = favoriteMeals.contains(meal);
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
          // leading: const Icon(Icons.abc),
          actions: [
            IconButton(
                onPressed: () {
                  final wasAdded = ref
                      .read(favoriteMealsProvider.notifier)
                      .toggleMealFavoriteStatus(meal);
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(wasAdded ? "Added to favorite" : "Np"),
                    duration: const Duration(seconds: 2),
                  ));
                },
                icon: Icon(isFav ? Icons.star : Icons.star_outline))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                meal.imageUrl,
                height: 300,
                width: double.infinity,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Ingredients",
                style: TextStyle(color: Colors.amber),
              ),
              const SizedBox(
                height: 16,
              ),
              for (final ingredient in meal.ingredients) Text(ingredient),
              const Text(
                "Steps",
                style: TextStyle(color: Colors.amber),
              ),
              const SizedBox(
                height: 16,
              ),
              for (final step in meal.steps)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    step,
                    textAlign: TextAlign.center,
                  ),
                )
            ],
          ),
        ));
  }
}
