X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/12/5
Message-Id: <6543F18F-81C2-492A-917E-6F331F917D02@gmail.com>
Date: Fri, 12 May 2017 12:09:30 -0500
From: Brandon Perry <bperry.volatile@...il.com>
To: oss-security@...ts.openwall.com, fulldisclosure@...lists.org
Subject: Multiple crashes in OpenEXR
Content-Type: text/plain; charset=utf-8

Attached is a zip file of EXR images that cause segmentation faults in the OpenEXR library (tested against 2.2.0). http://www.openexr.com/downloads.html <http://www.openexr.com/downloads.html>

These were reported to ehanway@....com <mailto:ehanway@....com> on January 12, 2017, but no updates or information has been reported back. I have attempted to see what the status is, but no responses from ILM. Since this has surpassed the general 90-day mark as is standard for many disclosures, these are being disclosed. It’s actually been 120 days exactly.

You can see the last update to the OpenEXR codebase was on January 9. https://github.com/openexr/openexr <https://github.com/openexr/openexr>

Of note is that Adobe Photoshop actually ships with a version of OpenEXR for reading EXR images, so some of these images also crash Photoshop. ImageMagick also can support EXR image by using the OpenEXR library. https://github.com/ImageMagick/exr/tree/master/openexr <https://github.com/ImageMagick/exr/tree/master/openexr>

As of this writing, these issues are unfixed. No CVEs have been requested.



Content of type "text/html" skipped

Download attachment "ilm.zip" of type "application/zip" (15315 bytes)

Content of type "text/html" skipped

Download attachment "signature.asc" of type "application/pgp-signature" (802 bytes)
