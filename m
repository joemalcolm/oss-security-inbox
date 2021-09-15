X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2218" "Wednesday" "15" "September" "2021" "08:20:49" "+0200" "Daniel Stenberg" "daniel@haxx.se" nil "82" "[oss-security] [SECURITY ADVISORY] curl: Protocol downgrade required TLS bypassed" nil nil nil "9" nil nil (number mark "U       daniel@haxx. Sep 15   82/2218  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: Protocol downgrade required TLS bypassed\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: Protocol downgrade required TLS bypassed" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9408 invoked by uid 550); 15 Sep 2021 06:21:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9339 invoked from network); 15 Sep 2021 06:21:01 -0000
Date: Wed, 15 Sep 2021 08:20:49 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@silly
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <nycvar.QRO.7.76.2109142337070.9650@fvyyl>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: Protocol downgrade required TLS bypassed

Protocol downgrade required TLS bypassed
========================================

Project curl Security Advisory, September 15th 2021 -
[Permalink](https://curl.se/docs/CVE-2021-22946.html)

VULNERABILITY
-------------

A user can tell curl to **require** a successful upgrade to TLS when speaking
to an IMAP, POP3 or FTP server (`--ssl-reqd` on the command line or
`CURLOPT_USE_SSL` set to `CURLUSESSL_CONTROL` or `CURLUSESSL_ALL` with
libcurl). This requirement could be bypassed if the server would return a
properly crafted but perfectly legitimate response.

This flaw would then make curl silently continue its operations **without
TLS** contrary to the instructions and expectations, exposing possibly
sensitive data in clear text over the network.

We are not aware of any case of this flaw having been exploited in the wild.

INFO
----

This flaw was first introduced in commit
[ec3bb8f727405](https://github.com/curl/curl/commit/ec3bb8f727405) for IMAP
and POP3 and in
[c5ba0c2f544653](https://github.com/curl/curl/commit/c5ba0c2f544653) for FTP.

SMTP also features a similar TLS upgrade method, but that code in curl doesn't
suffer from this bug.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2021-22946 to this issue.

CWE-325: Missing Cryptographic Step

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.20.0 to and including 7.78.0
- Not affected versions: curl < 7.20.0 and curl >= 7.79.0

Also note that libcurl is used by many applications, and not always advertised
as such.

THE SOLUTION
------------

A [fix for CVE-2021-22946](https://github.com/curl/curl/commit/364f174724ef115)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.79.0

  B - Apply the patch to your local version

  C - Do not use IMAP, POP3 or FTP

TIMELINE
--------

This issue was reported to the curl project on September 8, 2021.

This advisory was posted on September 15, 2021.

CREDITS
-------

This issue was reported and patched by Patrick Monnerat.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
