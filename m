Received: (qmail 11403 invoked by uid 550); 20 Mar 2023 07:26:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11348 invoked from network); 20 Mar 2023 07:26:31 -0000
Date: Mon, 20 Mar 2023 08:26:17 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <92s379q0-52o-4rp2-o73-p1q92825pr39@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2023-27537: HSTS double-free

CVE-2023-27537: HSTS double-free
================================

Project curl Security Advisory, March 20th 2023 -
[Permalink](https://curl.se/docs/CVE-2023-27537.html)

VULNERABILITY
-------------

libcurl supports sharing HSTS data between separate "handles". This sharing was
introduced without considerations for do this sharing across separate threads
but there was no indication of this fact in the documentation.

Due to missing mutexes or thread locks, two threads sharing the same HSTS data
could end up doing a double-free or use-after-free.

We are not aware of any exploit of this flaw.

INFO
----

This feature was not implemented to support sharing between threads. That is
still left for future improvements. The fix for this issue is therefore a
documentation update clarifying that sharing HSTS between threads is not
expected to work.

CVE-2023-27537 was introduced in [commit
076a2f629119222a](https://github.com/curl/curl/commit/076a2f629119222a), shipped
in curl 7.88.0.

CWE-415: Double Free

Severity: Low

Severity is set to Low because

  - Not widely used functionality
  - The timing necessary to trigger this has to match fairly exact
  - Exploitation this for anything but denial of service is difficult

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.88.0 to and including 7.88.1
- Not affected versions: curl < 7.88.0 and curl >= 8.0.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

A [fix for CVE-2023-27537](https://github.com/curl/curl/commit/dca4cdf071be0)

RECOMMENDATIONS
--------------

  A - Do not share HSTS data between threads

TIMELINE
--------

This issue was reported to the curl project on March 8 2023. We contacted
distros@openwall on March 13, 2023.

curl 8.0.0 was released on March 20 2023, coordinated with the publication of
this advisory.

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
