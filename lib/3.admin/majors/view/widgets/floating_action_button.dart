import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/Students/view/widgets/custom_textfield.dart';

import '../../../../utils/styles/colors.dart';

class FloatingButton extends StatefulWidget {
   FloatingButton({
    super.key,
  });

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  String selectedSubject = 'Math';
  List<String> subjects = ['Math', 'Science', 'History'];

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Enter Major Details',style: TextStyle(color: ColorsAsset.kPrimary,),),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    MyTextField(labeltext: 'Major Name'),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Flexible(
                          flex: 5,
                          child: DropdownButtonFormField<String>(
                            value: selectedSubject,
                            decoration: const InputDecoration(
                              border:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorsAsset.kPrimary
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorsAsset.kPrimary
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorsAsset.kPrimary
                                ),
                              ),
                            ),
                            items:subjects.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedSubject = newValue!;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          flex: 1,
                            child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_box_outlined,color: ColorsAsset.kPrimary,),),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Text('Added Subjects',style: TextStyle(color: ColorsAsset.kPrimary,),),
                    const SizedBox(height: 5,),
                    ...subjects.map((subject) => Text(subject)).toList(),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Add',style: TextStyle(color: ColorsAsset.kPrimary,)),
                  onPressed: () {},
                ),
              ],
            );
          },
        );
      },
      child: const Icon(Icons.add,color: ColorsAsset.kPrimary,),
    );
  }
}

