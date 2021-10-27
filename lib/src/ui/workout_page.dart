import 'package:fitness_app/src/controller/body_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  BodyPageController bodyPageController = Get.put(BodyPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Body Workout'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Container(
                height: 48,
                decoration: const BoxDecoration(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              Container(
                height: 240,
                decoration: const BoxDecoration(color: Colors.black),
              ),
              const Expanded(
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bodyPageController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
