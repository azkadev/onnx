// ignore_for_file: empty_catches

extension MapExtensionTg on Map {
  void removeNullVoid() {
    forEach((key, value) {
      try {
        if (value == null) {
          remove(key);
        }
        if (value is Map) {
          value.removeNullVoid();
        }
      } catch (e) {}
    });
    return;
  }

  void updateForce({
    required Map data,
  }) {
    data.forEach((key, value) {
      try {
        // jika ada value
        if (this[key] == null) {
          this[key] = value;
        } else if (value is Map && this[key] is Map) {
          (this[key] as Map).updateForce(data: value);
        } else if (key is List && this[key] is List) {
        } else {
          this[key] = value;
        }
      } catch (e) {}
    });
    return;
  }

  void updateVoid({
    required Map data,
  }) {
    data.forEach((key, value) {
      try {
        // jika tidak ada key
        if (!containsKey(key)) {
          this[key] = value;
          return;
        }

        // jika ada value
        if (this[key] == null) {
          this[key] = value;
        } else if (value is Map && this[key] is Map) {
          (this[key] as Map).updateVoid(data: value);
        } else if (key is List && this[key] is List) {}
      } catch (e) {}
    });
    return;
  }
}
