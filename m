Received: (qmail 28566 invoked by uid 550); 11 Dec 2024 07:27:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28548 invoked from network); 11 Dec 2024 07:27:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1733902038; bh=anoxwoVi3MbCkPVj94K4rMhG83IF6wG180PDTzFDPqo=;
	h=Date:From:To:Subject:From;
	b=OB61wYc0WKqxRXBtmg0cg9Z4ZkDfPScgal3sWRuza7CTM7j39dkmQf8bBghdb8tQk
	 PUhEkNCLc8ZBAujsuu33yPFkkzSI5Bkvv3YL3oH+QoPNKxzzA5MTQUawXOP92kp8p9
	 tkKtGjam/nuuoNq9h1yCSKKWQBWYQnPO0gkGRktVkrbdJ7LruBWQuAfoPSwHquRZOM
	 nsmRQhllG0/Dtwdyi9ciHSkG32EFn7wJYtF61F/6o1qMzxtcd/UKKBf1HHwvul4MkV
	 8a/NSpkCxKXJN/teJ3uBp4E32vzdTgFGky/15b5zKGRonzB92qd7iiLP1+vanLhdX6
	 T75jl9E81ajMg==
Date: Wed, 11 Dec 2024 08:27:18 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <q901so86-n601-s296-p516-o89p7q69p2n9@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2024-11053: netrc and redirect credential
 leak

netrc and redirect credential leak
==================================

Project curl Security Advisory, December 11th 2024 -
[Permalink](https://curl.se/docs/CVE-2024-11053.html)

VULNERABILITY
-------------

When asked to both use a `.netrc` file for credentials and to follow HTTP
redirects, curl could leak the password used for the first host to the
followed-to host under certain circumstances.

This flaw only manifests itself if the netrc file has an entry that matches
the redirect target hostname but the entry either omits just the password or
omits both login and password.

INFO
----

A curl transfer with `a.tld` that redirects to `b.tld` that uses a `.netrc`
like below (with a match, but no password specified for the second host),
would make curl pass on `alicespassword` as password even in the second
transfer to the separate host `b.tld`.

~~~
machine a.tld
   login alice
   password alicespassword

default
   login bob
~~~

This bug is **not** considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw also affects the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2024-11053 to this issue.

CWE-200: Exposure of Sensitive Information to an Unauthorized Actor

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 6.5 to and including 8.11.0
- Not affected versions: curl < 6.5 and >= 8.11.1
- Introduced-in: https://github.com/curl/curl/commit/ae1912cb0d494b48d514

libcurl is used by many applications, but not always advertised as such!

SOLUTION
------------

- Fixed-in: https://github.com/curl/curl/commit/e9b9bbac22c26cf6731

The fix also addresses a few other .netrc related issues.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 8.11.1

  B - Apply the patch to your version and rebuild

  C - Avoid using netrc together with redirects

TIMELINE
---------

This issue was reported to the curl project on November 8, 2024. We contacted
distros@openwall on December 3, 2024.

curl 8.11.1 was released on December 11 2024 around 06:00 UTC, coordinated
with the publication of this advisory.

CREDITS
-------

- Reported-by: Harry Sintonen
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se
