class StockModel {
  final String tradeCode;
  final String volume;
  final String high;
  final String low;
  final int index;

  StockModel({required this.index, required this.tradeCode,
    required this.volume, required this.high, required this.low});
}
