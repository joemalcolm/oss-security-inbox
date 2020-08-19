X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3348" "Wednesday" "19" "August" "2020" "09:52:57" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.2008190951590.18028@tvnag.unkk.fr>" "100" "[oss-security] [SECURITY ADVISORY] libcurl: wrong connect-only connection" nil nil nil "8" "2020081907:52:57" "[oss-security] [SECURITY ADVISORY] libcurl: wrong connect-only connection" (number mark "U       daniel@haxx. Aug 19  100/3348  " thread-indent "\"[oss-security] [SECURITY ADVISORY] libcurl: wrong connect-only connection\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] libcurl: wrong connect-only connection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26301 invoked by uid 550); 19 Aug 2020 07:53:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26265 invoked from network); 19 Aug 2020 07:53:11 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 19 Aug 2020 09:52:57 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.2008190951590.18028@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] libcurl: wrong connect-only connection

libcurl: wrong connect-only connection
======================================

Project curl Security Advisory, August 19th 2020 -
[Permalink](https://curl.haxx.se/docs/CVE-2020-8231.html)

VULNERABILITY
-------------

An application that performs multiple requests with libcurl's multi API and
sets the `CURLOPT_CONNECT_ONLY` option, might in rare circumstances experience
that when subsequently using the setup connect-only transfer, libcurl will
pick and use the wrong connection - and instead pick another one the
application has created since then.

`CURLOPT_CONNECT_ONLY` is the option to tell libcurl to not perform an actual
transfer, only connect. When that operation is completed, libcurl remembers
which connection it used for that transfer and "easy handle". It remembers the
connection using a pointer to the internal `connectdata` struct in memory.

If more transfers are then done with the same multi handle before the
connect-only connection is used, leading to the initial connect-only
connection to get closed (for example due to idle time-out) while also new
transfers (and connections) are setup, such a *new* connection might end up
getting the exact same memory address as the now closed connect-only
connection.

If after those operations, the application then wants to use the original
transfer's connect-only setup to for example use `curl_easy_send()` to send
raw data over that connection, libcurl could **erroneously** find an existing
connection still being alive at the address it remembered since before even
though this is now a new and different connection.

The application could then accidentally send data over that connection which
wasn't at all intended for that recipient, entirely unknowingly.

We are not aware of any exploit of this flaw.

INFO
----

This bug has existed at least since commit
[c43127414d](https://github.com/curl/curl/commit/c43127414d), first shipped in
curl 7.29.0.

This flaw cannot trigger for users of the curl tool but only for applications
using libcurl and the `CURLOPT_CONNECT_ONLY` option.

The flaw only happens if the exact same memory address is re-used again for
the new connection as for the original connect-only connection.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2020-8231 to this issue.

CWE-825: Expired Pointer Dereference

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.29.0 to and including 7.71.1
- Not affected versions: libcurl < 7.29.0 and libcurl >= 7.72.0

THE SOLUTION
------------

A [fix for CVE-2020-8231](https://github.com/curl/curl/commit/3c9e021f86872baae412a427e807fbfa2f3e8)

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.72.0

  B - Apply the patch on your curl version and rebuild

  C - Do not use `CURLOPT_CONNECT_ONLY`

TIMELINE
--------

This issue was first reported to the curl project on July 31, 2020.

This advisory was posted on August 19th 2020.

CREDITS
-------

This issue was reported by Marc Aldorasi. Patched by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se | Commercial curl support up to 24x7 is available!
                   | Private help, bug fixes, support, ports, new features
                   | https://www.wolfssl.com/contact/
