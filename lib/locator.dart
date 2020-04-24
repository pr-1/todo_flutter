import 'package:get_it/get_it.dart';
import 'package:todo_app/providers/todo_provider.dart';

GetIt locator = GetIt.instance;

// Register classes that should have a singleton Object across the app;

void setupLocator() {
  //Services

  locator.registerLazySingleton(() => TodoProvider());

}