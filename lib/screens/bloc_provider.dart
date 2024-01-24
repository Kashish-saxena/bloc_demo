import 'dart:developer';

import 'package:bloc_demo/bloc/counter_bloc.dart';
import 'package:bloc_demo/bloc/counter_event.dart';
import 'package:bloc_demo/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlockProviderScreen extends StatelessWidget {
  const BlockProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    debugPrint("Called>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    return Scaffold(
      appBar: AppBar(
        title: const Text("BlocProvider Demo"),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          log("state is $state");
          // if (state is CounterIntitialState) {
          //   return CircularProgressIndicator();
          // }
          if (state is CounterIntitialState) {
            return Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Press button to change counter value ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "0",
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () =>
                              counterBloc.add(CounterDecreamentEvent()),
                          child: const Icon(Icons.remove),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () =>
                                counterBloc.add(CounterIncreamentEvent()),
                            child: const Icon(Icons.add)),
                      ],
                    ),
                  ]),
            );
          }
          if (state is CounterChangeState) {
            return Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Press button to change counter value ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${counterBloc.counter}",
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () =>
                              counterBloc.add(CounterDecreamentEvent()),
                          child: const Icon(Icons.remove),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () =>
                                counterBloc.add(CounterIncreamentEvent()),
                            child: const Icon(Icons.add)),
                      ],
                    ),
                  ]),
            );
          }
          return Container();
        },
      ),
    );
  }
}
