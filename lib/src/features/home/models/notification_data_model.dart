class NotificationDataModel {
  String image;
  String ewallet, description;

  NotificationDataModel(this.image, this.ewallet, this.description);

  static List<NotificationDataModel> notificationData() {
    List<Map<String, dynamic>> datas = [
      {
        "image": "assets/img/fbanking.png",
        "ewallet": "F-Wallet",
        "description":
            "Your account security matters. Make sure to change your PIN regularly.",
      },
      {
        "image": "assets/img/fbanking.png",
        "ewallet": "F-Wallet",
        "description":
            "Something new is here! Enjoy our new auto-transfer feature now.",
      },
    ];

    return datas
        .map(
          (data) => NotificationDataModel(
            data["image"],
            data["ewallet"],
            data["description"],
          ),
        )
        .toList();
  }
}
