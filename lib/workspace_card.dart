import 'package:flutter/material.dart';

import 'workspace.dart';

class WorkspaceCard extends StatelessWidget {
  final Workspace workspace;
  final void Function()? onPressed;

  const WorkspaceCard(this.workspace, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: workspace.color,
      surfaceTintColor: workspace.color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.white.withOpacity(0.3))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              workspace.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
