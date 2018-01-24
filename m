X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2706" "Wednesday" "24" "January" "2018" "08:11:37" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1801240022210.4042@tvnag.unkk.fr>" "91" "[oss-security] [SECURITY ADVISORY] curl: HTTP authentication leak in redirects" nil nil nil "1" "2018012407:11:37" "[oss-security] [SECURITY ADVISORY] curl: HTTP authentication leak in redirects" (number mark "U       daniel@haxx. Jan 24   91/2706  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: HTTP authentication leak in redirects\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9312 invoked by uid 550); 24 Jan 2018 07:11:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8113 invoked from network); 24 Jan 2018 07:11:50 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 24 Jan 2018 08:11:37 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1801240022210.4042@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: HTTP authentication leak in redirects

HTTP authentication leak in redirects
=====================================

Project curl Security Advisory, January 24th 2018 -
[Permalink](https://curl.haxx.se/docs/adv_2018-b3bf.html)

VULNERABILITY
-------------

libcurl might leak authentication data to third parties.

When asked to send custom headers in its HTTP requests, libcurl will send that
set of headers first to the host in the initial URL but also, if asked to
follow redirects and a 30X HTTP response code is returned, to the host
mentioned in URL in the `Location:` response header value.

Sending the same set of headers to subsequest hosts is in particular a problem
for applications that pass on custom `Authorization:` headers, as this header
often contains privacy sensitive information or data that could allow others
to impersonate the libcurl-using client's request.

We are not aware of any exploit of this flaw.

INFO
----

This bug has existed since before curl 6.0. It existed in the first commit we
have recorded in the project.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-1000007 to this issue.

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.1 to and including 7.57.0
- Not affected versions: libcurl >= 7.58.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In libcurl version 7.58.0, custom `Authorization:` headers will be limited the
same way other such headers is controlled within libcurl: they will only be
sent to the host used in the original URL unless libcurl is told that it is ok
to pass on to others using the `CURLOPT_UNRESTRICTED_AUTH` option.

**NOTE**: this solution creates a slight change in behavior. Users who
actually want to pass on the header to other hosts now need to give curl that
specific permission. You do this with
[--location-trusted](https://curl.haxx.se/docs/manpage.html#--location-trusted)
with the curl command line tool.

A [patch for
CVE-2018-1000007](https://github.com/curl/curl/commit/af32cd3859336ab.patch)
is available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.58.0

  B - Apply the patch to your version and rebuild

  C - Do not enable CURLOPT_FOLLOWLOCATION if you pass on custom Authorization
      headers

TIME LINE
---------

It was reported to the curl project on January 18, 2018

We contacted distros@openwall on January 19.

curl 7.58.0 was released on January 24 2018, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Craig de Stigter. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
