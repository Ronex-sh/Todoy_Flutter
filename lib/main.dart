import 'package:flutter/material.dart';
import 'models/task_data.dart';
import 'screen/task_screen.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
              return ChangeNotifierProvider(
                create: (context)=>TaskDate(),

                  child: MaterialApp(
                  home: TaskScreen(),
                ),
              );
          }
}
