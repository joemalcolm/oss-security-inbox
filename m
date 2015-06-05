X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1339" "Friday" "5" "June" "2015" "07:12:00" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150605111200.E25536C0111@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution" nil nil nil "6" "2015060511:12:00" "[oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution" (number mark "        cve-assign@m Jun  5   36/1339  " thread-indent "\"[oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution\"\n") "<20150605100411.GA6837@kronk.local>" ("<20150605100411.GA6837@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27725 invoked by uid 550); 5 Jun 2015 11:12:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27706 invoked from network); 5 Jun 2015 11:12:12 -0000
In-Reply-To: <20150605100411.GA6837@kronk.local>
Message-Id: <20150605111200.E25536C0111@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri,  5 Jun 2015 07:12:00 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution
To: alessandro@ghedini.me

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>>> redis 3.0.2 and 2.8.21 have been released

>>> https://groups.google.com/forum/#!msg/redis-db/4Y6OqK8gEyk/Dg-5cejl-eUJ
>>> http://benmmurphy.github.io/blog/2015/06/04/redis-eval-lua-sandbox-escape/
>>> https://github.com/antirez/redis/commit/fdf9d455098f54f7666c702ae464e6ea21e25411

>> is the essence of the request that
>> the Redis upstream vendor believes that loading Lua bytecode was, by
>> itself, inherently an implementation mistake in Redis, and is now
>> fixed by the
>> https://github.com/antirez/redis/commit/fdf9d455098f54f7666c702ae464e6ea21e25411
>> change?

> Yes, that was the idea.

Use CVE-2015-4335.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVcYOgAAoJEKllVAevmvmsFBQIAKvwMAC/mxFC6McmnC7nNwc6
uyMWTis2RaG141VpwpoKfwfHlgq3tSZohchsU1phVwQgxgv6bd+9ZkufoxXl6rsu
V6pGCcb24eb5WHyHdZGzlqU5nTNYkjlerYcdr/YdAiIL9rNj8m1/7E5IwBRHRbgb
OJ1bnMsjwo4DOKKyhT8OouP4XuM9SgAUWQrCMF7VaaocHVJsV9gwleZTKqYUML+6
BXSEphTFao1gupJgS6yB0sHvle6N7Dl8Wn/PllmP6a8C0WQaC5304PHPfFjpOWwu
w/XhbUg8ZMElJZQDKZtHR3uTs8VEst077zip+upGwutI96uUxnsHkR/7aqBpIqI=
=yfeP
-----END PGP SIGNATURE-----
