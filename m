X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2625" "Wednesday" "31" "October" "2018" "07:55:37" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1810310753080.4385@tvnag.unkk.fr>" "95" "[oss-security] [SECURITY ADVISORY] curl - SASL password overflow via integer overflow" nil nil nil "10" "2018103106:55:37" "[oss-security] [SECURITY ADVISORY] curl - SASL password overflow via integer overflow" (number mark "U       daniel@haxx. Oct 31   95/2625  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl - SASL password overflow via integer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22305 invoked by uid 550); 31 Oct 2018 06:55:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22284 invoked from network); 31 Oct 2018 06:55:51 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 31 Oct 2018 07:55:37 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1810310753080.4385@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl - SASL password overflow via integer
 overflow

SASL password overflow via integer overflow
===========================================

Project curl Security Advisory, October 31st 2018 -
[Permalink](https://curl.haxx.se/docs/CVE-2018-16839.html)

VULNERABILITY
-------------

libcurl contains a buffer overrun in the SASL authentication code.

The internal function `Curl_auth_create_plain_message` fails to correctly
verify that the passed in lengths for name and password aren't too long, then
calculates a buffer size to allocate.

On systems with a 32 bit `size_t`, the math to calculate the buffer size
triggers an integer overflow when the user name length exceeds 2GB (2^31
bytes). This integer overflow usually causes a very small buffer to actually
get allocated instead of the intended very huge one, making the use of that
buffer end up in a heap buffer overflow.

(This bug is very similar to
[CVE-2017-14618](https://curl.haxx.se/docs/CVE-2018-14618.html).)

We are not aware of any exploit of this flaw.

INFO
----

The affected function can only be invoked when using POP3(S), IMAP(S) or
SMTP(S).

This bug was introduced in [commit
c56f9797e7feb7c2dc](https://github.com/curl/curl/commit/c56f9797e7feb7c2dc),
August 2013.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-16839 to this issue.

CWE-131: Incorrect Calculation of Buffer Size

Severity: 3.2 (Low)

AFFECTED VERSIONS
-----------------

This issue is only present on 32 bit systems. It also requires the username
field to use more than 2GB of memory, which should be rare.

- Affected versions: libcurl 7.33.0 to and including 7.61.1
- Not affected versions: libcurl < 7.33.0 and >= 7.62.0

curl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In libcurl version 7.62.0, the integer overflow is avoided. An error will be
returned if a too long user name is attempted.

A [patch for
CVE-2018-16839](https://github.com/curl/curl/commit/f3a24d7916b9173c69a3e0ee790102993833d6c5)
is available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.62.0

  B - Apply the patch to your version and rebuild

  C - Put length restrictions on the username field you can pass to libcurl

TIME LINE
---------

It was reported to the curl project on September 6, 2018.  We contacted
distros@openwall on October 22.

curl 7.62.0 was released on October 31 2018, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Harry Sintonen. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
