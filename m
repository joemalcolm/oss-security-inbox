X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/17
Message-ID: <aqKzoxICsQDfZ0v9@donburi.himad.notcom.org>
Date: Thu, 10 Sep 2026 17:11:52 +0300
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-87464: RCE outside sandbox in Chromium prior to 153.0.8010.36
Content-Type: text/plain; charset=utf-8

>From NIST NVD <https://nvd.nist.gov/vuln/detail/cve-2026-87464>:

  Use after free in WebGL in Google Chrome prior to 153.0.8010.36 allowed a remote
  attacker to execute arbitrary code outside the sandbox via a crafted HTML
  page. (Chromium security severity: Critical)

The Chromium issue tracker link is restricted so further details are not
available. While product is listed as Chrome by NIST, presumably this also
affects Chromium and everything derived from it. Debian lists all current
Chromium packages as vulnerable
<https://security-tracker.debian.org/tracker/CVE-2026-87464>.

Related Gerrit for the linked Chromium issue 544163112:
https://chromium-review.googlesource.com/c/angle/angle/+/8266365

 -valtteri
 
