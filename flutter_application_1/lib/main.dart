import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/cubits/counterState.dart';
import 'package:flutter_application_1/cubits/cubitCounter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(basketBallPointsCounter());
}

class basketBallPointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(home: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text('Basketball points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        children: [
                          Text(
                            'Miami Heat',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).miamiheat}',
                            style: TextStyle(
                              fontSize: 200,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamsIncrement(
                                      team: 'miamiheat', buttunNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamsIncrement(
                                      team: 'miamiheat', buttunNumber: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamsIncrement(
                                      team: 'miamiheat', buttunNumber: 3);
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 8,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.blueGrey,
                        thickness: 1,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        children: [
                          Text(
                            'Ulta Jazz',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).ultajzz}',
                            style: TextStyle(
                              fontSize: 200,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamsIncrement(
                                      team: 'ultajazz', buttunNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamsIncrement(
                                      team: 'ultajazz', buttunNumber: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamsIncrement(
                                      team: 'ultajazz', buttunNumber: 3);
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 8,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).reset();
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
