X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2153" "Wednesday" "21" "July" "2021" "09:14:51" "+0200" "Daniel Stenberg" "daniel@haxx.se" nil "81" "[oss-security] [SECURITY ADVISORY] curl: Bad connection reuse due to flawed path name checks" nil nil nil "7" nil nil (number mark "U       daniel@haxx. Jul 21   81/2153  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: Bad connection reuse due to flawed path name checks\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: Bad connection reuse due to flawed path name checks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15959 invoked by uid 550); 21 Jul 2021 07:15:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15896 invoked from network); 21 Jul 2021 07:15:02 -0000
Date: Wed, 21 Jul 2021 09:14:51 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@silly
To: curl security announcements -- curl users <curl-users@cool.haxx.se>, 
    curl-announce@cool.haxx.se, libcurl hacking <curl-library@cool.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <nycvar.QRO.7.76.2107210914210.25537@fvyyl>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: Bad connection reuse due to flawed path
 name checks

Bad connection reuse due to flawed path name checks
===================================================

Project curl Security Advisory, July 21st 2021 -
[Permalink](https://curl.se/docs/CVE-2021-22924.html)

VULNERABILITY
-------------

libcurl keeps previously used connections in a connection pool for subsequent
transfers to reuse, if one of them matches the setup.

Due to errors in the logic, the config matching function did not take 'issuer
cert' into account and it compared the involved paths *case insensitively*,
which could lead to libcurl reusing wrong connections.

File paths are, or can be, case sensitive on many systems but not all, and can
even vary depending on used file systems.

The comparison also didn't include the 'issuer cert' which a transfer can set
to qualify how to verify the server certificate.

We are not aware of any exploit of this flaw.

INFO
----

This flaw has existed in curl since commit
[89721ff04af70f](https://github.com/curl/curl/commit/89721ff04af70f) in
libcurl 7.10.4, released on April 2, 2003.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2021-22924 to this issue.

CWE-295: Improper Certificate Validation

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.10.4 to and including 7.77.0
- Not affected versions: curl < 7.10.4 and curl >= 7.78.0

Also note that libcurl is used by many applications, and not always advertised
as such.

THE SOLUTION
------------

The SSL configs are compared appropriately.

A [fix for CVE-2021-22924](https://github.com/curl/curl/commit/5ea3145850ebff1dc2b13d17440300a01ca38161)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.78.0

  B - Apply the patch to your local version

TIMELINE
--------

This issue was reported to the curl project on June 11, 2021.

This advisory was posted on July 21, 2021.

CREDITS
-------

This issue was reported by Harry Sintonen. Patched by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://www.wolfssl.com/contact/
