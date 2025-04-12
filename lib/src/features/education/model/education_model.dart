class EducationModel {
  String image;
  String university;

  EducationModel(this.image, this.university);

  static List<EducationModel> itemData() {
    List<Map<String, dynamic>> datas = [
      {"image": "assets/img/telu.png", "university": "Telkom University"},
      {"image": "assets/img/tokyo.png", "university": "University of Tokyo"},
      {"image": "assets/img/oxford.png", "university": "University of Oxford"},
      {"image": "assets/img/ugm.png", "university": "Universitas Gadjah Mada"},
      {"image": "assets/img/kyoto.png", "university": "Kyoto University"},
      {
        "image": "assets/img/itb.png",
        "university": "Institut Teknologi Bandung",
      },
      {
        "image": "assets/img/mit.png",
        "university": "Massachusetts Institute of Technology",
      },
      {"image": "assets/img/harvard.png", "university": "Harvard University"},
      {"image": "assets/img/osaka.png", "university": "Osaka University"},
      {"image": "assets/img/ui.png", "university": "Universitas Indonesia"},
      {"image": "assets/img/tohoku.png", "university": "Tohoku University"},
      {"image": "assets/img/hokkaido.png", "university": "Hokkaido University"},
      {"image": "assets/img/binus.png", "university": "Binus University"},
    ];
    return datas
        .map((data) => EducationModel(data["image"], data["university"]))
        .toList();
  }
}
