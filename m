X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2228" "Thursday" "23" "April" "2015" "03:03:00" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150423070300.497C93320B1@smtpvbsrv1.mitre.org>" "55" "[oss-security] Re: CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems" nil nil nil "4" "2015042307:03:00" "[oss-security] Re: CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems" (number mark "        cve-assign@m Apr 23   55/2228  " thread-indent "\"[oss-security] Re: CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems\"\n") "<87oamxjwrc.fsf@redhat.com>" ("<87oamxjwrc.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14130 invoked by uid 550); 23 Apr 2015 07:03:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14064 invoked from network); 23 Apr 2015 07:03:12 -0000
In-Reply-To: <87oamxjwrc.fsf@redhat.com>
Message-Id: <20150423070300.497C93320B1@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 23 Apr 2015 03:03:00 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems
To: mprpic@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> * [Bug 2797] ntp-keygen trapped in endless loop for MD5 keys on big-endian machines.
> https://bugs.ntp.org/show_bug.cgi?id=2797
> 
> Patch: http://bk1.ntp.org/ntp-stable/?PAGE=patch&REV=55199296N2gFqH1Hm5GOnhrk9Ypygg

> While the endless loop is not a security flaw per se

The unstated rationale here seems to be "ntp-keygen is a command-line
program that is not normally exposed in a way that crosses privilege
boundaries."

The documentation mentions:

  After setting up the environment it is advisable to update certificates
  from time to time, if only to extend the validity interval.
  Simply run
  @code{ntp-keygen}
  with the same flags as before to generate new certificates

It seems plausible that some sites may have created a web interface so
that operations staff can occasionally do a certificate update (maybe
with a new key), but these staff don't have login access to the
machine running NTP. The flaw would give them the new ability to
(sometimes) launch a CPU consumption attack. However, we have not
actually heard of anyone with a web-based ntp-keygen arrangement, so
we currently don't want to assign a CVE ID for that.

> the fact that
> ntp-keygen generates non-random keys is. If the lowest byte of the temp
> variable happens to be between 0x20 and 0x7f and not #, the generated
> MD5 key will consist of 20 identical characters, meaning only 93
> possible keys can be generated.

Use CVE-2015-3405 for this code error that results in a key space
that's much smaller than expected.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVOJgkAAoJEKllVAevmvmsSUMH/3wjdFZGeR9ubvEm6Yb0tq9q
lbbGuZSawcdPL/F45VYB+u75VTIjlJx6I693Rn+UwIvHYadOCARkk0/JBmf7GUyL
ANPAxy8RW0QnvB9eByTgiX2SREtGVkIusRSgOB37mZf5+rsjNZTbcEojBO0rIOO3
6PeslrWHMehqnp3rN8phCZWArinLCBaI/f+ohLLA0uYjpNM7MNvA1ULn9F0tuuic
ZOPMTCLynPDm9gGXS0yv7HWuE5Jni05ngq6+NcAI7xeCqpJQQ2uBB1JmJrg12e/R
yS/JSn+s7BFGb59/WPtg1fvIFiv2EAKU4DhhwP0vawzNCZcnZqESLF1umaQKsDs=
=yDz2
-----END PGP SIGNATURE-----
