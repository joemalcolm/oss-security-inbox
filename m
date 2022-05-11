Received: (qmail 30600 invoked by uid 550); 11 May 2022 06:41:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30546 invoked from network); 11 May 2022 06:41:23 -0000
Date: Wed, 11 May 2022 08:41:12 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <nooqr7o5-86no-68n-9s31-oq6o9pn1r425@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: TLS and SSH connection too eager reuse

TLS and SSH connection too eager reuse
======================================

Project curl Security Advisory, May 11 2022 -
[Permalink](https://curl.se/docs/CVE-2022-27782.html)

VULNERABILITY
-------------

libcurl would reuse a previously created connection even when a TLS or SSH
related option had been changed that should have prohibited reuse.

libcurl keeps previously used connections in a connection pool for subsequent
transfers to reuse if one of them matches the setup. However, several TLS and
SSH settings were left out from the configuration match checks, making them
match too easily.

We are not aware of any exploit of this flaw.

INFO
----

Here are the list of options that were not considered in the check, so curl
would reuse a connection even if the subsequent transfer would have changed
one or more of these options.

### TLS options

- `CURLOPT_SSL_OPTIONS` (since 7.25.0)
- `CURLOPT_CRLFILE` (since 7.19.0)
- `CURLOPT_TLSAUTH_USERNAME` (since 7.21.4)
- `CURLOPT_TLSAUTH_PASSWORD` (since 7.21.4)
- `CURLOPT_PROXY_SSL_OPTIONS` (since 7.52.0)
- `CURLOPT_PROXY_CRLFILE` (since 7.52.0)
- `CURLOPT_PROXY_TLSAUTH_USERNAME` (since 7.52.0)
- `CURLOPT_PROXY_TLSAUTH_PASSWORD` (since 7.52.0)

### SSH options

- `CURLOPT_SSH_PUBLIC_KEYFILE` (since 7.16.1)
- `CURLOPT_SSH_PRIVATE_KEYFILE` (since 7.16.1)

This flaw was initially introduced in curl 7.16.1 and has been widened several
times since then. See table above for details

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2022-27782 to this issue.

CWE-305: Authentication Bypass by Primary Weakness

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.16.1 to and including 7.83.0
- Not affected versions: curl < 7.16.1 and curl >= 7.83.1

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

The two patches for CVE-2022-27782: [TLS-fix](https://github.com/curl/curl/commit/f18af4f874) and [SSH-fix](https://github.com/curl/curl/commit/1645e9b44505abd5cbaf65da5282c3f33b5924a5)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.83.1

  B - Apply the patch to your local version

TIMELINE
--------

This issue was reported to the curl project on May 1, 2022. We contacted
distros@openwall on May 5.

libcurl 7.83.1 was released on May 11 2022, coordinated with the publication
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
