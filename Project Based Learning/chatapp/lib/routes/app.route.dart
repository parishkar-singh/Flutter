import 'package:get/get.dart';

enum RouteView {home,auth,unknown}

extension ActionRouteView on RouteView{
  Future<void> go({bool replacement=false,bool clearAll=false}) async {
    if (clearAll){
      return Get.offAllNamed(name,predicate:(route)=>false);
    }else if(replacement)
      {
        return Get.offNamed(name);
      }
    else{
      return Get.toNamed(name);
    }
  }
}