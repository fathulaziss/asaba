part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Container(
          width: double.infinity,
          height: 60,
          color: Colors.indigo[900],
          child: Center(
            child: Text(
              "PROFILE",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        // Content
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/user_pic.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fatichul Iksan",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 2),
                            child: Icon(
                              Icons.work,
                              color: Colors.grey,
                              size: 18,
                            ),
                          ),
                          Text(
                            "Senior RnD",
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(right: 24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: "E8E8E8".toColor(),
                        ),
                        child: Icon(
                          Icons.lock_outline,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Change Password",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: "FAFAFC".toColor(),
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(right: 24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: "E8E8E8".toColor(),
                        ),
                        child: Icon(
                          Icons.info,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "About",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: "FAFAFC".toColor(),
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(right: 24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: "E8E8E8".toColor(),
                        ),
                        child: Icon(
                          MdiIcons.powerOff,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Sign Out",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: "FAFAFC".toColor(),
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
