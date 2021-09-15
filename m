X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1884" "Wednesday" "15" "September" "2021" "08:20:45" "+0200" "Daniel Stenberg" "daniel@haxx.se" nil "77" "[oss-security] [SECURITY ADVISORY] curl: UAF and double-free in MQTT sending" nil nil nil "9" nil nil (number mark "U       daniel@haxx. Sep 15   77/1884  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: UAF and double-free in MQTT sending\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: UAF and double-free in MQTT sending" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7932 invoked by uid 550); 15 Sep 2021 06:20:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7902 invoked from network); 15 Sep 2021 06:20:56 -0000
Date: Wed, 15 Sep 2021 08:20:45 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@silly
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <nycvar.QRO.7.76.2109142335500.9650@fvyyl>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: UAF and double-free in MQTT sending

UAF and double-free in MQTT sending
===================================

Project curl Security Advisory, September 15th 2021 -
[Permalink](https://curl.se/docs/CVE-2021-22945.html)

VULNERABILITY
-------------

When sending data to an MQTT server, libcurl could in some circumstances
erroneously keep a pointer to an already freed memory area and both use that
again in a subsequent call to send data and also free it *again*.

We are not aware of any case of this flaw having been exploited in the wild.

INFO
----

This flaw was introduced in commit
[2522903b79](https://github.com/curl/curl/commit/2522903b79) but since MQTT
support was marked 'experimental' then and not enabled in the build by default
until curl 7.73.0 (October 14, 2020) we count that as the first flawed
version.

The fixed libcurl version properly clears the pointer when the data has been
sent.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2021-22945 to this issue.

CWE-415: Double Free

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.73.0 to and including 7.78.0
- Not affected versions: curl < 7.73.0 and curl >= 7.79.0

Also note that libcurl is used by many applications, and not always advertised
as such.

THE SOLUTION
------------

A [fix for CVE-2021-22945](https://github.com/curl/curl/commit/43157490a5054bd)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.79.0

  B - Apply the patch to your local version

  C - Do not use MQTT

TIMELINE
--------

This issue was reported to the curl project on July 19, 2021.

This advisory was posted on September 15, 2021.

CREDITS
-------

This issue was reported and patched by z2_.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://curl.se/support.html
