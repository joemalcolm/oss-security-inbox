X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/04/2
Message-ID: <CACn5sdQdKGVFgWPdYpZ6PY0P4gJr6+GQM=STpoFM_T31wugZvQ@mail.gmail.com>
Date: Fri, 4 Mar 2016 10:59:22 -0300
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: tidy-html5: infinite loop parsing an html file
Content-Type: text/plain; charset=utf-8

A DoS parsing a html file was discovered in tidy-html5 (affecting 5.1.25
and last revisions) using afl. Technical details are available here:

https://github.com/htacg/tidy-html5/issues/380

Regards,
Gustavo.

