Received: (qmail 8072 invoked by uid 550); 20 Mar 2023 07:26:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8050 invoked from network); 20 Mar 2023 07:26:14 -0000
Date: Mon, 20 Mar 2023 08:26:02 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <on2p28n5-r290-p375-6012-s05rr4s84so2@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2023-27533: TELNET option IAC
 injection

CVE-2023-27533: TELNET option IAC injection
============================================

Project curl Security Advisory, March 20th 2023 -
[Permalink](https://curl.se/docs/CVE-2023-27533.html)

VULNERABILITY
-------------

curl supports communicating using the TELNET protocol and as a part of this it
offers users to pass on user name and "telnet options" for the server
negotiation.

Due to lack of proper input scrubbing and without it being the documented
functionality, curl would pass on user name and telnet options to the server
as provided. This could allow users to pass in carefully crafted content that
pass on content or do option negotiation without the application intending to
do so. In particular if an application for example allows users to provide the
data or parts of the data.

We are not aware of any exploit of this flaw.

INFO
----

CVE-2023-27533 was introduced in [commit
a1d6ad26100bc493c7](https://github.com/curl/curl/commit/a1d6ad26100bc493c7),
shipped in curl 7.7.

CWE-75: Failure to Sanitize Special Elements into a Different Plane

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.7 to and including 7.88.1
- Not affected versions: curl < 7.7 and curl >= 8.0.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

Only accept ASCII user name and telnet options.

A [fix for CVE-2023-27533](https://github.com/curl/curl/commit/538b1e79a6e7b)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.0.0

  B - Apply the patch to your local version

  C - Do your own TELNET user name or option input filtering

TIMELINE
--------

This issue was reported to the curl project on March 3, 2023. We contacted
distros@openwall on March 13, 2023.

curl 8.0.0 was released on March 20 2023, coordinated with the publication of
this advisory.

CREDITS
-------

- Reported-by: Harry Sintonen
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
