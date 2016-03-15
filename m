X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1549" "Tuesday" "15" "March" "2016" "13:02:16" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160315170216.6AB906C445F@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: ipv4: Don't do expensive useless work during inetdev destroy" "^Cc:" nil nil "3" "2016031517:02:16" "[oss-security] Re: CVE request: ipv4: Don't do expensive useless work during inetdev destroy" (number mark "        cve-assign@m Mar 15   39/1549  " thread-indent "\"[oss-security] Re: CVE request: ipv4: Don't do expensive useless work during inetdev destroy\"\n") "<56E80973.80606@virtuozzo.com>" ("<56E80973.80606@virtuozzo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32062 invoked by uid 550); 15 Mar 2016 17:02:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32034 invoked from network); 15 Mar 2016 17:02:27 -0000
In-Reply-To: <56E80973.80606@virtuozzo.com>
Message-Id: <20160315170216.6AB906C445F@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, solar@openwall.com, gorcunov@virtuozzo.com, davem@davemloft.net, khorenko@virtuozzo.com
Date: Tue, 15 Mar 2016 13:02:16 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: ipv4: Don't do expensive useless work during inetdev destroy
To: vvs@virtuozzo.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Destroy of network interface with huge number of ipv4 addresses
> keeps rtnl_lock for a very long time (up to hour).
> It blocks many network related operations,

>> in this scenerio we do two pointless things which can
>> be very expensive

> The problem is especially important for containers,
> container owner have enough permission to enable this trigger

> http://git.kernel.org/cgit/linux/kernel/git/davem/net-next.git/patch/?id=fbd40ea0180a2d328c5adc61414dc8bab9335ce2

Use CVE-2016-3156.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW6D2BAAoJEL54rhJi8gl5aPcQAI4vToE8HwKoXoPHrBvLzjkC
d9CewviuH6iRvsAy7hsZ4XqYTVUe+aP9F+jZU9s+X77Sx2M4OcS3NMm7Q9a0MfKC
+ns7JxOPw2T/Lb+fEykx5W+RSLF/gF+UK/CGlEdxP3dQ1jpDwVYEUHYMC3fXxipa
95caC/UkdeK/pm5mIPZx0LaGPuSsGk2R+/sIdwKglcOY0nHEOHfzkWFAwisSStN2
WUerlquTggA7qX+5vX0Q5COKIzmJOpHnzsdJRk1XeJpCKRGacdWmd41rVeNX+yjc
jMYc2dXeTwm5pUhb86eX4aeK9hWOq55Fa+STwZRLZ/XreUxovoRat9ClMGujwHpI
DatEqVuoX6fWzLNgZk+6DVP615WPlKKrbEGiyQ0n6ffBGsrEoUK4eKhqy9LiSsVF
cdvrpbJZsB8Uu2zTvqYY9Qg8JV49UcdfZRnfzFOVNZtjy9Y7m/OLl0f+8VYVW++r
yRxEyEHeIA4pOUprA+YrOHrYLqhbddUo/ESLd4MhCJQK3TldsNJ5yoEHb5pGCtxN
EF2RYDnChUCBzV9tWKXU4sp39wqDJMJwEoUPAC73aCppmnaqWB76ARs2QEe8PejS
hIqiJACuLIEkeCH/tgQ98kiQyPceLDJm7Vp1G0FAg5Qtj/nQlg3ajTdg0J5Jgm4p
/q/uXiSvBR9uhsC28/tT
=lo4r
-----END PGP SIGNATURE-----
