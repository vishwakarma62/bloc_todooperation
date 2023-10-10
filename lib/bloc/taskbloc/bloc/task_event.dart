part of 'task_bloc.dart';

sealed class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class AddTaskEvent extends TaskEvent {
  final Task task;
  const AddTaskEvent({
    required this.task,
  });

  @override
  List<Object> get props => [task];
}
// class AddTaskEvent2 extends TaskEvent {
//   final Task task;
//   const AddTaskEvent2({
//     required this.task,
//   });
// }