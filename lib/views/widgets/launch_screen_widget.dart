import 'package:estock/blocs/load/load_bloc.dart';
import 'package:estock/data/repositories/data_repository.dart';
import 'package:estock/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LaunchScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoadBloc, LoadState>(
      listener: (_, LoadState state) {},
      builder: (context, state) {
        if (state is LoadInitialState)
          BlocProvider.of<LoadBloc>(context)..add(LoadInProgressEvent());
        if (state is LoadSuccessState) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          });
        }
        if (state is LoadInProgressState) {
          getData(context);
          return Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 95,
                  height: 80,
                  child: Image.asset(
                    "assets/Rectangel_Logo.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(height: 20),
                CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.black))
              ],
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
