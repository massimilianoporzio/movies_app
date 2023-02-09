import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/network/api_constants.dart';
import 'package:movies_app/features/movies/presentation/bloc/movies_bloc.dart';
import 'package:movies_app/features/movies/presentation/widgets/now_playing_container.dart';
import 'package:movies_app/features/movies/presentation/widgets/popular_container.dart';
import 'package:movies_app/features/movies/presentation/widgets/top_rated_container.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/services/service_locator.dart';
import 'dummy.dart';

class MainMoviesScreen extends StatelessWidget {
  const MainMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build");
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopRatedMoviesEvent()),
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              NowPlayingContainer(),
              PopularContainer(),
              SizedBox(height: 50.0),
              TopRatedContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
