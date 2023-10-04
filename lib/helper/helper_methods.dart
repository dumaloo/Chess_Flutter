bool isWhite(int index) {
  int x = index ~/ 8; //this gives us the integer divison i.e. row
  int y = index % 2; // this gives us the remainder i.e. column

  bool isWhite = (x + y) % 2 == 0;

  return isWhite;
}

bool isInBoard(int row, int col) {
  return row >= 0 && row < 8 && col >= 0 && col < 8;
}
