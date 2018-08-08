X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/08/5
Message-ID: <CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com>
Date: Wed, 8 Aug 2018 08:44:28 -0700
From: Matthew Garrett <mjg59@...gle.com>
To: oss-security@...ts.openwall.com
Subject: Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)
Content-Type: text/plain; charset=utf-8

CVE 2018-5390 is a remotely exploitable denial of service against Linux
systems. It was patched in the public kernel tree on the 2018-07-23 and
publicly disclosed on 2018-08-06. A public tweet linking to the commit was
made on 2018-07-23, so awareness of the issue may have been high before
official disclosure. All Linux distributions should now have released
patches for the affected releases.

