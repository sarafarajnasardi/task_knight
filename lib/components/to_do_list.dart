import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  final String name;
  final bool isComplete; // Updated for camelCase
  final ValueChanged<bool?> onChanged;
  final VoidCallback onDelete;
  final String onDue;

  const ToDoList({
    Key? key,
    required this.name,
    required this.isComplete,
    required this.onChanged,
    required this.onDelete,
    required this.onDue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[800],
      margin: const EdgeInsets.symmetric(vertical: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListTile(
          leading: Checkbox(
            value: isComplete,
            onChanged: onChanged,
            activeColor: Colors.tealAccent[300],
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: isComplete ? Colors.black : Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Quest Deadline: $onDue',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
            ],
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: Colors.redAccent),
            onPressed: onDelete,
          ),
        ),
      ),
    );
  }
}
