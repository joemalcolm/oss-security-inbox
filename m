Received: (qmail 7930 invoked by uid 550); 27 Jun 2022 06:20:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7879 invoked from network); 27 Jun 2022 06:20:53 -0000
Date: Mon, 27 Jun 2022 08:20:42 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <67qo8418-68q7-q8r1-732s-r46o6s81q7rp@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2022-32207: Unpreserved file
 permissions

CVE-2022-32207: Unpreserved file permissions
============================================

Project curl Security Advisory, June 27th 2022 -
[Permalink](https://curl.se/docs/CVE-2022-32207.html)

VULNERABILITY
-------------

When curl saves cookies, alt-svc and hsts data to local files, it makes the
operation atomic by finalizing the operation with a rename from a temporary
name to the final target file name.

In that rename operation, it might accidentally *widen* the permissions for
the target file, leaving the updated file accessible to more users than
intended.

We are not aware of any exploit of this flaw.

INFO
----

CVE-2022-32207 was introduced in [commit
b834890a3fa3f52](https://github.com/curl/curl/commit/b834890a3fa3f52), shipped
in curl 7.69.0.

This problem can be worked-around by using a strict umask.

CWE-281: Improper Preservation of Permissions

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.69.0 to and including 7.83.1
- Not affected versions: curl < 7.69.0 and curl >= 7.84.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

A [fix for CVE-2022-32207](https://github.com/curl/curl/commit/20f9dd6bae50b)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.84.0

  B - Apply the patch to your local version

  C - Make extra precautions to protect saved files (ie strict umask)

TIMELINE
--------

This issue was reported to the curl project on May 17, 2022. We contacted
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
