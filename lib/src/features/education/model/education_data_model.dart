class EducationDataModel {
  String image;
  String status, university;

  EducationDataModel(this.image, this.status, this.university);

  static List<EducationDataModel> eduData() {
    List<Map<String, dynamic>> datas = [
      {
        "image": "assets/img/telu.png",
        "status": "Semester 1",
        "university": "Telkom University",
      },
      {
        "image": "assets/img/telu.png",
        "status": "Semester 2",
        "university": "Telkom University",
      },
      {
        "image": "assets/img/telu.png",
        "status": "Semester 3",
        "university": "Telkom University",
      },
      {
        "image": "assets/img/telu.png",
        "status": "Semester 4",
        "university": "Telkom University",
      },
    ];
    return datas
        .map(
          (data) => EducationDataModel(
            data["image"],
            data["status"],
            data["university"],
          ),
        )
        .toList();
  }
}
