Received: (qmail 25904 invoked by uid 550); 11 May 2022 06:40:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25845 invoked from network); 11 May 2022 06:40:41 -0000
Date: Wed, 11 May 2022 08:40:29 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <o384s4p8-o2pp-6or4-7989-9n2ps04062so@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-39887073-2093096271-1652251229=:2358810"
Subject: [oss-security] [SECURITY ADVISORY] curl: CERTINFO never-ending busy-loop

---39887073-2093096271-1652251229=:2358810
Content-Type: text/plain; format=flowed; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

CERTINFO never-ending busy-loop
===============================

Project curl Security Advisory, May 11 2022 -
[Permalink](https://curl.se/docs/CVE-2022-27781.html)

VULNERABILITY
-------------

libcurl provides the `CURLOPT_CERTINFO` option to allow applications to
request details to be returned about a TLS server's certificate chain.

Due to an erroneous function, a malicious server could make libcurl built with
NSS get stuck in a never-ending busy-loop when trying to retrieve that
information.

We are not aware of any exploit of this flaw.

INFO
----

This flaw was introduced in [commit
f6c335d63f](https://github.com/curl/curl/commit/f6c335d63f), shipped in curl
7.34.0 when libcurl added support for CERTINFO using NSS.

This feature is not accessible from the command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2022-27781 to this issue.

CWE-835: Loop with Unreachable Exit Condition ('Infinite Loop')

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.34.0 to and including 7.83.0
- Not affected versions: curl < 7.34.0 and curl >= 7.83.1

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

A [fix for CVE-2022-27781](https://github.com/curl/curl/commit/5c7da89d404bf59)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.83.1

  B - Apply the patch to your local version

  C - Do not use the `CURLOPT_CERTINFO` option

TIMELINE
--------

This issue was reported to the curl project on April 30, 2022. We contacted
distros@openwall on May 5.

libcurl 7.83.1 was released on May 11 2022, coordinated with the publication
of this advisory.

CREDITS
-------

This issue was reported by Florian Kohnhäuser. Patched by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
---39887073-2093096271-1652251229=:2358810--
