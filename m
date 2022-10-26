Received: (qmail 13947 invoked by uid 550); 26 Oct 2022 06:27:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13889 invoked from network); 26 Oct 2022 06:27:00 -0000
Date: Wed, 26 Oct 2022 08:26:48 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <1666n13n-4p11-777r-srq5-sp89r0q5s631@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-39887073-46164039-1666705413=:3549212"
Content-ID: <orq0o340-nqrs-980-7o0-8nsoq19372qo@unkk.fr>
Subject: [oss-security] [SECURITY ADVISORY] CVE-2022-42916: HSTS bypass via IDN (curl)

---39887073-46164039-1666705413=:3549212
Content-Type: text/plain; CHARSET=ISO-2022-JP; format=flowed
Content-ID: <r58ss4n-n415-76n8-7p2p-n2nq2n9p29r8@unkk.fr>

CVE-2022-42916: HSTS bypass via IDN
===================================

Project curl Security Advisory, October 26 2022 -
[Permalink](https://curl.se/docs/CVE-2022-42916.html)

VULNERABILITY
-------------

curl's HSTS check could be bypassed to trick it to keep using HTTP.

Using its HSTS support, curl can be instructed to use HTTPS directly instead
of using an insecure clear-text HTTP step even when HTTP is provided in the
URL. This mechanism could be bypassed if the host name in the given URL uses
IDN characters that get replaced to ASCII counterparts as part of the IDN
conversion. Like using the character UTF-8 U+3002 (IDEOGRAPHIC FULL STOP)
instead of the common ASCII full stop (U+002E) `.`.

Like this: `http://curl。se。`

We are not aware of any exploit of this flaw.

INFO
----

This flaw was introduced in [commit
7385610d0c7](https://github.com/curl/curl/commit/7385610d0c7), which was
shipped enabled by default from [commit
d71ff2b9db566b3f](https://github.com/curl/curl/commit/d71ff2b9db566b3f) in
curl 7.77.0.

This issue is similar to the previous [CVE-2022-30115](https://curl.se/docs/CVE-2022-30115.html).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2022-42916 to this issue.

CWE-319: Cleartext Transmission of Sensitive Information

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.77.0 to and including 7.85.0
- Not affected versions: curl < 7.77.0 and curl >= 7.86.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

A [fix for CVE-2022-42916](https://github.com/curl/curl/commit/53bcf55b4538067e6)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.86.0

  B - Apply the patch to your local version

  C - Stick to always using `HTTPS://` in URLs

TIMELINE
--------

This issue was reported to the curl project on October 11, 2022. We contacted
distros@openwall on October 18, 2022.

libcurl 7.86.0 was released on October 26 2022, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Hiroki Kurosawa
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
---39887073-46164039-1666705413=:3549212--
