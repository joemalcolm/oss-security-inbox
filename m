Received: (qmail 11386 invoked by uid 550); 27 Jun 2022 06:21:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11328 invoked from network); 27 Jun 2022 06:21:25 -0000
Date: Mon, 27 Jun 2022 08:21:14 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <76n529n8-qppo-10o7-4s28-1s26009n30@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: FTP-KRB bad message verification

CVE-2022-32208: FTP-KRB bad message verification
================================================

Project curl Security Advisory, June 27th 2022 -
[Permalink](https://curl.se/docs/CVE-2022-32208.html)

VULNERABILITY
-------------

When curl does FTP transfers secured by krb5, it handles message verification
failures wrongly. This flaw makes it possible for a Man-In-The-Middle attack
to go unnoticed and even allows it to inject data to the client.

We are not aware of any exploit of this flaw.

INFO
----

CVE-2022-32208 was introduced in [commit
54967d2a3a](https://github.com/curl/curl/commit/54967d2a3a), shipped
in curl 7.16.4.

This flaw typically makes curl insert `599 ` (+ terminating null) into the
data where it detects the error, then the attackers data. It forces the
attacker to be somewhat creative to handle this initial hard-coded 5 byte
sequence of "junk".

FTP-KRB is a rarely used feature.

CWE-924: Improper Enforcement of Message Integrity During Transmission in a
Communication Channel

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.16.4 to and including 7.83.1
- Not affected versions: curl < 7.16.4 and curl >= 7.84.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

A [fix for CVE-2022-32208](https://github.com/curl/curl/commit/6ecdf5136b52af7)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.84.0

  B - Apply the patch to your local version

  C - Do not use KRB-FTP

TIMELINE
--------

This issue was reported to the curl project on June 2, 2022. We contacted
distros@openwall on June 20.

libcurl 7.84.0 was released on June 27 2022, coordinated with the publication
of this advisory.

CREDITS
-------

This issue was reported by Harry Sintonen. Patched by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
