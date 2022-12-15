import 'package:flutter/services.dart';

class PhoneFormatter extends TextInputFormatter {
  static String? cleanPhone(String? phone) => (phone != null &&
          phone.isNotEmpty)
      ? '+${phone.replaceAll(' ', '').replaceAll('-', '').replaceAll('+', '').replaceAll('(', '').replaceAll(')', '')}'
      : null;

  static String? formatPhoneString(String? phone) {
    if (phone == null) return null;

    String newValue = '';
    for (var i = 0; i < phone.length; i++) {
      String val = phone[i];

      if (i == 0) {
        newValue += '+';
      } else if (i == 7) {
        newValue += '-';
      } else if (i == 1 || i == 4) {
        newValue += i == 1 ? "(" : ')';
      }
      newValue += val;
    }
    return newValue;
  }

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String createVal = "";
    String newBus = newValue.text;
    int offsetStartSelection = 0;
    int offsetEndSelection = 0;

    for (int i = 0; i < newBus.length; i++) {
      if (!'0123456789'.contains(newBus[i])) {
        if (i < newValue.selection.baseOffset) offsetStartSelection--;
        if (i < newValue.selection.extentOffset) offsetEndSelection--;
      }
    }

    String newBus1 = '';
    for (int i = 0; i < newBus.length; i++) {
      if ('0123456789'.contains(newBus[i])) {
        newBus1 += newBus[i];
      }
    }

    newBus = newBus1;

    for (var i = 0; i < newBus.length; i++) {
      String val = newBus[i];

      if (i == 0) {
        createVal += '+';
        if (newValue.selection.baseOffset >= (i + 1)) offsetStartSelection++;
        if (newValue.selection.extentOffset >= (i + 1)) offsetEndSelection++;
      }
      if (i == 1 || i == 4 || i == 7) {
        createVal += ' ';
        if (newValue.selection.baseOffset >= (i + 1)) offsetStartSelection++;
        if (newValue.selection.extentOffset >= (i + 1)) offsetEndSelection++;
      }
      createVal += val;
    }

    return newValue.copyWith(
      text: createVal,
      selection: TextSelection(
        baseOffset: newValue.selection.baseOffset + offsetStartSelection,
        extentOffset: newValue.selection.extentOffset + offsetEndSelection,
      ),
    );
  }
}
