X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3392" "Monday" "24" "June" "2019" "07:46:14" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1906240745030.23737@tvnag.unkk.fr>" "98" "[oss-security] curl: Windows OpenSSL engine code injection" "^Date:" nil nil "6" "2019062405:46:14" "[oss-security] curl: Windows OpenSSL engine code injection" (number mark "        daniel@haxx. Jun 24   98/3392  " thread-indent "\"[oss-security] curl: Windows OpenSSL engine code injection\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] curl: Windows OpenSSL engine code injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13727 invoked by uid 550); 24 Jun 2019 05:46:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13693 invoked from network); 24 Jun 2019 05:46:28 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1906240745030.23737@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Mon, 24 Jun 2019 07:46:14 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] curl: Windows OpenSSL engine code injection
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

Windows OpenSSL engine code injection
=====================================

Project curl Security Advisory, June 24th 2019 -
[Permalink](https://curl.haxx.se/docs/CVE-2019-5443.html)

VULNERABILITY
-------------

A non-privileged user or program can put code and a config file in a known
non-privileged path (under `C:/usr/local/`) that will make curl automatically
run the code (as an openssl "engine") on invocation. If that curl is invoked
by a privileged user it can do anything it wants.

This flaw exists in the official curl-for-windows binaries built and hosted by
the curl project (all versions up to and including 7.65.1_1). It **does not**
exist in the curl executable shipped by Microsoft, bundled with Windows 10. It
possibly exists in other curl builds for Windows too that uses OpenSSL.

The curl project has provided official curl executable builds for Windows
since [late August
2018](https://daniel.haxx.se/blog/2018/08/27/blessed-curl-builds-for-windows/).

There exists proof of concept exploits of this flaw.

INFO
----

This bug sneaked in partly due to insecure default build options in OpenSSL
when built cross-compiled and partly due to a misleading commit message in the
curl commit that made it possible to disable this feature.

This bug does not exist in the curl or libcurl source code but in the scripts
for the Windows build.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2019-5443 to this issue.

CWE-94: Code Injection

Severity: High

AFFECTED VERSIONS
-----------------

- Affected versions: all curl-for-windows downloads before **7.65.1_2**.

THE SOLUTION
------------

Replace your downloaded curl version on Windows with the updated download
package from the [curl site](https://curl.haxx.se/windows/).

The build fix for curl-for-win correcting this flaw is in [this
commit](https://github.com/curl/curl-for-win/commit/51b658a76594942cf1d6f227d8fc4732bb8ec277). It
completely disables curl's ability to load an OpenSSL config when invoked.

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to a fixed curl executable

  B - Remove curl executable downloaded from curl.haxx.se and instead use the
      one shipped by Microsoft in Windows 10

TIMELINE
--------

The issue was reported to the curl project on June 12, 2019. The fix was done,
verified and communicated with the reporter on June 12, 2019.

While planning the release schedule of this advisory and coordinating with
other affected projects, we discovered that this exact flaw had already been
published and discussed in public before we were informed about it. A few
other OpenSSL-using projects on Windows also had already fixed their builds
for this exact problem. Realizing this, we switched gears and decided to
publish as soon as possible to minimize user impact.

curl 7.65.1_2 for Windows was uploaded and made available on June 21 2019 -
the older, vulnerable builds, were removed from the site at the same time.

This advisory was posted on June 24th 2019.

CREDITS
-------

Reported by Rich Mirch. OpenSSL patch by Viktor Szakats.

Thanks a lot!

-- 

  / daniel.haxx.se | Get the best commercial curl support there is - from me
                   | Private help, bug fixes, support, ports, new features
                   | https://www.wolfssl.com/contact/
