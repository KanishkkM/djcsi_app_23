import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:djcsi_app/controller/work_controller.dart';

class Worktask extends GetView<WorkController> {
  const Worktask({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(WorkController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work Assignments'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.taskTextEditingController,
              decoration: const InputDecoration(
                hintText: "Enter Work Assignments",
                labelText: "Assignments",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                isDense: true,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            InkWell(
                onTap: () {
                  controller.addTask(
                      controller.taskTextEditingController.text);
                },
                child: Container(child: Text("Add Assignment"),height: 60,width: 140,alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.yellow[700],borderRadius: BorderRadius.circular(15)),)
            ),
            Expanded(
              child: Obx(() => ListView.builder(
                itemCount: controller.itemCount.value,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text(controller.tasks.value[index].task!),
                    trailing: GestureDetector(
                      child: const Icon(
                        Icons.delete,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        controller.removeTask(index);
                      },
                    ),
                  );
                }),
              )),
            )
          ],
        ),
      ),
    );
  }
}
