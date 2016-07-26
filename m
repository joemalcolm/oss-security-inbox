X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2136" "Tuesday" "26" "July" "2016" "15:24:13" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: cve request: systemd-machined: information exposure for docker containers" "^Cc:" nil nil "7" "2016072619:24:13" "[oss-security] Re: cve request: systemd-machined: information exposure for docker containers" (number mark "        cve-assign@m Jul 26   47/2136  " thread-indent "\"[oss-security] Re: cve request: systemd-machined: information exposure for docker containers\"\n") "<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9827 invoked by uid 550); 26 Jul 2016 19:24:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9806 invoked from network); 26 Jul 2016 19:24:24 -0000
In-Reply-To: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>
Message-Id: <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 26 Jul 2016 15:24:13 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: cve request: systemd-machined: information exposure for docker containers
To: caiqian@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Once docker containers register themselves to systemd-machined
> by oci-register-machine. Any unprivileged user could run
> machinectl to list every single containers running in the host
> even if the containers do not belong to this user (including containers
> belong to the root user), and access sensitive information associated
> with any individual container including its internal IP address, OS
> version, running processes, and file path for its rootfs.
> 
> $ machinectl status cc8d10c7b9892b75843d200d54d34a3a
> cc8d10c7b9892b75843d200d54d34a3a(63633864313063376239383932623735)
>            Since: Mon 2016-07-25 17:55:36 UTC; 34s ago
>           Leader: 43494 (sleep)
>          Service: docker; class container
>             Root: /var/mnt/overlay/overlay/0429684e3da515ae4f11b8514c7b20f759613
>          Address: 172.17.0.2
>                   fe80::42:acff:fe11:2
>               OS: Red Hat Enterprise Linux Server 7.2 (Maipo)
>             Unit: docker-cc8d10c7b9892b75843d200d54d34a3a9435fe0f65527c254ebfd2d
>                   43494 sleep 3000

Use CVE-2016-6349.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXl7elAAoJEHb/MwWLVhi2RWIQAKaV9Wfr8YVQfKU+Skfs5Aw5
10D1SpGzb6X64u7ZBPtBINph6DcANhKRVnsLzhyK64m7tOXlU+f3ZuJJkpYILj/L
dqpGgpm4Rr3g3CbOBXQzv3MoxI1x6UBpQ0tD4YJR2l4MUBH+WDNTgS2HGsonDgHW
Y2nLzn/xLbnxBJPhtuTxB3rsSYW5HoLv3rU135z++sgckn9wEpMCLKn4RabJX5pn
VlvwyvgtS0KQIjxwvc+Fzek3A8JmVmc0Sdv9xv+oUPSpcVx+9UQuJ4IM3JrItkyX
ozFJvettlVz5DGP+Il19Bsj4VgnqfbIY4hV9G5W3Zvvvj+0NQbqXeA4rz8s6RRaU
VzGZLfxaSt3giTqLYIVQIe5z/B8zzdeyJv8Sq1p54Wlnw3mhV7jy071Tv85Wuy5C
WgwlrGw7weXeiDUCDtJccKj+Vulmkl9fA6yZZOTsi1eLdncsRZurdoRKtbu35yS8
uUx7iv855mq0HcEmONagKuVuuZehESJQ1DgIGDs2U0r4oWwAYkmYfvTdfjqni76c
CA+qdQZUKXKmg/VBSAxawyO5DeP5sqf8e/W5mGyV9ryEA7d5Td+PhP2/hyYqF/gm
cWYAMkuS8Twty3XWceKE01ToBU2E3RsOlJTtA7Y5Su7Za/MyoOO0XgZ5LpU2lMhQ
azlA01pX7DjSmXNbCCZF
=mOLg
-----END PGP SIGNATURE-----
