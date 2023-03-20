Received: (qmail 10023 invoked by uid 550); 20 Mar 2023 07:26:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9966 invoked from network); 20 Mar 2023 07:26:25 -0000
Date: Mon, 20 Mar 2023 08:26:12 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <25sspro4-64s5-1141-22s6-p27o7pn929@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2023-27536: GSS delegation too eager
 connection re-use

CVE-2023-27536: GSS delegation too eager connection re-use
==========================================================

Project curl Security Advisory, March 20th 2023 -
[Permalink](https://curl.se/docs/CVE-2023-27536.html)

VULNERABILITY
-------------

libcurl would reuse a previously created connection even when the GSS
delegation (`CURLOPT_GSSAPI_DELEGATION`) option had been changed that could
have changed the user's permissions in a second transfer.

libcurl keeps previously used connections in a connection pool for subsequent
transfers to reuse if one of them matches the setup. However, this GSS
delegation setting was left out from the configuration match checks, making
them match too easily, affecting krb5/kerberos/negotiate/GSSAPI transfers.

We are not aware of any exploit of this flaw.

INFO
----

CVE-2023-27536 was introduced in [commit
ebf42c4be76df4](https://github.com/curl/curl/commit/ebf42c4be76df4), shipped
in curl 7.22.0.

CWE-305: Authentication Bypass by Primary Weakness

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.22.0 to and including 7.88.1
- Not affected versions: curl < 7.22.0 and curl >= 8.0.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

A [fix for CVE-2023-27536](https://github.com/curl/curl/commit/cb49e67303dba)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.0.0

  B - Apply the patch to your local version

  C - Do not use the `CURLOPT_GSSAPI_DELEGATION` option

TIMELINE
--------

This issue was reported to the curl project on March 7, 2023. We contacted
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
