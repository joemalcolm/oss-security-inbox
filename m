X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2665" "Wednesday" "19" "April" "2017" "08:07:31" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1704190806280.2937@tvnag.unkk.fr>" "90" "[oss-security] [SECURITY ADVISORY] curl: TLS session resumption client cert bypass (again)" nil nil nil "4" "2017041906:07:31" "[oss-security] [SECURITY ADVISORY] curl: TLS session resumption client cert bypass (again)" (number mark "U       daniel@haxx. Apr 19   90/2665  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: TLS session resumption client cert bypass (again)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21960 invoked by uid 550); 19 Apr 2017 06:07:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21919 invoked from network); 19 Apr 2017 06:07:44 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 19 Apr 2017 08:07:31 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1704190806280.2937@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: TLS session resumption client cert bypass
 (again)

TLS session resumption client cert bypass (again)
=========================================

Project curl Security Advisory, April 19th 2017 -
[Permalink](https://curl.haxx.se/docs/adv_20170419.html)

VULNERABILITY
-------------

libcurl would attempt to resume a TLS session even if the client certificate
had changed. That is unacceptable since a server by specification is allowed
to skip the client certificate check on resume, and may instead use the old
identity which was established by the previous certificate (or no
certificate).

libcurl supports by default the use of TLS session id/ticket to resume
previous TLS sessions to speed up subsequent TLS handshakes. They are used
when for any reason an existing TLS connection couldn't be kept alive to make
the next handshake faster.

This flaw is a regression and identical to
[CVE-2016-5419](https://curl.haxx.se/docs/adv_20160803A.html) reported on
August 3rd 2016, but affecting a different version range.

We are not aware of any exploit of this flaw.

INFO
----

This flaw also affects the curl command line tool.

For version 7.52.0, we rearranged a lot of TLS code to bring support for HTTPS
proxies, which unfortunately made us accidentally bring this old flaw back!

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2017-7468 to this issue.

AFFECTED VERSIONS
-----------------

This flaw is relevant for all versions of curl and libcurl that support TLS
and client certificates.

- Affected versions: curl 7.52.0 to and including 7.53.1
- Not affected versions: curl < 7.52.0 and >= 7.54.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

TLS session resumption is disabled when a client certificate is used so that a
subsequent connection attempt to the same server cannot risk getting a
previously authenticated session resumed.

A [patch for CVE-2017-7468](https://curl.haxx.se/CVE-2017-7468.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.54.0

  B - Apply the patch to your version and rebuild

  C - Set `CURLOPT_SSL_SESSIONID_CACHE` to 0L when using client certificates

TIME LINE
---------

It was [first reported to the curl
project](https://github.com/curl/curl/issues/1341) on March 21, 2017.  We
contacted distros@openwall on April 10.

libcurl 7.54.0 was released on April 19 2017, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by lijian996@users.noreply.github.com. Patch by Ray Satiro.

Thanks a lot!

-- 

  / daniel.haxx.se
