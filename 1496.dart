class Solution {
  (int x, int y) moveToNewCoord((int x, int y) oldCoord, String direction) {
    return switch (direction) {
      'N' => (oldCoord.$1, oldCoord.$2 + 1),
      'S' => (oldCoord.$1, oldCoord.$2 - 1),
      'W' => (oldCoord.$1 + 1, oldCoord.$2),
      'E' => (oldCoord.$1 - 1, oldCoord.$2),
      _ => (oldCoord.$1, oldCoord.$2),
    };
  }

  bool isPathCrossing(String path) {
    var allCoord = <(int x, int y)>[(0, 0)];
    var cross = false;
    for (var i = 0; i < path.length; i++) {
      final lastCoord = allCoord.isNotEmpty ? allCoord.last : (0, 0);
      final newCoord = moveToNewCoord(lastCoord, path.substring(i, i + 1));
      print(allCoord);
      if (allCoord.contains(newCoord)) {
        cross = true;
        break;
      }
      allCoord.add(newCoord);
    }
    return cross;
  }
}

void main() {
  final s = Solution();
  print(s.isPathCrossing('NESWW'));
}
