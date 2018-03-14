X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2772" "Wednesday" "14" "March" "2018" "07:55:04" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1803132313170.29869@tvnag.unkk.fr>" "92" "[oss-security] [SECURITY ADVISORY] curl: FTP path trickery leads to NIL byte out of bounds write" nil nil nil "3" "2018031406:55:04" "[oss-security] [SECURITY ADVISORY] curl: FTP path trickery leads to NIL byte out of bounds write" (number mark "U       daniel@haxx. Mar 14   92/2772  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: FTP path trickery leads to NIL byte out of bounds write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32644 invoked by uid 550); 14 Mar 2018 06:55:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32606 invoked from network); 14 Mar 2018 06:55:17 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 14 Mar 2018 07:55:04 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1803132313170.29869@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: FTP path trickery leads to NIL byte out
 of bounds write

FTP path trickery leads to NIL byte out of bounds write
=======================================================

Project curl Security Advisory, March 14th 2018 -
[Permalink](https://curl.haxx.se/docs/adv_2018-9cd6.html)

VULNERABILITY
-------------

curl can be fooled into writing a zero byte out of bounds.

This bug can trigger when curl is told to work on an FTP URL, with the setting
to only issue a single CWD command (`--ftp-method singlecwd` or the libcurl
alternative `CURLOPT_FTP_FILEMETHOD`).

curl then URL-decodes the given path, calls strlen() on the result and deducts
the length of the file name part to find the end of the directory within the
buffer. It then writes a zero byte on that index, in a buffer allocated on the
heap.

If the directory part of the URL contains a "%00" sequence, the directory
length might end up shorter than the file name path, making the calculation
`size_t index = directory_len - filepart_len` end up with a huge index
variable for where the zero byte gets stored: `heap_buffer[index] = 0`. On
several architectures that huge index will wrap and work as a negative value,
thus overwriting memory *before* the intended heap buffer.

By using different file part lengths and putting %00 in different places in
the URL, an attacker that can control what paths a curl-using application uses
can write that zero byte on different indexes.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in December 2004 in [this
commit](https://github.com/curl/curl/commit/6e1e9caa32da0995).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-1000120 to this issue.

CWE-122: Heap-based Buffer Overflow

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.12.3 to and including curl 7.58.0
- Not affected versions: curl < 7.12.3 and curl >= 7.59.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In curl version 7.59.0, curl rejects FTP URLs that contain any "control
characters". That is byte values below ascii 32.

A [patch for CVE-2018-1000120](https://curl.haxx.se/CVE-2018-1000120.patch) is available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.59.0

  B - Apply the patch to your version and rebuild

  C - Do not enable singlecwd mode for FTP transfers

TIME LINE
---------

It was reported to the curl project on January 29, 2018

We contacted distros@openwall on March 7, 2018.

curl 7.59.0 was released on March 14 2018, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Duy Phan Thanh. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
