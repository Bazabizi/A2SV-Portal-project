
import 'dart:io';

import 'Task.dart';
import 'TaskManager.dart';

void main(){
  TaskManager taskManager = TaskManager();
  while(true){
    print("1.Add a new task");
    print("2.Display all tasks");
    print("3.Display completed tasks");
    print("4.Display pending tasks");
    print("5.Edit a task");
    print("6.Delete a task");
    print("7.Exit");

    String input = (stdin.readLineSync()??"");
    switch (input) {
      
      case "1":
        Task newTask = taskManager.input();
        taskManager.addTask(newTask);
        break;
      
      case "2":
        taskManager.displayAll();
        break;
      
      case "3":
        taskManager.displayComplete();
        break;

      case "4":
        taskManager.displayPending();
        break;
      
      case "5":
        
        Task previousTask = taskManager.search();
        Task newTask = taskManager.input();
        taskManager.editTask(previousTask, newTask);
        break;

      case "6":
        Task task = taskManager.search();
        taskManager.removeTask(task);
        break;
      
      case "7":
        exit(0);
  
      default:
        print("Try a correct Input");
    }

  }     


}