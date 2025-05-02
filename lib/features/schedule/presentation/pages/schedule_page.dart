import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plan_ai/features/schedule/domain/models/schedule_preferences.dart';
import 'package:plan_ai/features/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:plan_ai/features/schedule/presentation/bloc/schedule_event.dart';
import 'package:plan_ai/features/schedule/presentation/bloc/schedule_state.dart';
import 'package:plan_ai/features/schedule/domain/models/daily_schedule.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  late TimeOfDay _workStartTime;
  late TimeOfDay _workEndTime;
  late TimeOfDay _sleepStartTime;
  late TimeOfDay _sleepEndTime;
  bool _isWeekendIncluded = false;

  @override
  void initState() {
    super.initState();
    // Set default times
    _workStartTime = const TimeOfDay(hour: 9, minute: 0);
    _workEndTime = const TimeOfDay(hour: 17, minute: 0);
    _sleepStartTime = const TimeOfDay(hour: 23, minute: 0);
    _sleepEndTime = const TimeOfDay(hour: 7, minute: 0);
  }

  Future<void> _selectTime(BuildContext context, TimeOfDay initialTime, Function(TimeOfDay) onTimeSelected) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (picked != null) {
      setState(() {
        onTimeSelected(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule Settings'),
      ),
      body: BlocBuilder<ScheduleBloc, ScheduleState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Work Hours',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text('Start Time'),
                        subtitle: Text(_workStartTime.format(context)),
                        onTap: () => _selectTime(context, _workStartTime, (time) => _workStartTime = time),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('End Time'),
                        subtitle: Text(_workEndTime.format(context)),
                        onTap: () => _selectTime(context, _workEndTime, (time) => _workEndTime = time),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const Text(
                  'Sleep Hours',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text('Bedtime'),
                        subtitle: Text(_sleepStartTime.format(context)),
                        onTap: () => _selectTime(context, _sleepStartTime, (time) => _sleepStartTime = time),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('Wake Up Time'),
                        subtitle: Text(_sleepEndTime.format(context)),
                        onTap: () => _selectTime(context, _sleepEndTime, (time) => _sleepEndTime = time),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                SwitchListTile(
                  title: const Text('Include Weekends'),
                  subtitle: const Text('Include Saturday and Sunday in schedule generation'),
                  value: _isWeekendIncluded,
                  onChanged: (value) {
                    setState(() {
                      _isWeekendIncluded = value;
                    });
                  },
                ),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      final preferences = SchedulePreferences(
                        workStartTime: _workStartTime,
                        workEndTime: _workEndTime,
                        sleepStartTime: _sleepStartTime,
                        sleepEndTime: _sleepEndTime,
                        isWeekendIncluded: _isWeekendIncluded,
                      );
                      context.read<ScheduleBloc>().add(
                            ScheduleEvent.generateSchedule(preferences),
                          );
                    },
                    child: const Text('Generate Schedule'),
                  ),
                ),
                const SizedBox(height: 16),
                state.map(
                  initial: (_) => const SizedBox.shrink(),
                  loading: (_) => const Center(child: CircularProgressIndicator()),
                  loaded: (state) => Column(
                    children: [
                      Center(
                        child: Text('Schedule generated with ${state.schedule.length} days'),
                      ),
                      const SizedBox(height: 16),
                      ...state.schedule.map((dailySchedule) => Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dailySchedule.date,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              ...dailySchedule.tasks.map((task) => ListTile(
                                title: Text('${task.startTime} - ${task.endTime}'),
                                subtitle: Text(task.task.title),
                              )),
                            ],
                          ),
                        ),
                      )),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<ScheduleBloc>().add(
                                ScheduleEvent.saveSchedule(state.schedule),
                              );
                        },
                        child: const Text('Save Schedule'),
                      ),
                    ],
                  ),
                  saved: (_) => const Center(
                    child: Text(
                      'Schedule saved successfully!',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  error: (state) => Center(
                    child: Text(
                      state.message,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
} 