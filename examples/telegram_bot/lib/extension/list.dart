extension ListChunkExtensions on List {
  List<T> chunk<T>(int chunkSize) {
    List<T> chunks = [];
    int len = length;
    for (var i = 0; i < len; i += chunkSize) {
      int size = i + chunkSize;
      chunks.add(sublist(i, size > len ? len : size) as T);
    }
    return chunks;
  }
}
