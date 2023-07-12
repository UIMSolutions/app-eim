/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.eim.controllers.pages.index;

import apps.eim;
@safe:

class DEIMIndexPageController : DAPPPageController {
  mixin(ControllerThis!("EIMIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(EIMIndexView(this));
  }
}
mixin(ControllerCalls!("EIMIndexPageController"));
