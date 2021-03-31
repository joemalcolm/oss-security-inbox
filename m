X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2366" "Wednesday" "31" "March" "2021" "08:01:59" "+0200" "Daniel Stenberg" "daniel@haxx.se" nil "87" "[oss-security] [SECURITY ADVISORY] curl: Automatic referer leaks credentials" nil nil nil "3" nil nil (number mark "U       daniel@haxx. Mar 31   87/2366  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: Automatic referer leaks credentials\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: Automatic referer leaks credentials" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11938 invoked by uid 550); 31 Mar 2021 06:02:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11898 invoked from network); 31 Mar 2021 06:02:10 -0000
Date: Wed, 31 Mar 2021 08:01:59 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@silly
To: curl security announcements -- curl users <curl-users@cool.haxx.se>, 
    curl-announce@cool.haxx.se, libcurl hacking <curl-library@cool.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <nycvar.QRO.7.76.2103310010410.30524@fvyyl>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: Automatic referer leaks credentials

Automatic referer leaks credentials
===================================

Project curl Security Advisory, March 31st 2021 -
[Permalink](https://curl.se/docs/CVE-2021-22876.html)

VULNERABILITY
-------------

libcurl does not strip off user credentials from the URL when automatically
populating the `Referer:` HTTP request header field in outgoing HTTP requests,
and therefore risks leaking sensitive data to the server that is the target of
the second HTTP request.

libcurl automatically sets the `Referer:` HTTP request header field in
outgoing HTTP requests if the `CURLOPT_AUTOREFERER` option is set. With the
curl tool, it is enabled with `--referer ";auto"`.

We are not aware of any exploit of this flaw.

INFO
----

This flaw has existed in libcurl since commit
[f30ffef477](https://github.com/curl/curl/commit/f30ffef477) in libcurl 7.1.1,
released on August 21, 2000.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2021-22876 to this issue.

CWE-359: Exposure of Private Personal Information to an Unauthorized Actor

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.1.1 to and including 7.75.0
- Not affected versions: curl < 7.1.1 and curl >= 7.76.0

Also note that libcurl is used by many applications, and not always
advertised as such.

THE SOLUTION
------------

If a provided URL contains credentials, they will be blanked out before the
URL is used to populate the header field.

A [fix for CVE-2021-22876](https://github.com/curl/curl/commit/7214288898f5625a6cc196e22a74232eada7861c)

(The patch URL will change in the final published version of this advisory)

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade libcurl to version 7.76.0

  B - Apply the patch to your local version

  C - Provide the credentials with `-u` or `CURLOPT_USERPWD`

  D - Avoid `CURLOPT_AUTOREFERER` and `--referer ";auto"`,

TIMELINE
--------

This issue was reported to the curl project on February 12, 2021.

This advisory was posted on March 31st 2021.

CREDITS
-------

This issue was reported and patched by Viktor Szakats.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://www.wolfssl.com/contact/
