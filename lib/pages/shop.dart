import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:djcsi_app/controller/shop_controller.dart';

class Shoptask extends GetView<ShopController> {
  const Shoptask({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(ShopController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Lists'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.taskTextEditingController,
              decoration: const InputDecoration(
                hintText: "Enter Items",
                labelText: "Items",
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
                child: Container(child: Text("Add Item"),height: 60,width: 140,alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.yellow[700],borderRadius: BorderRadius.circular(15)),)
            ),
            Expanded(
              child: Obx(() => ListView.builder(
                itemCount: controller.itemCount.value,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text(controller.tasks.value[index].task!),
                    trailing: GestureDetector(
                      child: const Icon(Icons.delete, color: Colors.grey,),
                      onTap: () {controller.removeTask(index);},
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

