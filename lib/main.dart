import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:saus_fc/providers/academy-life-bursa.dart';
import 'package:saus_fc/providers/academy-life-eskisehir.dart';
import 'package:saus_fc/providers/academy-life-kocaeli-provider.dart';
import 'package:saus_fc/providers/add-contact-provider.dart';
import 'package:saus_fc/providers/bursa-gallery-provider.dart';
import 'package:saus_fc/providers/dashboard-players-provider.dart';
import 'package:saus_fc/providers/defender-provider.dart';
import 'package:saus_fc/providers/eskisehir-gallery-provider.dart';
import 'package:saus_fc/providers/forward-provider.dart';
import 'package:saus_fc/providers/goalkeeper-provider.dart';
import 'package:saus_fc/providers/kocaeli-gallery-provider.dart';
import 'package:saus_fc/providers/midfield-provider.dart';
import 'package:saus_fc/providers/player-profile-provider.dart';
import 'package:saus_fc/providers/scroll_provider.dart';
import 'package:saus_fc/providers/service-provider.dart';
import 'package:saus_fc/views/dashboard.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter("localdatabase");
  await Hive.openBox("userbox");
  await Hive.openBox("profileDataBox");
  await Hive.openBox("galleryDataBox");
  await Hive.openBox("serviceDataBox");

  Hive.box("galleryDataBox").clear();
  Hive.box("profileDataBox").clear();
  Hive.box("serviceDataBox").clear();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCc6-GUPHm4ImBjCzwpkFn1aTOayl0tdJ4",
          authDomain: "sausfc-4d028.firebaseapp.com",
          projectId: "sausfc-4d028",
          storageBucket: "sausfc-4d028.appspot.com",
          messagingSenderId: "70719324027",
          appId: "1:70719324027:web:a6922a85836c1cbaa847de",
          measurementId: "G-W6FP61B457"
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
        ChangeNotifierProvider<ScrollProvider>(
            create: (context) => ScrollProvider()),
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
        ChangeNotifierProvider<KocaeliGalleryProvider>(
            create: (context) => KocaeliGalleryProvider()),
        ChangeNotifierProvider<EskisehirGalleryProvider>(
            create: (context) => EskisehirGalleryProvider()),
        ChangeNotifierProvider<BursaGalleryProvider>(
            create: (context) => BursaGalleryProvider()),
        ChangeNotifierProvider<AddContactProvider>(
            create: (context) => AddContactProvider()),
        ChangeNotifierProvider<AcademyLifeKocaeliProvider>(
            create: (context) => AcademyLifeKocaeliProvider()),
        ChangeNotifierProvider<AcademyLifeEskisehirProvider>(
            create: (context) => AcademyLifeEskisehirProvider()),
        ChangeNotifierProvider<AcademyLifeBursaProvider>(
            create: (context) => AcademyLifeBursaProvider()),
        ChangeNotifierProvider<DashboardPlayersProvider>(
            create: (context) => DashboardPlayersProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          iconTheme:
              IconThemeData(color: Colors.white), // Set your desired color
        )),
        debugShowCheckedModeBanner: false,
        home: PageStorage(
          bucket: bucket,
          child: const MainDashBoard(),
        ),
      ),
    );
  }
}
