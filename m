X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3743" "Wednesday" "3" "June" "2015" "01:44:57" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150603054457.9E12972E097@smtpvbsrv1.mitre.org>" "77" "[oss-security] Re: CVE request: vulnerability in the kernel tty subsystem." nil nil nil "6" "2015060305:44:57" "[oss-security] Re: CVE request: vulnerability in the kernel tty subsystem." (number mark "        cve-assign@m Jun  3   77/3743  " thread-indent "\"[oss-security] Re: CVE request: vulnerability in the kernel tty subsystem.\"\n") "<435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>" ("<435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5140 invoked by uid 550); 3 Jun 2015 05:45:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5122 invoked from network); 3 Jun 2015 05:45:09 -0000
In-Reply-To: <435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>
Message-Id: <20150603054457.9E12972E097@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  3 Jun 2015 01:44:57 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: vulnerability in the kernel tty subsystem.
To: wmealing@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> a new tty thread could hold a reference to the ldisc lock used during
> the shutdown phase in the original thread and create a deadlock.

> This section of code was re-written upstream by creating a read/write semaphore to
> specially to handle ldisc, ldsem ( 4898e640caf03fdbaf2122d5a33949bf3e4a5b34 ).  
> 
> No root permissions are required to recreate the deadlock.

Use CVE-2015-4170.

We realize that there was debate about whether it is right to assign
a CVE ID. Here's a comment on that. (The rest of this message doesn't
have any discussion of this old kernel vulnerability itself.)

> From: Greg KH <greg@kroah.com>
> Date: Fri, 29 May 2015 15:04:30 -0700
> 
> And that's it, it's not a "we need to track this", for such old bugs
> (and by "old" I would classify anything older than a year for the kernel
> as old, as that's hundreds of thousands of patches ago)?  It's the job
> of companies that insist on using such old software, to maintain and
> keep them up to date, it's not the job of the "community" here to have
> to deal with assigning issues to things that are really old and already
> fixed.

Our perspective is that there are (at least) three different issues
related to oss-security messages about a fixed-two-years-ago bug.

  1. Possibly the bug should not be discussed here because too few
     people are interested. If the list rules were changed from
     "Public security issues only" to something like "Recent public
     security issues only," then we would follow the new rules. We
     haven't announced a preference for whether there should be a
     change. Also, everyone already has the option to self-select,
     e.g., if a person thinks their security issue is less interesting
     because it's two years old, they could choose to send their CVE
     request only to MITRE directly. There are no cases in which we
     require anyone to send any request to oss-security.

  2. Possibly a CVE ID should not be sent here because that, in
     effect, means everyone receives twice as many messages about
     fixed-two-years-ago bugs. It's conceivable that MITRE could make
     it easier for people to filter out these messages, e.g., if we
     added something in the header whenever a message from us was only
     about an ID number and wasn't an attempt to contribute to
     discussing a vulnerability.

  3. Possibly a new CVE ID should not exist at all for a
     fixed-two-years-ago bug. This is a type of change that MITRE
     conceivably might want to make in the future. Right now, however,
     we haven't ever announced that a CVE request has to be within N
     months or years of a bug fix or disclosure, and we're not going
     to be changing that abruptly. More specifically, we're not going
     to abruptly drop support for an existing use case in which
     companies who ship older kernels can have CVEs for older issues.
     This doesn't mean that we can add new support for all possible
     alternative use cases, e.g., bulk requests for every current bug.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVbpMzAAoJEKllVAevmvmswBQH/RxV3BFEJ0kphtIB2SMHjzYT
SpPGqfbooC7ng+aZcEUqVGrun7dbU2qHgBZMAjPDW2GNO3qukJvfNebpel8ERtS+
Y7AT/SUdNFekbKotHKT1lave9NxuGalLCxLM/Ed702M3ldwe865tIx3CPaPkYgHu
vxI3Os1FSwkV1QT7zaO8KZF1vyW6rsDKfub+erg3j/pAMyb1h1J+SZpfP5EZIsKR
eeDFfjtdTcCwbS21Z4ND5Qlk48l1o81rZvQIhhVnaYnA6K31Pk7zT9S3t5Isa4D2
DTaheht2VEXOZMDAw0jZaot5GHYp7V3Rxe/pl/Ke71Tu1fYEW7RMQiPqHDS172s=
=r/3a
-----END PGP SIGNATURE-----
