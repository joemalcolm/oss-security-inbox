Received: (qmail 19698 invoked by uid 550); 5 Nov 2025 07:14:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19657 invoked from network); 5 Nov 2025 07:14:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1762326852; bh=zILTWnj10AmojB7RBP55JxrTGcIAnF+uWFQA/VTxtsE=;
	h=Date:From:To:Subject:From;
	b=JdUxkT1crLdoJG9bMwOkAmMkFKBJ8o5tkguZ70sHfufA6BTmWSflQtGnjc7iuaJ4E
	 z1QJHCec1oOmkOiaMZRQj0kjGi5m4I03/8o/dVbTq++JmXCxuNbCfKUBqOnho5Lux7
	 fuScCE2M96hHa7JNf4lFlolRe8aYw9X50fek3nbNx9WSrEGxHhNqHmbcMg4uE8c0tF
	 W5gWnz1Q6btYP/wOvimCJbyBNQtYTb0OCwo/7t1f6cDsKq0AayfVJCl43ST7Lw65pw
	 TU3rw+5ZZx9EeML+Zd0RPT0jKluXrFsFux6KUac4oJx0l/UdFqj6mc0m2gbgS3SoVO
	 A1wT4OuAwHGAw==
Date: Wed, 5 Nov 2025 08:14:12 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <n22p0976-32rq-9n56-n206-5o42o51090r5@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: missing SFTP host verification with
 wolfSSH

missing SFTP host verification with wolfSSH
===========================================

Project curl Security Advisory, November 5 2025 -
[Permalink](https://curl.se/docs/CVE-2025-10966.html)

VULNERABILITY
-------------

curl's code for managing SSH connections when SFTP was done using the wolfSSH
powered backend was flawed and missed host verification mechanisms.

This prevents curl from detecting MITM attackers and more.

INFO
----

curl contains support for several different SSH backends, out of which wolfSSH
is the newest and one that seems to almost never be used. Of course partially
because of its incomplete state. When building curl, a single specific SSH
backend is selected at build-time.

The wolfSSH backend never supported SCP, only SFTP.

As the wolfSSH backend was documented to be incomplete and to fail tests, we
don't expect many users to use this code in production.

The missing known host support and host key verification for wolfSSH were
omissions from the time this code was added, as we expected and hoped it would
grow and get improved over time. As we never got bug reports or comments on
the code (which implies that nobody uses it) it never triggered anyone to
continue the improvements and complete the implementation.

We have since introduced the concept of experimental features, and should we
have done this attempt today this code would probably never have left the
experimental state.

We have now completely removed support for wolfSSH.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-10966 to this issue.

CWE-322: Key Exchange without Entity Authentication

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.69.0 to and including 8.16.0
- Not affected versions: curl < 7.69.0 and >= 8.16.0
- Introduced-in: https://github.com/curl/curl/commit/6773c7ca65cf2183295e56

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw also affects the curl command line tool.

SOLUTION
------------

Starting in curl 8.17.0, this mistake is fixed. Support for wolfSSH is
dropped.

- Fixed-in: https://github.com/curl/curl/commit/b011e3fcfb06d6c027859

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.17.0

  B - Build curl with another SSH backend

  C - Avoid using `sftp://`

TIMELINE
--------

This issue was reported to the curl project on September 23, 2025. We
contacted distros@openwall on October 29, 2025.

curl 8.17.0 was released on November 5 2025 around 07:00 UTC, coordinated
with the publication of this advisory.

The curl security team is not aware of any active exploits using this
vulnerability.

CREDITS
-------

- Reported-by: Stanislav Fort (Aisle Research)
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
