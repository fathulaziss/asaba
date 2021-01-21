part of 'pages.dart';

class InformationPage extends StatelessWidget {
  final Information information;

  InformationPage(this.information);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return null;
      },
      child: ListView(
        children: [
          // Header
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.indigo[900],
            child: Center(
              child: Text(
                "INFORMATION",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          // Content
          Column(
            children: mockInformation
                .map(
                  (e) => Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        top: 15, left: 15, right: 15, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.title,
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                e.description,
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 5),
                                        child: Icon(
                                          MdiIcons.timelapse,
                                          size: 14,
                                        ),
                                      ),
                                      Text(
                                        e.dateTime.toString(),
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "By " + e.admin,
                                    style: GoogleFonts.poppins(
                                        color: Colors.blue[400],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          SizedBox(
            height: 68,
          )
        ],
      ),
    );
  }
}
