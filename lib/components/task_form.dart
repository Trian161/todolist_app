import 'package:flutter/material.dart';
import 'package:todolist_app/components/input_field.dart';

enum PriorityTask { high, medium, low }

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  PriorityTask? _priority = PriorityTask.high;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 600,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Color(0xffd6b4fc),
            )),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(
                  height: 20,
                  color: Color(0xffd6b4fc),
                  thickness: 3,
                  indent: 15,
                  endIndent: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Title :',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xffd6b4fc),
                            width: 3,
                          ),
                        ),
                        child: TextFormField(
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'title',
                            contentPadding:
                                EdgeInsets.only(left: 15, top: 10, bottom: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description :',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xffd6b4fc),
                          width: 3,
                        ),
                      ),
                      child: TextFormField(
                        maxLines: 4,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'description',
                          contentPadding:
                              EdgeInsets.only(left: 15, top: 10, bottom: 10),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Priority Task',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: RadioListTile<PriorityTask>(
                                dense: true,
                                visualDensity: VisualDensity(horizontal: -4),
                                contentPadding: EdgeInsets.zero,
                                title: Align(
                                  alignment: Alignment(-1.5, 0),
                                  child: const Text(
                                    'High',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                value: PriorityTask.high,
                                groupValue: _priority,
                                onChanged: (value) {
                                  setState(() {
                                    _priority = value;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile<PriorityTask>(
                                dense: true,
                                visualDensity: VisualDensity(horizontal: -4),
                                contentPadding: EdgeInsets.zero,
                                title: Align(
                                  alignment: Alignment(-4.0, 0),
                                  child: const Text(
                                    'Medium',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                value: PriorityTask.medium,
                                groupValue: _priority,
                                onChanged: (value) {
                                  setState(() {
                                    _priority = value;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: RadioListTile<PriorityTask>(
                                  dense: true,
                                  visualDensity: VisualDensity(horizontal: -4),
                                  contentPadding: EdgeInsets.zero,
                                  title: Align(
                                    alignment: Alignment(-1.5, 0),
                                    child: const Text(
                                      'Low',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  value: PriorityTask.low,
                                  groupValue: _priority,
                                  onChanged: (value) {
                                    setState(() {
                                      _priority = value;
                                    });
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date :',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color(0xffd6b4fc),
                                    width: 3,
                                  ),
                                ),
                                child: TextFormField(
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'dd/mm/yy',
                                    contentPadding: EdgeInsets.only(
                                        left: 40, top: 5, bottom: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Time :',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color(0xffd6b4fc),
                                    width: 3,
                                  ),
                                ),
                                child: TextFormField(
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '00:00',
                                    contentPadding: EdgeInsets.only(
                                        left: 60, top: 5, bottom: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Category :'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
