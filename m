Received: (qmail 29812 invoked by uid 550); 27 Apr 2022 06:41:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29748 invoked from network); 27 Apr 2022 06:41:22 -0000
Date: Wed, 27 Apr 2022 08:41:11 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <976r6q0-o5sr-p1o0-5p6o-63748549593n@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl credential leak on redirect

Credential leak on redirect
===========================

Project curl Security Advisory, April 27th 2022 -
[Permalink](https://curl.se/docs/CVE-2022-27774.html)

VULNERABILITY
-------------

curl follows HTTP(S) redirects when asked to. curl also supports
authentication. When a user and password are provided for a URL with a given
hostname, curl makes an effort to not pass on those credentials to other hosts
in redirects unless given permission with a special option.

This "same host check" has been flawed all since it was introduced. It does
not work on cross protocol redirects and it does not consider different port
numbers to be separate hosts. This leads to curl leaking credentials to other
servers when it follows redirects from auth protected HTTP(S) URLs to other
protocols and port numbers. It could also leak the TLS SRP credentials this
way.

By default, curl only allows redirects to HTTP(S) and FTP(S), but can be asked
to allow redirects to all protocols curl supports.

We are not aware of any exploit of this flaw.

INFO
----

This flaw was added in curl 4.9 with the introduction of `--location` and has
been present in all libcurl versions ever released. In July 2000 in the curl
7.1.1 release, [this commit](https://github.com/curl/curl/commit/29eda80f9669f) was the first
version that attempted to avoid this, but the check has been bad since then.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2022-27774 to this issue.

CWE-522: Insufficiently Protected Credentials

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 4.9 to and including 7.82.0
- Not affected versions: curl < 4.9 and curl >= 7.83.0

Note that libcurl is used by many applications, but not always advertised as
such.

THE SOLUTION
------------

There are two separate patches to apply for CVE-2022-27774: [the main
one](https://github.com/curl/curl/commit/620ea21410030a997) and [the SRP
follow-up](https://github.com/curl/curl/commit/139a54ed0a172ada).

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.83.0

  B - Apply the patches to your version and rebuild

  C - Switch off curl's automatic redirect following

TIME LINE
---------

It was first reported to the curl project on April 18 2022. We contacted
distros@openwall on April 19.

libcurl 7.83.0 was released on April 27 2022, coordinated with the
publication of this advisory.

CREDITS
-------

Reported by Harry Sintonen.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
