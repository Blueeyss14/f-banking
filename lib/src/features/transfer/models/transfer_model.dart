class TransferModel {
  String image;
  String number, name;

  TransferModel(this.image, this.number, this.name);

  static List<TransferModel> itemData() {
    List<Map<String, dynamic>> datas = [
      {
        "image": "assets/img/fbanking.png",
        "number": "1023848",
        "name": "Josephine Batu Akik",
      },
      {
        "image": "assets/img/fbanking.png",
        "number": "1023772",
        "name": "Nazwa Cukurukuk",
      },
      {
        "image": "assets/img/fbanking.png",
        "number": "1023251",
        "name": "Aseli Slurd",
      },
      {
        "image": "assets/img/fbanking.png",
        "number": "1023631",
        "name": "Cynthia Yapping",
      },
      {
        "image": "assets/img/fbanking.png",
        "number": "1023743",
        "name": "Mas Bakso Bakar",
      },
    ];
    return datas
        .map(
          (data) => TransferModel(data["image"], data["number"], data["name"]),
        )
        .toList();
  }
}
