import 'package:djcsi_app/pages/tasks.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  Rx<List<TaskModel>> tasks = Rx<List<TaskModel>>([]);
  TextEditingController taskTextEditingController = TextEditingController();
  late TaskModel taskModel;
  var itemCount = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    taskTextEditingController.dispose();
  }

  addTask(String name) {
    taskModel = TaskModel(task: name);
    tasks.value.add(taskModel);
    itemCount.value = tasks.value.length;
    taskTextEditingController.clear();
  }

  removeTask(int index) {
    tasks.value.removeAt(index);
    itemCount.value = tasks.value.length;
  }


}