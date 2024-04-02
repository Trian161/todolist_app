import 'package:flutter/material.dart';

class GoalForm extends StatefulWidget {
  const GoalForm({super.key});

  @override
  State<GoalForm> createState() => _GoalFormState();
}

class _GoalFormState extends State<GoalForm> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  List stepToTake = [
    'learn react',
    'learn flutter',
    'learn dart',
    'learn dart',
    'learn dart',
    'learn dart',
    'learn dart'
  ];
  @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  void saveStep() {
    setState(() {
      stepToTake.add(_controller.text);
    });
  }

  void createStep() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            height: 120,
            child: Column(
              children: [
                TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'add a new step',
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: saveStep, child: Text('save')),
                    ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('cancel')),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
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
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Due Date :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'dd/mm/yy',
                          contentPadding: EdgeInsets.only(left: 50, bottom: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Step to Take :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: createStep,
                  icon: Icon(Icons.add),
                  color: Colors.white,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffd6b4fc)),
                  ),
                ),
              ],
            ),
            Container(
                height: 150,
                decoration: BoxDecoration(border: Border.all()),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: stepToTake.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          dense: true,
                          title: Text(stepToTake[index]),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.delete),
                            iconSize: 20,
                          ),
                        ),
                        Divider(height: 0, color: Colors.black, thickness: 2),
                      ],
                    );
                  },
                )),
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
