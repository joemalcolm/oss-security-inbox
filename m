X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1536" "Wednesday" "4" "January" "2017" "12:16:49" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<a607fa163dc245808d66c3f1b4af06ba@imshyb02.MITRE.ORG>" "43" "[oss-security] Re: Firejail local root exploit" "^CC:" nil nil "1" "2017010417:16:49" "[oss-security] Re: Firejail local root exploit" (number mark "        cve-assign@m Jan  4   43/1536  " thread-indent "\"[oss-security] Re: Firejail local root exploit\"\n") "<20170104131248.GA28596@suse.de>" ("<20170104131248.GA28596@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27785 invoked by uid 550); 4 Jan 2017 17:17:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27751 invoked from network); 4 Jan 2017 17:17:03 -0000
In-Reply-To: <20170104131248.GA28596@suse.de>
Message-ID: <a607fa163dc245808d66c3f1b4af06ba@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>
Date: Wed, 4 Jan 2017 12:16:49 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Firejail local root exploit
To: <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>  * Firejail has too broad attack surface that allows users
>  * to specify a lot of options, where one of them eventually
>  * broke by accessing user-files while running with euid 0.

> const char *const ldso = "/etc/ld.so.preload";
> ...
> snprintf(path, sizeof(path) - 1, "%s/.firenail/.Xauthority", home);
> ...
> symlink(ldso, path)

Use CVE-2017-5180.


>  * There are some other similar races.

We feel that other races, when they are announced, should have different
CVE IDs.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYbS2sAAoJEHb/MwWLVhi2h4sP/0ZdfLYZ5VQz6wINwE6Uqz9v
T9fJj9BSxOmB2fupa+zaWEPUgdYsDLqlDo58l7SuskkWey6mPKWwghXm7c8ixWTR
/WWrpso7BQBw8HMKs9hn3Z8Ftx4c1pJ6K2ofMwURQ8lFG31u2pxb2SMzKyOgXIAe
KTlHgWMUuKl8QfrZVB2DZFiMdtbg/Q08+UaRWFtN5A9PYyhXH+ACLUWO6zjnxvYx
fRPzwrYTRYQuJwGDypRct6kjW5otH1CEzrcxtHQXyMd+1/OvtxRtLbXoUwnK5u6p
Ja5XkbQ399ll0k1fjJ9Cnd1ZF9hfHvNHS8a/kCNYyyh/jzEATwb0lVbdvpvb4684
ZA8kKiwRyaGNK5z3AdIP5CLr8tG+JXAQomGOMJS/plCh/6h+wSi08zFVygJhyVFC
sMPpxWS7x19HxsKY2ftPA3WkZ6EtSg9B/PpSE2N160AvADaSjZbtkhKfSAw31Mh3
VuSXWQb55ZhX04Tfjpn5ulTFRk1+723CJ8c/C4GZRDh4u1Uq5UF67v42AGciX49j
05bxf2Hchr+ObJ8teNn+hb2EzAksNBWq5o/AOPUSSC4A4oHJazvf50t9jm3Umebp
7XcvgYWyaYNJPeR8ukH/776oQOip7jJDNjgNnobGE1dhgTOmKFTPQzO0bXn/p5bG
oWyUz0UzdkSOBT1UvgIR
=kDOG
-----END PGP SIGNATURE-----
