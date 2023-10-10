
import 'package:bloc_todooperation/bloc/taskbloc/bloc/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/task.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleCTR = TextEditingController();
    TextEditingController descriptionCTR = TextEditingController();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const Text(
            "Add Task",
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 24,
          ),
          TextField(
            autofocus: true,
            controller: titleCTR,
            decoration: const InputDecoration(
              label: Text("title"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextField(
            maxLines: 3,
            autofocus: true,
            controller: descriptionCTR,
            decoration: const InputDecoration(
              label: Text("description"),
              border: OutlineInputBorder(),
            ),
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: const Text("cancel")),
              TextButton(
                
                  onPressed: () {
                    var task = Task(
                      description: descriptionCTR.text,
                      title: titleCTR.text, id: '',
                      //id: GUIDGen.generate(),
                    );
                    
                    context.read<TaskBloc>()..add(AddTaskEvent(task: task));
                    Navigator.pop(context);
                  },
                  child: const Text("Add")),
            ],
          ),
        ],
      ),
    );
  }
}
