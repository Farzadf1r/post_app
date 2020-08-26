import 'package:post_app/networking/ApiProvider.dart';
import 'dart:async';
import 'package:post_app/models/package.dart';

class PackageRepository {
  ApiProvider _provider = ApiProvider();
  String _packages_url = "packages/";

  Future<Package> createPackage(Package new_package) async {
    final response = await _provider.post(_packages_url, new_package);
    return Package.fromJsonMap(response);
  }

  Future<Package> fetchPackageData(int id) async {
    final response = await _provider.get(_packages_url + id.toString());
    return Package.fromJsonMap(response);
  }

  Future<Package> editPackage(int id, Package new_Package) async {
    final response = await _provider.put(_packages_url + id.toString(), new_Package);
    return Package.fromJsonMap(response);
  }

  Future<String> deletePackage(int id) async {
    final response = await _provider.delete(_packages_url + id.toString());
    return Package.fromJsonMap(response);
  }
}