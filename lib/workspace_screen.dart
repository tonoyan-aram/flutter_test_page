import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'search_input.dart';
import 'workspace.dart';
import 'workspace_card.dart';

class WorkspacesScreen extends StatelessWidget {
  final List<Workspace> workspaces = [
    Workspace('Savva', Colors.red),
    Workspace('Olluco', Colors.pink),
    Workspace('Loona', Colors.purple),
    Workspace('Folk', Colors.blue),
    Workspace('White Rabbit', Colors.lightBlue),
    Workspace('Sage', Colors.green),
    Workspace('Maya', Colors.orange),
    Workspace('Jun', Colors.deepOrange),
    Workspace('Onest', Colors.deepPurple),
    Workspace('Пробка на Цветном', Colors.blueAccent),
  ];

  WorkspacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          )
        ],
        title: const Text('Рабочие пространства',
            style: TextStyle(
              color: Colors.white,
              // fontSize: 18,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: SearchInput(),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemCount: workspaces.length,
                itemBuilder: (context, index) {
                  return WorkspaceCard(workspaces[index], () {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
