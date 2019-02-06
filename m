X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2301" "Wednesday" "6" "February" "2019" "08:12:33" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1902060809030.28483@tvnag.unkk.fr>" "84" "[oss-security] [SECURITY ADVISORY] curl: NTLMv2 type-3 header stack buffer overflow" "^Date:" nil nil "2" "2019020607:12:33" "[oss-security] [SECURITY ADVISORY] curl: NTLMv2 type-3 header stack buffer overflow" (number mark "U       daniel@haxx. Feb  6   84/2301  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: NTLMv2 type-3 header stack buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19747 invoked by uid 550); 6 Feb 2019 07:12:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19661 invoked from network); 6 Feb 2019 07:12:46 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1902060809030.28483@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Wed, 6 Feb 2019 08:12:33 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] curl: NTLMv2 type-3 header stack buffer
 overflow
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

NTLMv2 type-3 header stack buffer overflow
==========================================

Project curl Security Advisory, February 6th 2019 -
[Permalink](https://curl.haxx.se/docs/CVE-2019-3822.html)

VULNERABILITY
-------------

libcurl contains a stack based buffer overflow vulnerability.

The function creating an outgoing NTLM type-3 header
(`lib/vauth/ntlm.c:Curl_auth_create_ntlm_type3_message()`), generates the
request HTTP header contents based on previously received data. The check that
exists to prevent the local buffer from getting overflowed is implemented
wrongly (using unsigned math) and as such it does not prevent the overflow
from happening.

This output data can grow larger than the local buffer if very large "nt
response" data is extracted from a previous NTLMv2 header provided by the
malicious or broken HTTP server.

Such a "large value" needs to be around 1000 bytes or more. The actual payload
data copied to the target buffer comes from the NTLMv2 type-2 response header.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in [commit
86724581b6c](https://github.com/curl/curl/commit/86724581b6c), January 2014.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2019-3822 to this issue.

CWE-121: Stack-based Buffer Overflow

Severity: 7.3 (High)

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.36.0 to and including 7.63.0
- Not affected versions: libcurl < 7.36.0 and >= 7.64.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

A [patch for CVE-2019-3822](https://github.com/curl/curl/commit/50c9484278c63b958655a717844f0721263939cc)

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.64.0

  B - Apply the patch to your version and rebuild

  C - Turn off NTLM authentication

TIME LINE
---------

It was reported to the curl project on December 30, 2018. We contacted
distros@openwall on January 28.

curl 7.64.0 was released on February 6 2019, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Wenxiang Qian of Tencent Blade Team. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
