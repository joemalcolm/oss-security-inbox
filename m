X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2779" "Wednesday" "9" "December" "2020" "07:53:37" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.2012080926010.16776@tvnag.unkk.fr>" "94" "[oss-security] [SECURITY ADVISORY] curl: Inferior OCSP verification" nil nil nil "12" "2020120906:53:37" "[oss-security] [SECURITY ADVISORY] curl: Inferior OCSP verification" (number mark "U       daniel@haxx. Dec  9   94/2779  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: Inferior OCSP verification\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: Inferior OCSP verification" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5354 invoked by uid 550); 9 Dec 2020 06:53:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5285 invoked from network); 9 Dec 2020 06:53:50 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 9 Dec 2020 07:53:37 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.2012080926010.16776@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: Inferior OCSP verification

Inferior OCSP verification
==========================

Project curl Security Advisory, December 9th 2020 -
[Permalink](https://curl.se/docs/CVE-2020-8286.html)

VULNERABILITY
-------------

libcurl offers "OCSP stapling" via the `CURLOPT_SSL_VERIFYSTATUS` option. When
set, libcurl verifies the OCSP response that a server responds with as part of
the TLS handshake. It then aborts the TLS negotiation if something is wrong
with the response. The same feature can be enabled with `--cert-status` using
the curl tool.

As part of the OCSP response verification, a client should verify that the
response is indeed set out for the correct certificate. This step was not
performed by libcurl when built or told to use OpenSSL as TLS backend.

This flaw would allow an attacker, who perhaps could have breached a TLS
server, to provide a fraudulent OCSP response that would appear fine, instead
of the real one. Like if the original certificate actually has been revoked.

We are not aware of any exploit of this flaw.

INFO
----

This flaw has existed in curl since commit
[d1cf5d570663d](https://github.com/curl/curl/commit/d1cf5d570663d) in curl
7.41.0.

The vulnerability is present only if OpenSSL is the designated TLS backend.
OCSP stapling is not enabled by default by libcurl, it needs to be explicitly
enabled by the application to get used.

OCSP Stapling can be used with any of the TLS based protocols curl supports,
including HTTPS, FTPS, SMTPS, POP3S, IMAPS, HTTPS-proxy and more.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2020-8286 to this issue.

CWE-299: Improper Check for Certificate Revocation

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.41.0 to and including 7.73.0
- Not affected versions: libcurl < 7.41.0 and libcurl >= 7.74.0

Also note that libcurl is used by many applications, and not always
advertised as such.

THE SOLUTION
------------

The OCSP response checker function now also verifies that the certificate id
is the correct one.

A [fix for CVE-2020-8286](https://github.com/curl/curl/commit/d9d01672785b)

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.74.0

  B - Don't rely on OCSP

TIMELINE
--------

This issue was first reported to the curl project on December 2, 2020.

This advisory was posted on December 9th 2020.

CREDITS
-------

This issue was identified and patched by an Ospoco customer who wishes to
remain anonymous. Reported by Ospoco (https://ospo.co).

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://www.wolfssl.com/contact/
