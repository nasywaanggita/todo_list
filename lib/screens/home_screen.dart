import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_list/utils/utils.dart';
import 'package:todo_list/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: deviceSize.height * 0.3,
            width: deviceSize.width,
            color: colors.primary,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DisplayWhiteText(
                  text: 'Aug 7, 2023',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                DisplayWhiteText(
                  text: 'My Todo List',
                  fontSize: 40,
                ),
              ],
            ),
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const DisplayListOfTasks(
                      tasks: [],
                    ),
                    const Gap(20),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineMedium,
                    ),
                    const Gap(20),
                    const DisplayListOfTasks(
                      tasks: [],
                      isCompletedTasks: true,
                    ),
                    const Gap(20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DisplayWhiteText(text: 'Add New Task'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
