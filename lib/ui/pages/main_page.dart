part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

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
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              children: [
                DashboardPage(),
                HistoryPage(),
                ActivityPage(),
                InformationPage(),
                ProfilePage(),
              ],
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavBar(
                selectedIndex: selectedPage,
                onTap: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                  pageController.jumpToPage(selectedPage);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
