X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2211" "Saturday" "4" "June" "2016" "10:54:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160604145419.70E2B6C037C@smtpvmsrv1.mitre.org>" "50" "[oss-security] Re: expat hash collision fix too predictable?" "^Cc:" nil nil "6" "2016060414:54:19" "[oss-security] Re: expat hash collision fix too predictable?" (number mark "        cve-assign@m Jun  4   50/2211  " thread-indent "\"[oss-security] Re: expat hash collision fix too predictable?\"\n") "<5752E2F8.10805@pipping.org>" ("<5752E2F8.10805@pipping.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9311 invoked by uid 550); 4 Jun 2016 14:54:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9274 invoked from network); 4 Jun 2016 14:54:31 -0000
In-Reply-To: <5752E2F8.10805@pipping.org>
Message-Id: <20160604145419.70E2B6C037C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat,  4 Jun 2016 10:54:19 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: expat hash collision fix too predictable?
To: sebastian@pipping.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Please confirm that using CVE-2012-6702 for consequences of
> "unanticipated internal calls to srand" is what you intended.

Yes, we confirm that. (They are unanticipated both because of
thread-safety concerns, and because it's possible for an application
to have an important dependency on srand being called exactly once.)


> The hash DoS vulnerability CVE-2012-0876 was fixed to some extend in
> Expat 2.1.0, commit e3e81a6d
> ...
> The next release of Expat will not do internal calls to srand (or rand)
> any more but extract and use entropy from other sources.
> ...
> I suppose hash initialization with (too little /) second-based
> entropy still is part of the original CVE-2012-0876 (or the same again).

Use CVE-2016-5300 for the separate issue in which the original choices
of entropy source and RNG did not properly address the possibility of
a successful hash DoS attack. In other words, the code changes (in the
next release) to fix CVE-2016-5300 are needed because the original fix
for CVE-2012-0876 was insufficient. (We use separate CVE IDs when
follow-on work is needed to complete the solution to the same original
vulnerability finding.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXUuskAAoJEHb/MwWLVhi2/BMP/RmK0mqYwmznhALOJw+m24IY
PiLec/ly/1kBu4Ng03fo5YCZuNdM15ZIkHlTnNrkEdFvZpFin/5R8vXEZVjOPJgR
3De4Y/47PWm1v0H0KoOhK1a/zuO8KqL8MUJUlhokMp5SQnbo0u+ANYPVwB2yndmQ
uaoN2zjOx5aWIb9toDeFcNO2WprzsCVZdqwREHhXAmrXAV2NWfyYLvgk2nQ4wkHF
OdME+So20qrl+rq9GsvBV12ecjCk4WBtW1k/l9Tt1Q8BXGIr9iMIWtJjDc3+uXap
Y2DschCUfYd5J/H8GEnsOyRffLpw0cEQNS7+iYfttqJLY08XKfEwTnXdj1kW/Uny
AwkzgB6X//qmeD5+P90A/mI9ovpuc/MmjHTMqgLT+9DF9MRYLDqT8xwQ6yoo26f0
CuHvx83T2mSNfFjjWjBNC0YY7d8h/4Xefd43AdEWiX5MT/aGkL2vJCSqUqiVVFq4
SJQKixQ3C/y0yxqHNCbC9CQqDJYdepFXmIV2LzhWnwNsKtVW4c1xZNlNwsCl02lK
sTneAV4whgioqj66Du+6fFPifKdkx+ezkEBaauAJRySBtzbgj5+vqvbNKyn0BSLM
WCvRSyLL4nBc3hWi7JTq76eGwrYeB+xyst6+YehdR6oJ+NaqTsO8Ec6PKQtqicyg
ktXAm8A5yDPoTcCYOt12
=r9fV
-----END PGP SIGNATURE-----
