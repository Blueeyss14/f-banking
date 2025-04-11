class EwalletDataModel {
  String image;
  String ewallet, name;

  EwalletDataModel(this.image, this.ewallet, this.name);

  static List<EwalletDataModel> itemData() {
    List<Map<String, dynamic>> datas = [
      {
        "image": "assets/img/shopeepay.png",
        "ewallet": "ShopeePay",
        "name": "Ayam Mas Romo",
      },
      {
        "image": "assets/img/gopay.png",
        "ewallet": "Gopay",
        "name": "Kiara Store",
      },
      {
        "image": "assets/img/paypal.png",
        "ewallet": "PayPal",
        "name": "Clients #2",
      },
      {
        "image": "assets/img/shopeepay.png",
        "ewallet": "ShopeePay",
        "name": "Kebab Pak Kris",
      },
    ];
    return datas
        .map(
          (data) =>
              EwalletDataModel(data["image"], data["ewallet"], data["name"]),
        )
        .toList();
  }
}
