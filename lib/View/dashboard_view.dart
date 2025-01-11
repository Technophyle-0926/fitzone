import 'package:fitzone/View/exercise_view.dart';
import 'package:fitzone/View/food_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_symbols_icons/symbols.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        extendBody: true,
        body: TabBarView(
          children: [
            ExerciseView(),
            Container(
              color: Colors.green,
            ),
            FoodView(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.fitness_center_rounded,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Iconsax.home_2,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Symbols.grocery_rounded,
                    size: 30,
                  ),
                ),
              ],
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              dividerColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
