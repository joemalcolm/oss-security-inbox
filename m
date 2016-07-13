X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1499" "Wednesday" "13" "July" "2016" "12:59:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160713165940.E24C88BCE32@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount" nil nil nil "7" "2016071316:59:40" "[oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount" (number mark "U       cve-assign@m Jul 13   39/1499  " thread-indent "\"[oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount\"\n") "<1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com>" ("<1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18396 invoked by uid 550); 13 Jul 2016 16:59:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18378 invoked from network); 13 Jul 2016 16:59:52 -0000
From: cve-assign@mitre.org
To: caiqian@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com>
Message-Id: <20160713165940.E24C88BCE32@smtpvmsrv1.mitre.org>
Date: Wed, 13 Jul 2016 12:59:40 -0400 (EDT)
Subject: [oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> It was reported that the mount table expands by a power-of-two
> with each bind mount command.

> If the system is configured in the way that a non-root user
> allows bind mount even if with limit number of bind mount
> allowed, a non-root user could cause a local DoS by quickly
> overflow the mount table.

> it will cause a deadlock for the whole system,

>> form of unlimited memory consumption that is causing the problem

Use CVE-2016-6213.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXhnMiAAoJEHb/MwWLVhi25Q4P/ig8NsIq4e7iKjGBPBiX8Esd
rxxdLpmyNfHNqMYelHMtnQXxKlewpg0RanD9tmkeuAcrCsCMrh6dejE1ioPxRhuA
QOkhnjYhT/uFXPocgyf6EvVR9BzMiX7OmDXqaBBAjifbvfw5EqnZqj7Gyc8g0Scn
1/uoL9DLf6USbK8Gmho0r2mxtFf0DvhvtSRPSsw9HQjH7kQEMgzjG0bmOsTyGtWB
XEXERVynveoQmalW2vm+p6TPHHaKrTBrmXPxhgjxynMj1EX6V2j1Om3bQiuJmKUR
1KVN5pewgVy9ZV0Jk4pAVrYO+U0qvLflZBHknceWlz9YzfZyJYKaiv0RH8RwXYfC
P1ezDLsuBNup0tgAx+i++05cIFGFRV4ts60wxNJnUcgE21LAZ6qL8LFjZ1ixA9jM
LjESRjdNw4MeeQOAHt/YzskhP6hTanlZvmLNYyuhZB6a0FXV18xEPVPrlyb5+odD
2w7jTQqBnWfOTYPAaPPDc72n88y+5jxvGVXLBCcswvwIj0kTwUlZHTD+CSEylXlL
apZMLo2tgJ+3SsWuiMaSWfZDL79M2fvLkYZ6KVsnONMGRgjIDAwdvp+VgbIfdWlu
sLS3Rjx9pkjRpt+M6YM7OIIdNYiBgPRZFl6XDv4TIbuA5g/vuJTg44JIJDfj7MiT
iqRuPFgATt2oMZqUmeZu
=8iz3
-----END PGP SIGNATURE-----
