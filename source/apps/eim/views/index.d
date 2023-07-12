/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.eim.views.index;

import apps.eim;
@safe:

class DEIMIndexView : DView {
  mixin(ViewThis!("EIMIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DEIMIndexView~":DEIMIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP Eim -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("EIMIndexView"));
