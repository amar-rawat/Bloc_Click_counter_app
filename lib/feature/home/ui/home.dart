import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_bloc/feature/home/bloc/home_bloc.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final HomeBloc homeBloc = HomeBloc();

  int clickCounter = 0;

  void increament() {
    clickCounter = clickCounter + 1;
  }

  void decreament() {
    clickCounter = clickCounter - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  homeBloc.add(HomeRemoveButtonClickedEvent());
                },
                child: Icon(Icons.remove)),
            SizedBox(
              width: 20,
            ),
            BlocConsumer<HomeBloc, HomeState>(
                bloc: homeBloc,
                listener: (context, state) {
                  if (state is HomeInitialState) {}
                  if (state is HomeAddButtonClickedState) {
                    increament();
                  }
                  if (state is HomeRemoveButtonClickedState) {
                    decreament();
                  }
                },
                builder: (context, state) {
                  if (state is HomeInitialState) {
                    return Center(
                      child: Text(
                        clickCounter.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  }
                  if (state is HomeActionState) {
                    return Center(
                      child: Text(
                        clickCounter.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  } else {
                    return Text('something went wrong');
                  }
                }),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  homeBloc.add(HomeAddButtonClickedEvent());
                },
                child: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
