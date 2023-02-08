import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/movies_bloc.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => MoviesBloc()
        ..add(GetNowPlayingMoviesEvent()), //*fornsico un evento subito
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          print(state);
          return const Scaffold();
        },
      ),
    );
  }
}
