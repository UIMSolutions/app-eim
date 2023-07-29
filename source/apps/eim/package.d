/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.eim;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.servers;

public import langs.javascript;

public import web.controls;

public {
  import apps.eim.controllers;
  import apps.eim.helpers;
  import apps.eim.routers;
  import apps.eim.tests;
  import apps.eim.views;
}

static this() {
  // Create app
  auto myApp = App("eimApp", "apps/eim");
  with(myApp) {
    importTranslations();
    addControllers([
      "eim.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("eim.index")),
      Route("/", HTTPMethod.GET, IndexPageController)
    );
  }

  AppRegistry.register("apps.eim", myApp);
}
