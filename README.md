# marxanio
In development 2019

A series of R Shiny apps that comprise the marxanio web service.

|App           |What it is                              |Notes            |
|--------------|----------------------------------------|-----------------|
|login         |Login to marxanio                       |                 |
|marxan        |Run Marxan                              |                 |
|marzone46     |Run MarZone                             |                 |
|mxptest46     |Parameter testing                       |                 |
|upload        |Upload a dataset                        |                 |
|manage        |Manage a dataset                        |                 |
|register      |Register a new account                  |Currently broken |
|forgot_pwd    |Reset account password                  |Currently broken |
|usage         |Display server cpu, ram, and disk usage |                 |
|source46      |Libraries revision 46                   |                 |
|source48      |Libraries revision 48                   |                 |
|downloadmx    |Download Marxan software                |                 |
|downloadmz    |Download Marxan with Zones software     |                 |
|downloadzc    |Download Zonae Cogito software          |                 |
|downloadmui   |Download marxanui R package             |                 |
|downloadcplan |Download C-Plan software                |                 |
|marzone48     |Run MarZone                             |Not in use       |
|mxptest48     |Parameter testing                       |Not in use       |

Most of the apps are revision 48 and use revision 48 libraries.

The revision of the app and the libraries it uses can be identified by the "iRevision" variable in the respective app.

Some apps use revision 46 libraries (marzone46 and mxptest46). Revision 46 of these apps has fewer features but is more robust for the production environment. This is because there's bugs I haven't fixed in the improved revision 48 of these apps (marzone48 and mxptest48). Revision 48 of these apps is included so these bugs can be fixed in the future.

The apps register and forgot_pwd are currently broken because Google changed the security protocol of Gmail so that marxanio could no longer transmit email messages to users. This also broke all the download apps. I've patched the download apps so that they can still work until a new outgoing email service for marxanio can be implemented.
