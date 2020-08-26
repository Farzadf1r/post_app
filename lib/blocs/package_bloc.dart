import 'dart:async';
import 'package:post_app/networking/Response.dart';
import 'package:post_app/repository/package_repository.dart';
import 'package:post_app/models/package.dart';

class PackageBloc {
  PackageRepository _packageRepository;
  StreamController _packageDataController;
  bool _isStreaming;

  StreamSink<Response<Package>> get packageDataSink =>
      _packageDataController.sink;

  Stream<Response<Package>> get chuckDataStream =>
      _packageDataController.stream;

  PackageBloc(int id) {
    _packageDataController = StreamController<Response<Package>>();
    _packageRepository = PackageRepository();
    _isStreaming = true;
    fetchPackage(id);
  }

  fetchPackage(int id) async {
    packageDataSink.add(Response.loading('Loading package...'));
    try {
      Package package = await _packageRepository.fetchPackageData(id);
      if (_isStreaming) packageDataSink.add(Response.completed(package));
    } catch (e) {
      if (_isStreaming) packageDataSink.add(Response.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _isStreaming = false;
    _packageDataController?.close();
  }
}