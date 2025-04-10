class CreditCard {
  String image;

  CreditCard(this.image);

  static List<CreditCard> imageData() {
    List<Map<String, dynamic>> datas = [
      {"icon": "assets/img/cc-front.png"},
      {"icon": "assets/img/cc-back.png"},
    ];
    return datas.map((data) => CreditCard(data["icon"])).toList();
  }
}
