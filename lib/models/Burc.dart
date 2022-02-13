class Burc {
  final String _burcName;
  final String _burcDate;
  final String _burcDetail;
  final String _burcSmallImage;
  final String _burcLargeImage;

  Burc(this._burcName, this._burcDate, this._burcDetail, this._burcSmallImage,
      this._burcLargeImage);


  String get burcName => _burcName;

  String get burcDate => _burcDate;

  String get burcDetail => _burcDetail;

  String get burcSmallImage => _burcSmallImage;

  String get burcLargeImage => _burcLargeImage;

  @override
  String toString() {
    // TODO: implement toString
    return '$_burcName - $_burcLargeImage';
  }
}
