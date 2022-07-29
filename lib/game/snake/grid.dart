import 'package:flame/components.dart';
import 'package:snake_game/game/game_components/cell.dart';

class Grid {
  static Cell border = Cell(Vector2(-1, -1), -1);

  late final int _rows;
  late final int _columns;

  final List<List<Cell>> _cells = List.empty(growable: true);

  List<List<Cell>> get cells => _cells;

  Grid(this._rows, this._columns, int cellSize) {
    _cells = List.generate(
        _rows,
            (row) =>
            List.generate(
                _columns,
                    (column) =>
                    Cell(Vector2(row.toDouble(), column.toDouble()), cellSize),
                growable: false),
        growable: false);
  }
  Cell findCell(int column, int row) {
    try {
      return _cells[row][column];
    }on RangeError {
      return border;
    }
  }
}

void generateSnacks() {

}