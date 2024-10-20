import 'package:dartz/dartz.dart';
import 'package:depi_hapd/Features/Authentication/data/models/register_model.dart';
import 'package:depi_hapd/Features/Authentication/data/rebo/register_rebo.dart';
import 'package:depi_hapd/core/errors/failures.dart';
import 'package:depi_hapd/core/utils/api_service.dart';
import 'package:dio/dio.dart';

class RegisterReboImpl implements RegisterRebo {
  final ApiService apiService;
  RegisterReboImpl(this.apiService);

  @override
  Future<Either<Failures, RegisterModel>> register(
      {required String arabicName,
      required String englishName,
      required String nationalID,
      required String dateOfbirth,
      required String gender,
      required String government,
      String? city,
      required String email,
      required String phone,
      required String linkedIn,
      required String password,
      String? profileImage,
      required String university,
      required String faculty,
      required String major,
      required String degree,
      required String governmentOfTraining}) async {
    try {
      // Prepare the body
      Map<String, dynamic> body = {
        'arabicName': arabicName,
        'englishName': englishName,
        'nationalID': nationalID,
        'dateOfbirth': dateOfbirth,
        'gender': gender,
        'government': government,
        'city': city,
        'email': email,
        'phone': phone,
        'linkedIn': linkedIn,
        'password': password,
        'university': university,
        'faculty': faculty,
        'major': major,
        'degree': degree,
        'governmentOfTraining': governmentOfTraining,
      };

      // Conditionally add the profile image if it's provided
      if (profileImage != null) {
        body['profileImage'] = profileImage;
      }

      // Make the API call
      var result =
          await apiService.post(endPoint: 'student/register', body: body);

      // Parse the result into a RegisterTwo model
      RegisterModel registerResponse = RegisterModel.fromJson(result);

      // Return the parsed model as a success
      return Right(registerResponse);
    } on DioException catch (e) {
      // Handle DioError specifically (like network issues or server errors)
      if (e.response != null) {
        // If there is a response from the server
        return Left(ServerFailure('Server error: ${e.response?.statusCode}'));
      } else {
        // Network-related error (e.g., no internet connection)
        return Left(NetworkFailure('Network error: ${e.message}'));
      }
    } catch (e) {
      // Catch any other type of error and return a general failure
      return Left(ValidationFailure('Unknown error: $e'));
    }
  }

  @override
  registerTwo({required String name}) {
    // TODO: implement registerTwo
    throw UnimplementedError();
  }

  // @override
  // Future<Either<Failures, RegisterTwo>> registerTwo(
  //     {required String name}) async {
  //   try {
  //     // Prepare the body
  //     Map<String, dynamic> body = {
  //       'name': name,
  //     };

  //     // Make the API call
  //     var result = await apiService.post(endPoint: 'register2', body: body);

  //     // Parse the result into a RegisterTwo model
  //     RegisterTwo registerResponse = RegisterTwo.fromJson(result);

  //     // Return the parsed model as a success
  //     return Right(registerResponse);
  //   } on DioException catch (e) {
  //     // Handle DioError specifically (like network issues or server errors)
  //     if (e.response != null) {
  //       // If there is a response from the server
  //       return Left(ServerFailure('Server error: ${e.response?.statusCode}'));
  //     } else {
  //       // Network-related error (e.g., no internet connection)
  //       return Left(NetworkFailure('Network error: ${e.message}'));
  //     }
  //   } catch (e) {
  //     // Catch any other type of error and return a general failure
  //     return Left(ValidationFailure('Unknown error: $e'));
  //   }
  // }
}
