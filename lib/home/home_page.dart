import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../routes/routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("TodoApp", style: TextStyle(color: Colors.blue)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          height: 80,
          child: Card(
            elevation: 5,
            child: Center(
              child: ListTile(
                trailing: const Icon(Icons.east, color: Colors.green),
                onTap: () {
                  AutoRouter.of(context).push(const HomeListRoute());
                },
                title: const Text("Home",
                    style: TextStyle(fontSize: 25, color: Colors.green)),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Add Todo"),
                    content: TextField(
                      controller: myController,
                      decoration: const InputDecoration(
                        hintText: "Catagory",
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            log(myController.text);
                            context.router.pop();
                          },
                          child: const Text("save"))
                    ],
                  );
                });
          },
          child: const Icon(Icons.add)),
    );
  }
}
