part of 'pages.dart';

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return null;
      },
      child: BlocBuilder<InformationCubit, InformationState>(
        builder: (_, state) => (state is InformationLoaded)
            ? ListView(
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
                    children: state.informations
                        .map((e) => InformationCard(e))
                        .toList(),
                  ),
                  SizedBox(
                    height: 68,
                  )
                ],
              )
            : Text("Masih Loading"),
      ),
    );
  }
}
