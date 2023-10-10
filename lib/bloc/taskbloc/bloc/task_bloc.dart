import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_todooperation/model/task.dart';
import 'package:equatable/equatable.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskState()) {
    on<AddTaskEvent>(addTaskEvent);
    //on<AddTaskEvent2>(addTaskEvent2);
  }

  FutureOr<void> addTaskEvent(AddTaskEvent event, Emitter<TaskState> emit) {
    final state=this.state;
    print(state.task_state);
    emit(
      TaskState(
        
      task_state: List.from(state.task_state)..add(event.task),
      ),
    );
    
  }

 
}
