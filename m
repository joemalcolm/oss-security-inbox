X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2481" "Wednesday" "14" "September" "2016" "08:13:05" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1609140812200.31085@tvnag.unkk.fr>" "84" "[oss-security] [SECURITY VULNERABILITY] curl escape and unescape integer overflows" "^Date:" nil nil "9" "2016091406:13:05" "[oss-security] [SECURITY VULNERABILITY] curl escape and unescape integer overflows" (number mark "U       daniel@haxx. Sep 14   84/2481  " thread-indent "\"[oss-security] [SECURITY VULNERABILITY] curl escape and unescape integer overflows\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5387 invoked by uid 550); 14 Sep 2016 06:13:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5361 invoked from network); 14 Sep 2016 06:13:18 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1609140812200.31085@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Wed, 14 Sep 2016 08:13:05 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY VULNERABILITY] curl escape and unescape integer
 overflows
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

curl escape and unescape integer overflows
==========================================

Project cURL Security Advisory, September 14, 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20160914.html)

VULNERABILITY
-------------

The four libcurl functions `curl_escape()`, `curl_easy_escape()`,
`curl_unescape` and `curl_easy_unescape` perform string URL percent escaping
and unescaping. They accept custom string length inputs in signed integer
arguments. (The functions having names without "easy" being the deprecated
versions of the others.)

The provided string length arguments were not properly checked and due to
arithmetic in the functions, passing in the length 0xffffffff (2^32-1 or
`UINT_MAX` or even just -1) would end up causing an allocation of zero bytes
of heap memory that curl would attempt to write gigabytes of data into.

The use of 'int' for this input type in the API is of course unwise but has
remained so in order to maintain the API over the years.

We are not aware of any exploit of this flaw.

INFO
----

This flaw does not affect the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-7167 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following libcurl versions.

- Affected versions: libcurl 7.11.1 to and including 7.50.2
- Not affected versions: libcurl < 7.11.1 and libcurl >= 7.50.3

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.50.3, these functions will deny negative string lengths from
being used.

A [patch for CVE-2016-7167](https://curl.haxx.se/CVE-2016-7167.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.50.3

  B - Apply the patch to your version and rebuild

  C - Make sure you don't pass in string lengths larger than `INT_MAX`
      (typically 2^31) or negative values to the `curl_easy_(un)escape()`
      functions!

TIME LINE
---------

It was first reported to the curl project on September 8 by the Mitre CVE
Assignment Team based on the discussions in [PHP bug report
72674](https://bugs.php.net/bug.php?id=72674).

libcurl 7.50.3 was released on September 14 2016, coordinated with the
publication of this advisory.

CREDITS
-------

Thanks to the Mitre CVE Assignment Team for reporting this to us.

-- 

  / daniel.haxx.se
