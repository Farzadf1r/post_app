import 'package:post_app/networking/ApiProvider.dart';
import 'dart:async';
import 'package:post_app/models/trip.dart';

class TripRepository {
  ApiProvider _provider = ApiProvider();
  String _trips_url = "trips/";

  Future<Trip> createTrip(Trip new_trip) async {
    final response = await _provider.post(_trips_url, new_trip);
    return Trip.fromJsonMap(response);
  }

  Future<Trip> fetchTripData(int id) async {
    final response = await _provider.get(_trips_url + id.toString());
    return Trip.fromJsonMap(response);
  }

  Future<Trip> editTrip(int id, Trip new_trip) async {
    final response = await _provider.put(_trips_url + id.toString(), new_trip);
    return Trip.fromJsonMap(response);
  }

  Future<String> deleteTrip(int id) async {
    final response = await _provider.delete(_trips_url + id.toString());
    return response;
  }
}