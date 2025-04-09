class ItemModel {
  String image;

  ItemModel(this.image);

  static List<ItemModel> itemData() {
    List<Map<String, dynamic>> datas = [
      {"icon": "assets/img/transfer.png"},
      {"icon": "assets/img/ewallet.png"},
      {"icon": "assets/img/atm.png"},
      {"icon": "assets/img/top-up.png"},
    ];
    return datas.map((data) => ItemModel(data["icon"])).toList();
  }
}
