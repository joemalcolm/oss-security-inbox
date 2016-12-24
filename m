X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1528" "Saturday" "24" "December" "2016" "12:30:11" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<77a1786f87af437db7e807c5380cdd29@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: Qt QXmlSimpleReader" "^CC:" nil nil "12" "2016122417:30:11" "[oss-security] Re: Qt QXmlSimpleReader" (number mark "        cve-assign@m Dec 24   37/1528  " thread-indent "\"[oss-security] Re: Qt QXmlSimpleReader\"\n") "<20161224151833.GA6612@openwall.com>" ("<20161224151833.GA6612@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11992 invoked by uid 550); 24 Dec 2016 17:30:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11938 invoked from network); 24 Dec 2016 17:30:23 -0000
In-Reply-To: <20161224151833.GA6612@openwall.com>
Message-ID: <77a1786f87af437db7e807c5380cdd29@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>
Date: Sat, 24 Dec 2016 12:30:11 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Qt QXmlSimpleReader
To: <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

In case anyone immediately needs to track QXmlSimpleReader behavior,
we're assigning an ID for one issue that seems best understood at this
point:

> I just found that (at least for a rebuild of the RHEL7 package of
> qt-4.8.5-12) it is possible to trigger a stack overflow by nesting many
> XML opening tags. Luckily, there doesn't appear to be a way to jump
> over the guard page to another thread's stack on RHEL7/x86_64, but
> that's platform specific.

Use CVE-2016-10040.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYXrAJAAoJEHb/MwWLVhi238YP+gIKi52EJvWROru80v6ROwz/
KkfY2zyKmbbp3EQ33yuzjtdO2UWHW99oYph+4adlYdpMo3szFHSrHc8zvsdsM1j6
xbZK3bj8IYp2jN+B8adKEnY3VgsmXJ2kqa6B+Fvs6fDBjSB0oJ5WBHSBATrv0vg5
zSHSVjf3I3aNEI7MFsGNWqY1T4QZmpUOx4td2ofAToxZqyYeHhcfxXM4kuhXrraL
Dve31NR0RtWELMLexx9c1GFTftkhzspoXeVachJOoxeaGxZfOnXAEf7+6z8mq3cV
ytRFhdncbLwuwAbxy34po7LXh0m5LbQJuBc3RUSntxIb3E6n52X4fpf9CYvQDavq
s4lPuMMo4OyQ7uEEsf20T2k4nAsme18QigKmGAIPDnwVIJp0HStjky5+HgkK/5by
bSttkBIyHNaYf9LTRVBZD/NWeoSkVhen6rqcKhd4JNy3DduoirRhp0rUN7QteW35
5tvvAXeyfxd7FWLBBFgE2VQeDm9StrobdEuFUL/SFimrN0e/UX9RHBU34b6D/XlJ
FaRj7eSwEtGl2lTZym27xuSIcQ08m4SU+paUcWxcIjcDgNI7f9oIAPLrcB7b6fNz
isuovpCpGIDROdc8MuBu0SAmz3wVipC9x0aQcoVE+VH18dJtaB+aoiEY57Eri5Fp
mIbe+axP5b0rPKySAXRx
=sy6o
-----END PGP SIGNATURE-----
