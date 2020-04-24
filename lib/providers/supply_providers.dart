import 'package:provider/provider.dart';
import 'package:todo_app/locator.dart';
import 'package:todo_app/providers/todo_provider.dart';


List<SingleChildCloneableWidget> supplyProviders() {
  // Register the providers only
  return [
    ChangeNotifierProvider(
      create: (_) => locator<TodoProvider>(),
    ),
  ];
}
