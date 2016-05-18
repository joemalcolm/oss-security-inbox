X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2986" "Wednesday" "18" "May" "2016" "08:18:11" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1605180816100.8323@tvnag.unkk.fr>" "95" "[oss-security] [SECURITY ADVISORY] curl: TLS certificate check bypass with mbedTLS/PolarSSL" nil nil nil "5" "2016051806:18:11" "[oss-security] [SECURITY ADVISORY] curl: TLS certificate check bypass with mbedTLS/PolarSSL" (number mark "U       daniel@haxx. May 18   95/2986  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: TLS certificate check bypass with mbedTLS/PolarSSL\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17931 invoked by uid 550); 18 May 2016 06:18:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17865 invoked from network); 18 May 2016 06:18:25 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 18 May 2016 08:18:11 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: Curl Announce -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1605180816100.8323@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: TLS certificate check bypass with
 mbedTLS/PolarSSL

TLS certificate check bypass with mbedTLS/PolarSSL
==================================================

Project cURL Security Advisory, May 18th 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20160518.html)

VULNERABILITY
-------------

libcurl did not check the server certificate of TLS connections done to a host
specified as an IP address, or when explicitly asked to use SSLv3.

This flaw only exists when libcurl is built to use mbedTLS or PolarSSL as TLS
backend.

The documentation for mbedTLS and PolarSSL (wrongly) says that the API
function *ssl_set_hostname() is used only for setting the name for the TLS
extension SNI. The set string is however even more importantly used by the
libraries to verify the server certificate, and if no "hostname" is set it
will just skip the check and successfully continue with the handshake.

libcurl would wrongly avoid using the function when the specified host name
was given as an IP address or when SSLv3 is used, as SNI isn't supposed to be
used then. This then leads to that all uses of TLS oriented protocols (HTTPS,
FTPS, IMAPS, POPS3, SMTPS, etc) will allow connections to servers with
unverified server certificates as long as they're specified as IP addresses or
using SSLv3.

By tricking a libcurl-using client to use a URL with a host specified as IP
address only, an application could be made to connect to an impostor server or
Man In The Middle host without noticing.

Note: PolarSSL is the old name and releases of the library that nowadays is
known and released under the name mbedTLS.

We are not aware of any exploit of this flaw.

INFO
----

This flaw also affects the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-3739 to this issue.

AFFECTED VERSIONS
-----------------

This flaw is relevant for all versions of curl and libcurl that support
PolarSSL or mbedTLS.

- Affected versions: libcurl 7.21.0 to and including 7.48.0
- Not affected versions: libcurl < 7.21.0 and libcurl >= 7.49.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.49.0, libcurl properly sets the "hostname" even when it is just
an IP address and even when using SSLv3 that doesn't have SNI.

A [patch for CVE-2016-3739](https://curl.haxx.se/CVE-2016-3739.patch) is available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.49.0

  B - Apply the patch to your version and rebuild

  C - Build your libcurl with another TLS backend to work around this flaw.

TIME LINE
---------

It was first reported to the curl project on April 21st 2016. We contacted
distros@openwall on May 8th.

libcurl 7.49.0 was released on May 18 2016, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Moti Avrahami. Patched by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
