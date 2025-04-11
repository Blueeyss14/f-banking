class EwalletModel {
  String image;
  String title;

  EwalletModel(this.image, this.title);

  static List<EwalletModel> imageData() {
    List<Map<String, dynamic>> datas = [
      {"image": "assets/img/shopeepay.png", "title": "ShopeePay"},
      {"image": "assets/img/paypal.png", "title": "PayPal"},
      {"image": "assets/img/gopay.png", "title": "Gopay"},
      {"image": "assets/img/ovo.png", "title": "Ovo"},
      {"image": "assets/img/dana.png", "title": "Dana"},
      {"image": "assets/img/linkAja.png", "title": "Link Aja"},
    ];

    return datas
        .map((data) => EwalletModel(data["image"], data["title"]))
        .toList();
  }
}
