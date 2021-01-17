part of 'pages.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  String barcodeScanRes;
  String value;

  Future scanQR() async {
    barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", false, ScanMode.DEFAULT);

    setState(() {
      value = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Container(
          margin: EdgeInsets.only(bottom: 50),
          width: double.infinity,
          height: 60,
          color: Colors.indigo[900],
          child: Center(
            child: Text(
              "ACTIVITY",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        // Content
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height - 400,
          margin: EdgeInsets.symmetric(horizontal: 40),
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // List Data
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "21112992938382",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            "11:17",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(MdiIcons.checkCircleOutline)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "21112992938382",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            "11:17",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(MdiIcons.checkCircleOutline)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Scan :" + value,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            "11:17",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(MdiIcons.checkCircleOutline)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 250,
          height: 45,
          margin: EdgeInsets.only(top: 20),
          child: RaisedButton(
            onPressed: () {
              scanQR();
            },
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: Colors.indigo[900],
            child: Text(
              "Tap For Scan QR Code",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}
