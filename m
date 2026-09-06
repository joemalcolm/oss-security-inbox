X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/06/3
Message-ID: <87bjaaceh3.fsf@gentoo.org>
Date: Sun, 06 Sep 2026 21:27:36 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Fwd: [mapserver-announce] security release available: MapServer 8.6.6
Content-Type: text/plain; charset=utf-8


-------------------- Start of forwarded message --------------------
Date: Sun, 6 Sep 2026 17:06:51 -0300
To: mapserver-announce@...ts.osgeo.org
Subject: [mapserver-announce] security release available: MapServer 8.6.6
From: Jeff McKenna via MapServer-announce <mapserver-announce@...ts.osgeo.org>

The MapServer team announces the immediate availability of security 
release of 8.6.6

This release contains a fix for 6 vulnerabilities. See the changelog for 
the list of changes ( 
https://mapserver.org/development/changelog/changelog-8-6.html#changelog-8-6-6 
).

You may also review the security advisories for this release:
   - WCS 2.0 support advisory: 
https://github.com/MapServer/MapServer/security/advisories/GHSA-6jr5-rc9c-p3cj
   - CGI/FastCGI with SMOOTHSIA advisory: 
https://github.com/MapServer/MapServer/security/advisories/GHSA-33h3-f4q2-pq5q
   - WMS Filter advisory: 
https://github.com/MapServer/MapServer/security/advisories/GHSA-5fx4-vjp9-863f
   - WMS with interpolation layers: 
https://github.com/MapServer/MapServer/security/advisories/GHSA-59gr-4vvx-5f56
   - FlatGeobuf support : 
https://github.com/MapServer/MapServer/security/advisories/GHSA-5v7w-325g-gpr9
   - WMS error image: 
https://github.com/MapServer/MapServer/security/advisories/GHSA-qcjf-q672-q63w

The 8.6.6 release also fixes a problem of SVG scaling that had existed 
since the 8.6.0 release, for those leveraging an older librsvg version 
(see https://github.com/MapServer/MapServer/pull/7583 ).


Please note: as security support for the 7.6 branch has ended, and 
branches 8.4, 8.2 & 8.0 are not supported, all users are strongly 
encouraged to upgrade to the MapServer 8.6.6 release.

Here is the direct download for today's release:

  - tar.gz: https://download.osgeo.org/mapserver/mapserver-8.6.6.tar.gz
  - zip: https://download.osgeo.org/mapserver/mapserver-8.6.6.zip

(all services on demo.mapserver.org have been upgraded as well)

Thanks,

-- 
The MapServer Team



_______________________________________________
MapServer-announce mailing list
MapServer-announce@...ts.osgeo.org
https://lists.osgeo.org/mailman/listinfo/mapserver-announce
-------------------- End of forwarded message --------------------

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
