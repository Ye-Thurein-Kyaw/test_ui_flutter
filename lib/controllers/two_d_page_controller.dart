import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum QuickType {
  patThee,
  htateSee,
  noutPate,
  apuu,
  power,
  netKet,
  nyiKo,
  ee,
  oo,
  oe,
  eo,
}

class TwoDPageController extends GetxController {
  static TwoDPageController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
    _selectedTime.value = Get.arguments;
  }

  final List<String> _numList = [
    for (var i = 0; i < 100; i++) i.toString().padLeft(2, "0")
  ];
  final List<String> _shortNumList = [
    for (var i = 0; i < 10; i++) i.toString()
  ];

  // final List<SelectedNumsModel> _betNums = [];

  final RxList<String> _selectedNumList = <String>[].obs;
  final RxString _selectedTime = '09:30 AM'.obs;
  final TextEditingController _textController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> _timeList = [
    '09:30 AM',
    '12:00 PM',
    '02:00 PM',
    '04:30 PM'
  ];

  List<String> get numList => _numList;
  List<String> get shortNumList => _shortNumList;
  List<String> get selectedNumList => _selectedNumList;
  RxString get selectedTime => _selectedTime;
  TextEditingController get textController => _textController;
  GlobalKey<FormState> get formKey => _formKey;
  List<String> get timeList => _timeList;

  // void htoe() {
  //   _betNums.clear();
  //   if (!_formKey.currentState!.validate()) {
  //     return;
  //   }
  //   if (_selectedNumList.isEmpty) {
  //     Get.snackbar(
  //       "ဝမ်းနည်းပါတယ်",
  //       "ရွေးချယ်ထားသော ဂဏန်းမရှိပါ",
  //       margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 8),
  //       colorText: Colors.redAccent,
  //       snackPosition: SnackPosition.BOTTOM,
  //     );
  //     return;
  //   }

  //   for (var i = 0; i < _selectedNumList.length; i++) {
  //     _betNums.add(SelectedNumsModel(
  //         num: _selectedNumList[i], amount: int.parse(textController.text)));
  //   }

  //   Get.toNamed(BetDetailPage.route, arguments: _betNums);
  // }

  // void makeRound() {
  //   if (_selectedNumList.isEmpty) {
  //     Get.snackbar(
  //       "ဝမ်းနည်းပါတယ်",
  //       "ရွေးချယ်ထားသော ဂဏန်းမရှိပါ",
  //       margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 8),
  //       colorText: Colors.redAccent,
  //       snackPosition: SnackPosition.BOTTOM,
  //     );
  //     return;
  //   }
  //   for (var i = 0; i < _selectedNumList.length; i++) {
  //     List split = _selectedNumList[i].split("");
  //     String reversed = split.reversed.join();

  //     if (_checkIsApuu(_selectedNumList[i])) {
  //       continue;
  //     } else if (_selectedNumList.contains(reversed)) {
  //       continue;
  //     } else {
  //       _selectedNumList.add(reversed);
  //     }
  //   }
  //   Get.snackbar(
  //     "အောင်မြင်ပါသည်",
  //     "ပတ်လည်ဂဏန်းများရွေးလိုက်ပါပြီ",
  //     margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 8),
  //     colorText: Get.theme.primaryColor,
  //     snackPosition: SnackPosition.BOTTOM,
  //   );
  // }

  // void clearAllSelected() {
  //   _selectedNumList.clear();
  // }

  // void selectNum(String num) {
  //   if (!_selectedNumList.contains(num)) {
  //     _selectedNumList.add(num);
  //   } else {
  //     _selectedNumList.remove(num);
  //   }
  // }

  // void quickSelect(String num, QuickType quickType) {
  //   if (quickType == QuickType.patThee) {
  //     var tempList = _numList.where((element) => element.contains(num));

  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => element.contains(num));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => element.contains(num));
  //     }
  //   }

  //   if (quickType == QuickType.htateSee) {
  //     var tempList = _numList.where((element) => element.startsWith(num));

  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => element.startsWith(num));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => element.startsWith(num));
  //     }
  //   }

  //   if (quickType == QuickType.noutPate) {
  //     var tempList = _numList.where((element) => element.endsWith(num));
  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => element.endsWith(num));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => element.endsWith(num));
  //     }
  //   }

  //   if (quickType == QuickType.apuu) {
  //     var tempList = _numList.where((element) => _checkIsApuu(element));
  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => _checkIsApuu(element));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => _checkIsApuu(element));
  //     }
  //   }

  //   if (quickType == QuickType.nyiKo) {
  //     var tempList = _numList.where((element) => _checkIsNyiKo(element));
  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => _checkIsNyiKo(element));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => _checkIsNyiKo(element));
  //     }
  //   }

  //   if (quickType == QuickType.power) {
  //     var tempList = _numList.where((element) => _checkIsPower(element));
  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => _checkIsPower(element));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => _checkIsPower(element));
  //     }
  //   }

  //   if (quickType == QuickType.netKet) {
  //     var tempList = ['07', '18', '24', '35', '69'];
  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => _checkIsNetket(element));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => _checkIsNetket(element));
  //     }
  //   }

  //   if (quickType == QuickType.ee) {
  //     var tempList = _numList.where((element) => _checkIsEE(element));
  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => _checkIsEE(element));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => _checkIsEE(element));
  //     }
  //   }

  //   if (quickType == QuickType.oo) {
  //     var tempList = _numList.where((element) => _checkIsOO(element));
  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => _checkIsOO(element));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => _checkIsOO(element));
  //     }
  //   }

  //   if (quickType == QuickType.oe) {
  //     var tempList = _numList.where((element) => _checkIsOE(element));
  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => _checkIsOE(element));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => _checkIsOE(element));
  //     }
  //   }

  //   if (quickType == QuickType.eo) {
  //     var tempList = _numList.where((element) => _checkIsEO(element));
  //     if (!isSelectedQuick(num, quickType).value) {
  //       _selectedNumList.removeWhere((element) => _checkIsEO(element));
  //       _selectedNumList.addAll(tempList);
  //     } else {
  //       _selectedNumList.removeWhere((element) => _checkIsEO(element));
  //     }
  //   }
  // }

  // RxBool isSelectedQuick(String num, QuickType quickType) {
  //   List tempList = [];
  //   if (quickType == QuickType.patThee) {
  //     tempList = _numList.where((element) => element.contains(num)).toList();
  //   }

  //   if (quickType == QuickType.htateSee) {
  //     tempList = _numList.where((element) => element.startsWith(num)).toList();
  //   }

  //   if (quickType == QuickType.noutPate) {
  //     tempList = _numList.where((element) => element.endsWith(num)).toList();
  //   }

  //   if (quickType == QuickType.apuu) {
  //     tempList = _numList.where((element) => _checkIsApuu(element)).toList();
  //   }

  //   if (quickType == QuickType.nyiKo) {
  //     tempList = _numList.where((element) => _checkIsNyiKo(element)).toList();
  //   }

  //   if (quickType == QuickType.power) {
  //     tempList = _numList.where((element) => _checkIsPower(element)).toList();
  //   }

  //   if (quickType == QuickType.netKet) {
  //     tempList = _numList.where((element) => _checkIsNetket(element)).toList();
  //   }

  //   if (quickType == QuickType.ee) {
  //     tempList = _numList.where((element) => _checkIsEE(element)).toList();
  //   }

  //   if (quickType == QuickType.oo) {
  //     tempList = _numList.where((element) => _checkIsOO(element)).toList();
  //   }

  //   if (quickType == QuickType.oe) {
  //     tempList = _numList.where((element) => _checkIsOE(element)).toList();
  //   }

  //   if (quickType == QuickType.eo) {
  //     tempList = _numList.where((element) => _checkIsEO(element)).toList();
  //   }

  //   if (tempList.isNotEmpty &&
  //       tempList.every((element) => _selectedNumList.contains(element))) {
  //     return true.obs;
  //   } else {
  //     return false.obs;
  //   }
  // }

  // RxBool isSelected(String num) {
  //   if (_selectedNumList.contains(num)) {
  //     return true.obs;
  //   } else {
  //     return false.obs;
  //   }
  // }

  // bool _checkIsPower(String element) {
  //   return int.parse(element.split('').first) + 5 ==
  //       int.parse(element.split('').last);
  // }

  // bool _checkIsApuu(String element) {
  //   return element.split('').first == element.split('').last;
  // }

  // bool _checkIsNyiKo(String element) {
  //   return int.parse(element.split("").first) ==
  //           int.parse(element.split("").last) + 1 ||
  //       int.parse(element.split("").first) + 1 ==
  //           int.parse(element.split("").last);
  // }

  // bool _checkIsNetket(String element) {
  //   return element == '07' ||
  //       element == '18' ||
  //       element == '24' ||
  //       element == '35' ||
  //       element == '69';
  // }

  // bool _checkIsEE(String element) {
  //   return int.parse(element.split('').first) % 2 == 0 &&
  //       int.parse(element.split('').last) % 2 == 0;
  // }

  // bool _checkIsOO(String element) {
  //   return int.parse(element.split('').first) % 2 != 0 &&
  //       int.parse(element.split('').last) % 2 != 0;
  // }

  // bool _checkIsOE(String element) {
  //   return int.parse(element.split('').first) % 2 != 0 &&
  //       int.parse(element.split('').last) % 2 == 0;
  // }

  // bool _checkIsEO(String element) {
  //   return int.parse(element.split('').first) % 2 == 0 &&
  //       int.parse(element.split('').last) % 2 != 0;
  // }

  void updateSelectedTime(String newTime) {
    _selectedTime.value = newTime; // Update selectedTime with newTime value
  }
}
