import 'package:chess_flutter/components/square.dart';
import 'package:chess_flutter/helper/helper_methods.dart';
import 'package:chess_flutter/values/colors.dart';
import 'package:flutter/material.dart';
import 'components/piece.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  // A 2-D list representing the chessboard,
  //with each position possibly containing a chess piece

  late List<List<ChessPiece?>> board;

  @override
  void initState() {
    super.initState();
    _initializeBoard();
  }

  //INITIALIZE BOARD

  void _initializeBoard() {
    //initialize the board with nulls, meaning no pieces in those positions
    List<List<ChessPiece?>> newBoard = List.generate
  }

  //Create a chess piece
  ChessPiece mypawn = ChessPiece(
    type: ChessPieceType.pawn,
    isWhite: false,
    imagePath: 'images/pawn.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: GridView.builder(
        itemCount: 8 * 8,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
        itemBuilder: (context, index) {
          return Square(
            isWhite: isWhite(index),
            piece: mypawn,
          );
        },
      ),
    );
  }
}
