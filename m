X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2445" "Wednesday" "29" "November" "2017" "10:34:17" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1711280938440.30591@tvnag.unkk.fr>" "86" "[oss-security] [SECURITY ADVISORY] curl: NTLM buffer overflow via integer overflow" nil nil nil "11" "2017112909:34:17" "[oss-security] [SECURITY ADVISORY] curl: NTLM buffer overflow via integer overflow" (number mark "U       daniel@haxx. Nov 29   86/2445  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: NTLM buffer overflow via integer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31819 invoked by uid 550); 29 Nov 2017 09:34:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31801 invoked from network); 29 Nov 2017 09:34:30 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 29 Nov 2017 10:34:17 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1711280938440.30591@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: NTLM buffer overflow via integer
 overflow

NTLM buffer overflow via integer overflow
=========================================

Project curl Security Advisory, November 29th 2017 -
[Permalink](https://curl.haxx.se/docs/adv_2017-11e7.html)

VULNERABILITY
-------------

libcurl contains a buffer overrun flaw in the NTLM authentication code.

The internal function `Curl_ntlm_core_mk_ntlmv2_hash` sums up the lengths of
the user name + password (= SUM) and multiplies the sum by two (= SIZE) to
figure out how large storage to allocate from the heap.

The SUM value is subsequently used to iterate over the input and generate
output into the storage buffer. On systems with a 32 bit `size_t`, the math to
calculate SIZE triggers an integer overflow when the combined lengths of the
user name and password is larger than 2GB (2^31 bytes). This integer overflow
usually causes a very small buffer to actually get allocated instead of the
intended very huge one, making the use of that buffer end up in a buffer
overrun.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in commit
[be285cde3f5](https://github.com/curl/curl/commit/be285cde3f5), April 2006.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2017-8816 to this issue.

AFFECTED VERSIONS
-----------------

This is only an issue on 32 bit systems. It also requires the user and
password fields to use more than 2GB of memory combined, which in itself
should be rare.

- Affected versions: libcurl 7.15.4 to and including 7.56.1
- Not affected versions: libcurl < 7.15.4 and >= 7.57.0

curl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In libcurl version 7.57.0, the integer overflow is avoided.

A [patch for CVE-2017-8816](https://curl.haxx.se/CVE-2017-8816.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.57.0

  B - Apply the patch to your version and rebuild

  C - Put length restrictions on the user name and passwords you can pass to
      libcurl

TIME LINE
---------

It was reported to the curl project on November 6, 2017.  We contacted
distros@openwall on November 21.

curl 7.57.10 was released on November 29 2017, coordinated with the
publication of this advisory.

CREDITS
-------

Reported by Alex Nichols. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
