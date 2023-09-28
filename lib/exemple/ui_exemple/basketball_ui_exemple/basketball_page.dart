import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/exemple/ui_exemple/basketball_ui_exemple/widgets/match_list_header_widget.dart';
import 'package:hotels/exemple/ui_exemple/basketball_ui_exemple/widgets/match_widget.dart';

class PageBasketBall extends StatelessWidget {
  const PageBasketBall({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Text(
          "Match of the day",
          style: GoogleFonts.lato(),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              MatchListHeaderWidget(
                dateString: "Lundi 14 septembre 2022",
              ),
              MatchWidget(),
              MatchWidget(),
              MatchWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
