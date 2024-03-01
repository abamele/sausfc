import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:saus_fc/providers/defender-provider.dart';
import 'package:saus_fc/providers/forward-provider.dart';
import 'package:saus_fc/providers/goalkeeper-provider.dart';
import 'package:saus_fc/providers/midfield-provider.dart';
import 'package:saus_fc/providers/player-profile-provider.dart';
import 'package:saus_fc/providers/service-provider.dart';
import 'package:saus_fc/views/dashboard.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBqARG1LpgLlbaKMk4hu6Dt7P8HWjEFUFc",
          authDomain: "movies-aebb8.firebaseapp.com",
          projectId: "movies-aebb8",
          storageBucket: "movies-aebb8.appspot.com",
          messagingSenderId: "438846341696",
          appId: "1:438846341696:web:e1c2a8ac5543eca0ec95a5"
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final PageStorageBucket bucket = PageStorageBucket();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PlayerProfileProvider>(
            create: (context) => PlayerProfileProvider()),
        ChangeNotifierProvider<GoalKeeperProvider>(
            create: (context) => GoalKeeperProvider()),
        ChangeNotifierProvider<DefenderProvider>(
            create: (context) => DefenderProvider()),
        ChangeNotifierProvider<MidfieldProvider>(
            create: (context) => MidfieldProvider()),
        ChangeNotifierProvider<ForwardProvider>(
            create: (context) => ForwardProvider()),
        ChangeNotifierProvider<ServiceProvider>(
            create: (context) => ServiceProvider()),
      ],
      child: MaterialApp(
        title: 'My Portfolio',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PageStorage(
          bucket: bucket,
          child: const MainDashBoard(),
        ),
      ),
    );
  }
}


