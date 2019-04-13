# marxanio
In development 2019

A series of R Shiny apps that comprise the marxanio web service.

|App           |What it is                                 |
|--------------|-------------------------------------------|
|login         |Login to marxanio                          |
|marxan        |Run Marxan                                 |
|marzone46     |Run MarZone                                |
|mxptest46     |Parameter testing                          |
|upload        |Upload a dataset                           |
|manage        |Manage a dataset                           |
|register      |Register a new account                     |
|forgot_pwd    |Reset account password                     |
|source46      |Libraries revision 46                      |
|source48      |Libraries revision 48                      |
|downloadmx    |Download Marxan software                   |
|downloadmz    |Download Marxan with Zones software        |
|downloadzc    |Download Zonae Cogito software             |
|downloadmui   |Download marxanui R package                |
|downloadcplan |Download C-Plan software                   |
|marzone48     |Run MarZone (revision 48 not in use)       |
|mxptest48     |Parameter testing (revision 48 not in use) |

Most of the apps are revision 48 and use revision 48 libraries.

The revision of the app and the libraries it uses can be identified by the "iRevision" variable in the respective app.

Some apps use revision 46 libraries (marzone46 and mxptest46). Revision 46 of these apps has fewer features but is more robust for the production environment. This is because there's bugs I haven't fixed in the improved revision 48 of these apps. Revision 48 of these apps is included so these bugs can be fixed in the future.

