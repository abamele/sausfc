import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:saus_fc/providers/defender-provider.dart';
import 'package:saus_fc/providers/forward-provider.dart';
import 'package:saus_fc/providers/goalkeeper-provider.dart';
import 'package:saus_fc/providers/midfield-provider.dart';
import 'package:saus_fc/providers/player-profile-provider.dart';
import 'package:saus_fc/views/dashboard.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAvKnWKNIoXYIcwDyL-SpxZYhM7SUoAYTk",
          authDomain: "abashop-14164.firebaseapp.com",
          projectId: "abashop-14164",
          storageBucket: "abashop-14164.appspot.com",
          messagingSenderId: "46171038632",
          appId: "1:46171038632:web:3f1cf53668fc558d7fb39d",
          measurementId: "G-GX9HGRFR08"
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


