import 'package:get/get.dart';
import 'package:mavi/screens/dashboard.dart';
import 'package:mavi/screens/view_clients.dart';

import '../screens/bottom_bar.dart';
import '../screens/home_sceen.dart';
import '../screens/scans_screen.dart';
import '../screens/view_all_cards.dart';

class RoutesClass {
  static String home = '/';
  static String dashboard = '/dashboard';
  static String clients = '/clients';
  static String bottomBar = '/bottom_bar';
  static String scans = '/scans';
  static String viewAllCards = '/view_all_cards';

  static String getHomeRoute()=> home;
  static String getDashboardRoute()=> dashboard;
  static String getClientsRoute()=> clients;
  static String getBottomBarRoute()=> bottomBar;
  static String getScansRoute()=> scans;
  static String getViewAllCardsRoute()=> viewAllCards;

  static List<GetPage> routes = [
    GetPage(name: home, page: ()=> const HomeScreen()),
    GetPage(name: dashboard, page: ()=> const DashboardScreen()),
    GetPage(name: clients, page: ()=> const ViewClients()),
    GetPage(name: bottomBar, page: ()=> const BottomBar()),
    GetPage(name: scans, page: ()=> const ScansScreen()),
    GetPage(name: viewAllCards, page: ()=> const ViewAllCards()),
  ];
}