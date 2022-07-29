import 'dart:collection';
import './game_components/cell.dart';

class SnakeBodyParts extends LinkedListEntry<SnakeBodyParts> {

  late Cell cell;

  SnakeBodyParts(this.cell);

  factory SnakeBodyParts.fromCell(Cell cell) {
    cell.cellState = cellState.snakeBody;
    return SnakeBodyParts(cell);
  }
}