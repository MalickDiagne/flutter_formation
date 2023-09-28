import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../match_detail/match_detail_page.dart';

class MatchListHeaderWidget extends StatelessWidget {
  final String dateString;
  const MatchListHeaderWidget({super.key, required this.dateString});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            dateString,
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Icon(
          Icons.filter_1,
          color: Colors.white,
        )
      ],
    );
  }
}
