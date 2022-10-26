Received: (qmail 11895 invoked by uid 550); 26 Oct 2022 06:26:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11871 invoked from network); 26 Oct 2022 06:26:47 -0000
Date: Wed, 26 Oct 2022 08:26:35 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <qo17no6-sr1s-8ps-469n-r218o8n99n2@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] CVE-2022-32221: POST following PUT confusion
 (curl)

CVE-2022-32221: POST following PUT confusion
============================================

Project curl Security Advisory, October 26 2022 -
[Permalink](https://curl.se/docs/CVE-2022-32221.html)

VULNERABILITY
-------------

When doing HTTP(S) transfers, libcurl might erroneously use the read callback
(`CURLOPT_READFUNCTION`) to ask for data to send, even when the
`CURLOPT_POSTFIELDS` option has been set, if the same handle previously was
used to issue a `PUT` request which used that callback.

This flaw may surprise the application and cause it to misbehave and either
send off the wrong data or use memory after free or similar in the subsequent
`POST` request.

The problem exists in the logic for a reused handle when it is changed from a
PUT to a POST.

We are not aware of any exploit of this flaw.

INFO
----

The code actually sending wrong data or doing a use-after-free is not present
in libcurl code but are only presumed scenarios that might become the outcome
of libcurl surprisingly calling the read callback in a situation where it is
not expected to.

This flaw cannot be triggered with the command line tool.

This issue was [reported and managed
publicly](https://github.com/curl/curl/issues/9507) before the security impact
was properly understood.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2022-32221 to this issue.

CWE-440: Expected Behavior Violation

Severity: medium

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.7 to and including 7.85.0
- Not affected versions: libcurl < 7.7 and >= 7.86.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

[The fix for
CVE-2022-32221](https://github.com/curl/curl/commit/a64e3e59938abd7d6) was
committed to the curl git repository and made public before the security
impact of this issue become clear to us. The securty impact was not
highlighted in the commit message nor surrounding messsaging.

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.86.0

  B - Apply the patch to your local version

  C - Do not do mix using the read callback and postfields string on a reused
      easy handle

TIMELINE
--------

This issue was reported to the curl project on September 19, 2022. We
contacted distros@openwall on October 18, 2022.

libcurl 7.86.0 was released on October 26 2022, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Robby Simpson
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
