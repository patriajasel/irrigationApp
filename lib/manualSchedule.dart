import 'package:flutter/material.dart';
import 'dayPicker.dart';
import 'nodeDropdown.dart';

class ManualScheduler extends StatefulWidget {
  const ManualScheduler({super.key});

  @override
  State<ManualScheduler> createState() => _ManualSchedulerState();
}

class _ManualSchedulerState extends State<ManualScheduler> {
  TimeOfDay selectedTime = TimeOfDay.now();
  bool isNotify = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          "Manual Scheduler",
          style: TextStyle(
            fontFamily: "Rokkitt",
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "${selectedTime.hourOfPeriod < 10 ? '0${selectedTime.hourOfPeriod}' : selectedTime.hourOfPeriod} : ${selectedTime.minute < 10 ? '0${selectedTime.minute}' : selectedTime.minute} ${selectedTime.period == "DayPeriod.am" ? 'AM' : 'PM'}",
                style: const TextStyle(
                    fontFamily: "Rokkitt",
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0),
              ),
              ElevatedButton(
                child: const Text(
                  "Pick Time",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                onPressed: () async {
                  final TimeOfDay? timeOfDay = await showTimePicker(
                    context: context,
                    initialTime: selectedTime,
                    initialEntryMode: TimePickerEntryMode.dial,
                  );
                  if (timeOfDay != null) {
                    setState(() {
                      selectedTime =
                          timeOfDay.replacing(hour: timeOfDay.hourOfPeriod);
                    });
                  }
                },
              ),
              const Divider(),
              const DayPicker(),
              const nodeSelector(),
              Container(
                margin: const EdgeInsets.only(top: 15),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Measurement",
                  style: TextStyle(
                    fontFamily: "Rokkitt",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Water Amount per Plant (mL)",
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Notify me"),
                    Transform.scale(
                      scale: 0.8, // Adjust the scale to make the switch smaller
                      child: Switch.adaptive(
                        value: isNotify,
                        activeColor:
                            Colors.blue, // Set the active color to blue
                        onChanged: (value) {
                          setState(() {
                            isNotify = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0), // Add margin to the top
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your save functionality here
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Add some space between the buttons
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your cancel functionality here
                            },
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
