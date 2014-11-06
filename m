X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/06/9
Message-ID: <CAE2SPAYY6crbkOPomtg5c14bEO9TsPHvRm0GR+Tkn-g7ajshvA@mail.gmail.com>
Date: Thu, 6 Nov 2014 22:27:01 +0100
From: Bastien ROUCARIES <roucaries.bastien@...il.com>
To: oss-security@...ts.openwall.com
Subject: Stack smashing in libjpeg-turbo
Content-Type: text/plain; charset=utf-8

Hi,

Passing special crafted jpeg file to imagemagick (convert -rotate 270
003632r270.jpg junk.jpg) could lead to stack smashing in libjpeg.so.62
(libjpeg-turbo).

This bug is triggered  by setting the optimize coding member of the
JPEG initialization structure to TRUE. If this flag set it to FALSE,
ImageMagick completes without complaint.

Wokarround could consist to turn off compression optimization in
imagemagick to prevent the stack smash.

Please assing me CVE and make a cc to  768369@...s.debian.org.


Bastien
