class ItemModel {
  String image;
  String title;

  ItemModel(this.image, this.title);

  static List<ItemModel> itemData() {
    List<Map<String, dynamic>> datas = [
      {"icon": "assets/img/transfer.png", "title": "Transfer"},
      {"icon": "assets/img/ewallet.png", "title": "E-Wallet"},
      {"icon": "assets/img/atm.png", "title": "F to Bank"},
      {"icon": "assets/img/top-up.png", "title": "Top-up"},
      {"icon": "assets/img/education.png", "title": "Education"},
      {"icon": "assets/img/donation.png", "title": "Donation"},
      {"icon": "assets/img/games.png", "title": "Games"},
      {"icon": "assets/img/QR.png", "title": "QR"},
    ];
    return datas.map((data) => ItemModel(data["icon"], data["title"])).toList();
  }
}
