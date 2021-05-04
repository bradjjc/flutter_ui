class Profile {
  String name;
  List<String> profileImages;
  String age;
  String location;
  String distance;
  String height;
  String bloodType;
  bool isVerifyMobile;
  String educationLevel;
  String basicOccupation;
  String description;
  String religion;
  String alcohol;
  String smoke;

  Profile(
      {this.name,
        this.profileImages,
        this.age,
        this.location,
        this.distance,
        this.height,
        this.bloodType,
        this.isVerifyMobile,
        this.educationLevel,
        this.basicOccupation,
        this.description,
        this.religion,
        this.alcohol,
        this.smoke});

  Profile.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    profileImages = json['profile_images'].cast<String>();
    age = json['age'];
    location = json['location'];
    distance = json['distance'];
    height = json['height'];
    bloodType = json['blood_type'];
    isVerifyMobile = json['is_verify_mobile'];
    educationLevel = json['education_level'];
    basicOccupation = json['basic_occupation'];
    description = json['description'];
    religion = json['religion'];
    alcohol = json['alcohol'];
    smoke = json['smoke'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['profile_images'] = this.profileImages;
    data['age'] = this.age;
    data['location'] = this.location;
    data['distance'] = this.distance;
    data['height'] = this.height;
    data['blood_type'] = this.bloodType;
    data['is_verify_mobile'] = this.isVerifyMobile;
    data['education_level'] = this.educationLevel;
    data['basic_occupation'] = this.basicOccupation;
    data['description'] = this.description;
    data['religion'] = this.religion;
    data['alcohol'] = this.alcohol;
    data['smoke'] = this.smoke;
    return data;
  }
}
