import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

class HomeListPage extends StatelessWidget {
  const HomeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Home List',
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showmydialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  showmydialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text("Add new todo list"),
              content: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter todo list name',
                ),
              ),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    child: const Text("save"))
              ]);
        });
  }
}
