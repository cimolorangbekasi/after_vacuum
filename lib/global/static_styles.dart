import 'package:flutter/material.dart';

class StaticStyles {
  static const Color putih = Colors.white;
  static const Color hitam = Colors.black;
  //
  static const TextStyle putih14normal =
      TextStyle(fontSize: 14, color: StaticStyles.putih);
  //
  static const TextStyle hitam12normal =
      TextStyle(fontSize: 12, color: StaticStyles.hitam);

  //

  static ButtonStyle buttonLight() {
    return ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(Colors.white),
      overlayColor:
          const MaterialStatePropertyAll(Color.fromARGB(160, 0, 0, 0)),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return states.contains(MaterialState.pressed)
              ? Colors.white
              : Colors.black;
        },
      ),
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        // side: const BorderSide(color: Colors.white54, width: 0.5),
      )),
      elevation: const MaterialStatePropertyAll(0.5),
    );
  }

  static ButtonStyle buttonDark() {
    return ButtonStyle(
      backgroundColor:
          const MaterialStatePropertyAll(Color.fromARGB(160, 0, 0, 0)),
      overlayColor: const MaterialStatePropertyAll(Colors.white),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return states.contains(MaterialState.pressed)
              ? Colors.black
              : Colors.white;
        },
      ),
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        // side: const BorderSide(color: Colors.black45, width: 0.5),
      )),
      elevation: const MaterialStatePropertyAll(0.5),
    );
  }
}
