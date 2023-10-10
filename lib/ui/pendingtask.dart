import 'package:bloc_todooperation/bloc/taskbloc/bloc/task_bloc.dart';
import 'package:bloc_todooperation/model/task.dart';
import 'package:bloc_todooperation/taskscreentwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PendingTaskPage extends StatefulWidget {
  const PendingTaskPage({super.key});

  @override
  State<PendingTaskPage> createState() => _PendingTaskPageState();
}

class _PendingTaskPageState extends State<PendingTaskPage> {
  void _addtask(BuildContext context) {
    showModalBottomSheet(
        context: (context),
        builder: (context) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const AddTaskScreen(),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.8),
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          List<Task> listitem = state.task_state;
          return SafeArea(
            child: Column(
              children: [
                Text("${state.task_state}"),
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: listitem.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text("${listitem[index]}"),
                    );
                  },
                ),
                InkWell(
                    onTap: () {
                      _addtask(context);
                    },
                    child: Icon(Icons.add)),
              ],
            ),
          );
        },
      ),
    );
  }
}
