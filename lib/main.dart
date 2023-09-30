import 'package:stock_market/blocs/delegate.dart';
import 'package:stock_market/blocs/details/details_bloc.dart';
import 'package:stock_market/blocs/load/load_bloc.dart';
import 'package:stock_market/views/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoadBloc>(create: (context) => LoadBloc()),
        BlocProvider<DetailsBloc>(create: (context) => DetailsBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EStock Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LaunchScreenWidget(),
      ),
    );
  }
}
