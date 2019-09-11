X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2505" "Wednesday" "11" "September" "2019" "08:01:03" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1909102021410.29885@tvnag.unkk.fr>" "89" "[oss-security] [SECURITY ADVISORY] curl: FTP-KRB double-free" nil nil nil "9" "2019091106:01:03" "[oss-security] [SECURITY ADVISORY] curl: FTP-KRB double-free" (number mark "U       daniel@haxx. Sep 11   89/2505  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: FTP-KRB double-free\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: FTP-KRB double-free" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32219 invoked by uid 550); 11 Sep 2019 06:01:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32187 invoked from network); 11 Sep 2019 06:01:18 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 11 Sep 2019 08:01:03 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1909102021410.29885@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: FTP-KRB double-free

FTP-KRB double-free
===================

Project curl Security Advisory, September 11th 2019 -
[Permalink](https://curl.haxx.se/docs/CVE-2019-5481.html)

VULNERABILITY
-------------

libcurl can be told to use kerberos over FTP to a server, as set with the
`CURLOPT_KRBLEVEL` option.

During such kerberos FTP data transfer, the server sends data to curl in
blocks with the 32 bit size of each block first and then that amount of data
immediately following.

A malicious or just broken server can claim to send a very large block and if
by doing that it makes curl's subsequent call to `realloc()` to fail, curl
would then misbehave in the exit path and double-free the memory.

In practical terms, an up to 4 GB memory area may very well be fine to
allocate on a modern 64 bit system but on 32 bit systems it will fail.

Kerberos FTP is a rarely used protocol with curl. Also, Kerberos
authentication is usually only attempted and used with servers that the client
has a previous association with.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in November 2016 in [commit
0649433da53c7165f839e2](https://github.com/curl/curl/commit/0649433da53c7165f839e2).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2019-5481 to this issue.

CWE-415: Double Free

Severity: 6.3 (Medium)

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl >= 7.52.0 to and including 7.65.3
- Not affected versions: libcurl < 7.52.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

A [fix for CVE-2019-5481](https://github.com/curl/curl/commit/9069838b30fb3b48af0123e39f664cea683254a5)

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.66.0

  B - Apply the patch to your version and rebuild

  C - do not use `CURLOPT_KRBLEVEL`

TIMELINE
--------

The issue was reported to the curl project on September 3, 2019. The fix was done,
verified and communicated with the reporter on September 3, 2019.

We contacted distros@openwall on September 5.

This advisory was posted on September 11th 2019.

CREDITS
-------

Reported by Thomas Vegas. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se | Get the best commercial curl support there is - from me
                   | Private help, bug fixes, support, ports, new features
                   | https://www.wolfssl.com/contact/
