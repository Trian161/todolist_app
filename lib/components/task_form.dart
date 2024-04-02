import 'package:flutter/material.dart';

enum PriorityTask { high, medium, low }

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  PriorityTask? _priority = PriorityTask.high;
  final _formKey = GlobalKey<FormState>();

  String? selectedValue = null;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
        child: Text('Study'),
        value: "Study",
      ),
      DropdownMenuItem(
        child: Text('Work'),
        value: "Work",
      ),
      DropdownMenuItem(
        child: Text('Hobby'),
        value: "Hobby",
      )
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
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
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Title :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xffd6b4fc),
                        width: 3,
                      ),
                    ),
                    child: TextFormField(
                      maxLines: 1,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'title',
                        contentPadding: EdgeInsets.only(left: 15, bottom: 10),
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RadioListTile<PriorityTask>(
                            activeColor: Colors.red,
                            dense: true,
                            visualDensity: VisualDensity(horizontal: -4),
                            contentPadding: EdgeInsets.zero,
                            title: Align(
                              alignment: Alignment(-1.5, 0),
                              child: const Text(
                                'High',
                                style: TextStyle(fontSize: 14),
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
                            activeColor: Colors.yellow[600],
                            dense: true,
                            visualDensity: VisualDensity(horizontal: -4),
                            contentPadding: EdgeInsets.zero,
                            title: Align(
                              alignment: Alignment(-6, 0),
                              child: const Text(
                                'Medium',
                                style: TextStyle(fontSize: 14),
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
                              activeColor: Colors.green,
                              dense: true,
                              visualDensity: VisualDensity(horizontal: -4),
                              contentPadding: EdgeInsets.zero,
                              title: Align(
                                alignment: Alignment(-1.5, 0),
                                child: const Text(
                                  'Low',
                                  style: TextStyle(fontSize: 14),
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
                            height: 30,
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
                                hintText: 'dd/mm/yy',
                                contentPadding:
                                    EdgeInsets.only(left: 30, bottom: 10),
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
                            height: 30,
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
                                hintText: '00:00',
                                contentPadding:
                                    EdgeInsets.only(left: 50, bottom: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(
                        'Category :',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffd6b4fc), width: 3),
                              borderRadius: BorderRadius.circular(30)),
                          height: 30,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                icon: Icon(
                                  Icons.arrow_drop_down_circle_rounded,
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(30),
                                isDense: true,
                                hint: Text(
                                  'Select Category',
                                  style: TextStyle(fontSize: 14),
                                ),
                                padding: EdgeInsets.only(left: 10),
                                isExpanded: true,
                                items: dropdownItems,
                                value: selectedValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                  });
                                }),
                          ),
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xffd6b4fc),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xffd6b4fc),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Reset',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
