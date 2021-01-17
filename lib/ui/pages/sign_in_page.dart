part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "2C1F63".toColor(),
      body: Stack(
        children: [
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          SafeArea(
            child: Column(
              children: [
                // Header
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 30),
                  color: Colors.indigo[900],
                  child: Center(
                    child: Text(
                      "AUTHENTICATION",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                // LOGO
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/logo.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Text("Please input your credentials")
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                // LOGIN FIELD
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[350]),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(
                        MdiIcons.email,
                        color: Colors.black,
                      ),
                      hintText: "Email",
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                    ),
                    controller: emailController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[350]),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(
                        MdiIcons.lock,
                        color: Colors.black,
                      ),
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                    ),
                    controller: passwordController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: RaisedButton(
                    onPressed: () {},
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: Colors.indigo[900],
                    child: Text(
                      "LOGIN",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
