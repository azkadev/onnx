// ignore_for_file: unused_local_variable

extension ListListStringExtensions on List {
  List<List<RegExp>> toRegexList() {
    List<List<RegExp>> regExps = [];
    for (var i = 0; i < length; i++) {
      try {
        if (this[i] is List == false) {
          continue;
        }
        List regexs = (this[i]);
        if (regexs.isEmpty) {
          continue;
        }
        List<RegExp> regExpNew = [];
        for (var index = 0; index < regexs.length; index++) {
          if (regexs[index] is String == false) {
            continue;
          }
          if (regexs[index].isEmpty) {
            continue;
          }
          regExpNew.add(RegExp((regexs[index]), caseSensitive: false));
        }
        if (regExpNew.isEmpty) {
          continue;
        }
        regExps.add(regExpNew);
      } catch (e, stack) {
        print("$e  $stack");
      }
    }
    return regExps;
  }
}
