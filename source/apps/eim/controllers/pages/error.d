/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.eim.controllers.pages.error;

import apps.eim;
@safe:

class DErrorPageController : DPageController {
  mixin(ControllerThis!("ErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(ErrorView(this));
  }
}
mixin(ControllerCalls!("ErrorPageController"));
