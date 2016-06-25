X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2359" "Saturday" "25" "June" "2016" "08:54:42" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160625125442.479FD13B627@smtpvmsrv1.mitre.org>" "69" "[oss-security] Re: libical 0.47 SEGV on unknown address" nil nil nil "6" "2016062512:54:42" "[oss-security] Re: libical 0.47 SEGV on unknown address" (number mark "U       cve-assign@m Jun 25   69/2359  " thread-indent "\"[oss-security] Re: libical 0.47 SEGV on unknown address\"\n") "<6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>" ("<6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24558 invoked by uid 550); 25 Jun 2016 12:55:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24520 invoked from network); 25 Jun 2016 12:54:54 -0000
From: cve-assign@mitre.org
To: bperry.volatile@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>
Message-Id: <20160625125442.479FD13B627@smtpvmsrv1.mitre.org>
Date: Sat, 25 Jun 2016 08:54:42 -0400 (EDT)
Subject: [oss-security] Re: libical 0.47 SEGV on unknown address

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> filename=segv.ics.bug
> This bug attached had not been reported yet.
> 
> AddressSanitizer: SEGV on unknown address
> 0x4fbb7f in icalproperty_new_clone

Use CVE-2016-5823.


> https://bugzilla.mozilla.org/show_bug.cgi?id=1275400 (Opened a month
> ago. After Tyson reproed the bug in libical, no responses).

Use CVE-2016-5824.


> The following three bugs are distinct heap over-reads in libical
> (tested against libical 0.47 and 1.0) which have had little to no
> reception by Mozilla.

> https://bugzilla.mozilla.org/show_bug.cgi?id=1280832

Use CVE-2016-5825.


> https://bugzilla.mozilla.org/show_bug.cgi?id=1281041

Use CVE-2016-5826.


> https://bugzilla.mozilla.org/show_bug.cgi?id=1281043

Use CVE-2016-5827.


MITRE has no role in determining the list charter, but
http://oss-security.openwall.org/wiki/mailing-lists/oss-security says
"List Content Guidelines ... Any security issues that you post to
oss-security should be either already public or to be made public by
your posting." Because you apparently are publishing both the
research methodology (i.e., AddressSanitizer) and the types of
findings, this is close to a public disclosure but may be outside
the spirit of the list. (We definitely would not have responded here
if the one fully described case, segv.ics.bug, had been omitted.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXbn6tAAoJEHb/MwWLVhi2c7kQAKkdy6WSLV6WAmDF8uJWmJWE
phCI6blik9Gts60jWous3yGJwtKGCapxAiOKPSK4Cwoftx6fgzCjrdZpmrb9PCdK
4eBAByZhThVoFXRWQexWHJgbDG+JD+eMmNGfYMAEbCuVShqrvBeTi7jmB8BcbAzS
XbMfP8d9cjMD+P6Hq9HRXWytRqkdvQ7J54sr0oNmefdKtjbwR5M5mcCacYKomTVf
c0ejV1BuLWnQ/qxoz8eB+3tXUXZWtUbssXI+WnyAV88IuRc8SlSZtl/Y/dbBb68V
XBV+nlgWRyN66gbcMufV/1Uo2/E+xfqjKuj2VXdI+oWnsjjvAo7oIMVwN8hoJE7G
imX6srWFpfJ12qeFcD2b6Lp6KvI3wvDX3uirZ3RAzR0m0sOw/ZMR+uKx5QH4m06s
npqpfYLx/GqtCCjkBSirHqC4KKnFwG1GDDjHPIionZLQYSNOGWsZ3AEog/6a5lma
6k5cy+weP1HYdEnJdri01nH9xFk/A7KWbLo3q/ncQmJZiAO3fK45I/IJxjDlKgZ2
4LUdackzFqHDUYjy7mXciRRSgaHJwWWPs5WOV3I0W4P6nYd2iyBFTtJF1/U+cD22
GEfALIX1q2qq8BJhncP20cYLI7H8WWawVHYSpF2eyFPbfroY0zcfEiiH/54KiYrY
7FyUt5hF3MaNWaUx3Su5
=O5An
-----END PGP SIGNATURE-----
