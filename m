Received: (qmail 9716 invoked by uid 550); 20 Mar 2023 07:26:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9657 invoked from network); 20 Mar 2023 07:26:21 -0000
Date: Mon, 20 Mar 2023 08:26:09 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <40116rn7-8spr-8s65-275q-qq2pr4815911@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2023-27535: FTP too eager connection
 reuse

CVE-2023-27535: FTP too eager connection reuse
==============================================

Project curl Security Advisory, March 20th 2023 -
[Permalink](https://curl.se/docs/CVE-2023-27535.html)

VULNERABILITY
-------------

libcurl would reuse a previously created FTP connection even when one or more
options had been changed that could have made the effective user a very
different one, thus leading to the doing the second transfer with wrong
credentials.

libcurl keeps previously used connections in a connection pool for subsequent
transfers to reuse if one of them matches the setup. However, several FTP
settings were left out from the configuration match checks, making them match
too easily. The settings in questions are `CURLOPT_FTP_ACCOUNT`,
`CURLOPT_FTP_ALTERNATIVE_TO_USER`, `CURLOPT_FTP_SSL_CCC` and `CURLOPT_USE_SSL`
level.

We are not aware of any exploit of this flaw.

INFO
----

CVE-2023-27535 was introduced in [commit
177dbc7be07125582](https://github.com/curl/curl/commit/177dbc7be07125582),
shipped in curl 7.13.0.

CWE-305: Authentication Bypass by Primary Weakness

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.13.0 to and including 7.88.1
- Not affected versions: curl < 7.13.0 and curl >= 8.0.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

A [fix for CVE-2023-27535](https://github.com/curl/curl/commit/8f4608468b890dc)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.0.0

  B - Apply the patch to your local version

TIMELINE
--------

This issue was reported to the curl project on March 5, 2023. We contacted
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
