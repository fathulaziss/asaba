part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "2C1F63".toColor(),
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              color: Colors.grey[300],
            ),
          ),
          SafeArea(
            child: PageView(
              children: [
                ActivityPage(),
                ProfilePage(),
                InformationPage(),
                HistoryPage(),
                DashboardPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
