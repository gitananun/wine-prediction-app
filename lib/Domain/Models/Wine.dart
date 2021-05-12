class Wine {
  final double fixedAcidity;
  final double volatileAcidity;
  final double citricAcid;
  final double residualSugar;
  final double chlorides;
  final double freeSulfurDioxide;
  final double totalSulfurDioxide;
  final double density;
  final double ph;
  final double sulphates;
  final double alcohol;

  Wine({
    required this.fixedAcidity,
    required this.volatileAcidity,
    required this.citricAcid,
    required this.residualSugar,
    required this.chlorides,
    required this.freeSulfurDioxide,
    required this.totalSulfurDioxide,
    required this.density,
    required this.ph,
    required this.sulphates,
    required this.alcohol,
  });

  factory Wine.fromJson(Map<String, dynamic> json) {
    return Wine(
      fixedAcidity: json['fixed_acidity'],
      volatileAcidity: json['volatile_acidity'],
      citricAcid: json['citric_acid'],
      residualSugar: json['residual_sugar'],
      chlorides: json['chlorides'],
      freeSulfurDioxide: json['free_sulfur_dioxide'],
      totalSulfurDioxide: json['total_sulfur_dioxide'],
      density: json['density'],
      ph: json['ph'],
      sulphates: json['sulphates'],
      alcohol: json['alcohol'],
    );
  }

  Map<String, Object> toJson(Wine wine) {
    return {
      'fixed_acidity': wine.fixedAcidity,
      'volatile_acidity': wine.volatileAcidity,
      'citric_acid': wine.citricAcid,
      'residual_sugar': wine.residualSugar,
      'chlorides': wine.chlorides,
      'free_sulfur_dioxide': wine.freeSulfurDioxide,
      'total_sulfur_dioxide': wine.totalSulfurDioxide,
      'density': wine.density,
      'ph': wine.ph,
      'sulphates': wine.sulphates,
      'alcohol': wine.alcohol,
    };
  }
}
