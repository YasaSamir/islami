import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamii/features/home/data/data_source/suwer_remote_data_source.dart';
import 'package:islamii/features/home/data/repo/suwer_repo_impl.dart';
import 'package:islamii/features/home/presentation/manager/suwer_cubit.dart';
import 'package:islamii/features/onboarding/presentation/onboarding_screen.dart';

import 'config/navigation/app_router.dart';
import 'config/navigation/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SuwerCubit>(
          create: (_) => SuwerCubit(
            SuwerRepoImpl(SuwerRemoteDataSource()),
          )..getSuwar(),
        ),
      ],
      child: MaterialApp(
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.onboarding,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
