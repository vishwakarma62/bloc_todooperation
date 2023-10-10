// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_bloc.dart';

class TaskState extends Equatable {
  final List<Task> task_state;
  const TaskState({
     this.task_state= const<Task>[],
    
  });
  
  @override
  List<Object> get props => [task_state];
}

