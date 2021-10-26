import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
//import 'package:todoapp/model/todo_dto.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(TodoState initialState) : super(initialState);
}
