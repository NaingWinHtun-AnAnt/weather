import 'package:flutter/material.dart';

extension Navigation on Widget {
  navigateToNextPage(
      {required BuildContext context, required Widget nextPage}) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => nextPage));
  }
}
