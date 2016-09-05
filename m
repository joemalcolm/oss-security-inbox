X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3380" "Monday" "5" "September" "2016" "18:45:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160905224519.95D836C0FBC@smtpvmsrv1.mitre.org>" "86" "[oss-security] Re: CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis" nil nil nil "9" "2016090522:45:19" "[oss-security] Re: CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis" (number mark "U       cve-assign@m Sep  5   86/3380  " thread-indent "\"[oss-security] Re: CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis\"\n") "<87r38ze3vk.fsf@angela.anarc.at>" ("<87r38ze3vk.fsf@angela.anarc.at>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3998 invoked by uid 550); 5 Sep 2016 22:45:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3966 invoked from network); 5 Sep 2016 22:45:31 -0000
From: cve-assign@mitre.org
To: anarcat@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <87r38ze3vk.fsf@angela.anarc.at>
Message-Id: <20160905224519.95D836C0FBC@smtpvmsrv1.mitre.org>
Date: Mon,  5 Sep 2016 18:45:19 -0400 (EDT)
Subject: [oss-security] Re: CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> inspircd published 2.0.23 that fixes an issue with SASL
> authentication. The details are here:
> 
> http://www.inspircd.org/2016/09/03/v2023-released.html
> 
> All versions are affected.

>> This release fixes a serious security vulnerability in m_sasl in
>> combination with any services that support SASL EXTERNAL. To be
>> vulnerable you must have m_sasl loaded, and have services which
>> support SASL EXTERNAL authentication.
>> 
>> This vulnerability allows any attacker to spoof certificate
>> fingerprints via crafted SASL messages to the IRCd. This allows any
>> user to login as any other user that they know the certificate
>> fingerprint of, and that user has services configured to accept SASL
>> EXTERNAL login requests for.

>> https://github.com/inspircd/inspircd/commit/74fafb7f11b06747f69f182ad5e3769b665eea7a

>> https://www.irc.wiki/InspIRCd

>> InspIRCd is an IRC daemon written entirely from scratch, it is one
>> of the few IRC daemons to be written in C++

Use CVE-2016-7142 for this issue only in the InspIRCd codebase.


>> This bug appears more widespread than just InspIRCd, and seems to
>> affect most or all other implementations of SASL EXTERNAL, including
>> Charybdis and UnrealIRCd.


> It seems to also affect Charybdis, which fixed the issue in the
> upcoming 3.5.3 release:
>
> https://github.com/charybdis-ircd/charybdis/commit/818a3fda944b26d4814132cee14cfda4ea4aa824

Use CVE-2016-7143 for this issue only in the Charybdis codebase.


>> https://forums.unrealircd.org/viewtopic.php?f=1&t=8588
>> 
>> Security: SASL security issue (UnrealIRCd 4.0.6 & 3.2.10.7 released)
>> 
>> A security issue was detected in a number of IRCd's, including
>> UnrealIRCd, regarding the way SASL is implemented.
>> 
>> An attacker can send an SSL fingerprint of his choice to services when
>> doing SASL authentication. An attacker can compromise a services
>> account if the user has an SSL fingerprint stored in services.
>> 
>> https://github.com/unrealircd/unrealircd/commit/f473e355e1dc422c4f019dbf86bc50ba1a34a766

Use CVE-2016-7144 for this issue only in the UnrealIRCd codebase.

(We realize that the file is m_sasl.c, the function is m_authenticate,
and the array is parv in both the Charybdis case and the UnrealIRCd
case, but we decided not to try to share a CVE ID between these two
products.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXzfUcAAoJEHb/MwWLVhi2+TUQAJiZ9E61fr6h/APTcz7CWDAJ
Hi1ixYOqZAVnGNevJ2Q7+kmg9h872ftwX7euCmMoLFBHPILaBhELbbnw5N1wa09u
PfrQFf/3D0BwrKd50Pnu/N5+5PRJ6Oy7Oa5aaf1vdeQbbaQbO2P6YV5MrcB/NJoe
Lh5GoLM3oqGS5qde+ep3RKLeOixu2KqopaP9JAH1e2a25m0Wva92tQVYqgGIxROa
PPiRRRXFDbm8j9VZ4D4VBHlJhdjwjw85OT/WNxXx3wBbeJwdtI+1puS5OEhQFGsl
Eh993vGHyTCvw2obVn2YnIng1qHfkdfe5lxjJBbE5/a6yFmNQAS/zUURBL01DPlI
uhWYablVV9Vv8++gaezGtJd1OI60Kl0vPch44yzvDOeI5sQHjQNMMwQ2oe+gAlcv
grrkVqtKd2hkNBh1NATA9MoTIErYZsWZCddGPo50IqHyqaZ5eyJaj0JELOF8E7q/
2oe0UWuXcvcD+8oAZvbEVJuBUI+ZV+d6wcL4tEOcEG4gL5qDh0hOi8aY/u5zi+fb
gLcjoBW9TzlGZy3f0CZ2N0s3v2xFai19JdSLzRM+TXzFHf4PQ5MoexWgk10UPdsk
9OJXqTl0LqEMqTHPOLXw08mhgWaU55vRI3wCjnUyTY0GdmUZpLy3R8yWCJk5RUmy
g5+Do/FYzRkh/k/3L73U
=c9S9
-----END PGP SIGNATURE-----
