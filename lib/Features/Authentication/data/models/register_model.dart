class RegisterModel {
  final String arabicName;
  final String englishName;
  final String nationalID;
  final String dateOfbirth;
  final String gender;
  final String government;
  final String? city;
  final String email;
  final String phone;
  final String linkedIn;
  final String password;
  final String? profileImage; // Optional field
  final String university;
  final String faculty;
  final String major;
  final String degree;
  final String governmentOfTraining;

  RegisterModel({
    required this.arabicName,
    required this.englishName,
    required this.nationalID,
    required this.dateOfbirth,
    required this.gender,
    required this.government,
    this.city,
    required this.email,
    required this.phone,
    required this.linkedIn,
    required this.password,
    this.profileImage, // No 'required' since it's optional
    required this.university,
    required this.faculty,
    required this.major,
    required this.degree,
    required this.governmentOfTraining,
  });

  factory RegisterModel.fromJson(jsonData) {
    return RegisterModel(
      arabicName: jsonData['arabicName'],
      englishName: jsonData['englishName'],
      nationalID: jsonData['nationalID'],
      dateOfbirth: jsonData['dateOfbirth'],
      gender: jsonData['gender'],
      government: jsonData['government'],
      city: jsonData['city'],
      email: jsonData['email'],
      password: jsonData['password'],
      phone: jsonData['phone'],
      linkedIn: jsonData['linkedIn'],
      // profileImage: jsonData['profileImage'], // Can be null
      university: jsonData['university'],
      faculty: jsonData['faculty'],
      major: jsonData['major'],
      degree: jsonData['degree'],
      governmentOfTraining: jsonData['governmentOfTraining'],
    );
  }
}
