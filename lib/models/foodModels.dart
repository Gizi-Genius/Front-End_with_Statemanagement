class Food {
  final String? makananId;
  final String? namaMakanan;
  final String? jenisMakanan;
  final double? kalori;
  final double? protein;
  final double? karbohidrat;
  final double? lemak;
  final double? takaran;

  Food({
    this.makananId,
    this.namaMakanan,
    this.jenisMakanan,
    this.kalori,
    this.protein,
    this.karbohidrat,
    this.lemak,
    this.takaran,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      makananId: json['makanan_id'],
      namaMakanan: json['nama_makanan'],
      jenisMakanan: json['jenis_makanan'],
      kalori: json['kalori'].toDouble(),
      protein: json['protein'].toDouble(),
      karbohidrat: json['karbohidrat'].toDouble(),
      lemak: json['lemak'].toDouble(),
      takaran: json['takaran'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['makanan_id'] = this.makananId;
    data['nama_makanan'] = this.namaMakanan;
    data['jenis_makanan'] = this.jenisMakanan;
    data['kalori'] = this.kalori;
    data['protein'] = this.protein;
    data['karbohidrat'] = this.karbohidrat;
    data['lemak'] = this.lemak;
    data['takaran'] = this.takaran;
    return data;
  }
}
