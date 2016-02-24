X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1598" "Wednesday" "24" "February" "2016" "10:55:24" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160224155524.A145E72E03D@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: [Pixman] create_bits(): Cast the result of height * stride to size_t" "^Cc:" nil nil "2" "2016022415:55:24" "[oss-security] Re: [Pixman] create_bits(): Cast the result of height * stride to size_t" (number mark "        cve-assign@m Feb 24   40/1598  " thread-indent "\"[oss-security] Re: [Pixman] create_bits(): Cast the result of height * stride to size_t\"\n") "<CACn5sdRX-tyOuVDXfTeFXfen6hq54e_zMVhsd5_TYW1XsHHk+w@mail.gmail.com>" ("<CACn5sdRX-tyOuVDXfTeFXfen6hq54e_zMVhsd5_TYW1XsHHk+w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25698 invoked by uid 550); 24 Feb 2016 15:55:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25633 invoked from network); 24 Feb 2016 15:55:37 -0000
In-Reply-To: <CACn5sdRX-tyOuVDXfTeFXfen6hq54e_zMVhsd5_TYW1XsHHk+w@mail.gmail.com>
Message-Id: <20160224155524.A145E72E03D@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 24 Feb 2016 10:55:24 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [Pixman] create_bits(): Cast the result of height * stride to size_t
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> There is an (old) integer overflow in create_bits in the pixman library.

> https://web.archive.org/web/20141227044037/http://lists.freedesktop.org/archives/pixman/2014-April/003244.html
> https://bugzilla.redhat.com/show_bug.cgi?id=972647

Use CVE-2014-9766.


003244.html has this linked discussion, which is not part of the
definition of the CVE-2014-9766 ID:

  https://bugs.freedesktop.org/show_bug.cgi?id=69014
  https://lists.freedesktop.org/archives/pixman/2013-September/002915.html
  https://bugs.freedesktop.org/attachment.cgi?id=85448

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWzdF9AAoJEL54rhJi8gl5BlIQALu4bdEqoZE/fTlEJSOXQj2s
4ZWZYb120yISoKjK3kHfGfDtJMi/JeEkXkMTkQjulreq/wYHBHnBeGBxJBw1laae
7JtS8ULmmR8+WBd/X1ZTmfZ4VhwYcJn0utXaN7su0QK6a3YfG7DasL1Paywf1z6E
eDMXRJgDE2ml3sHTyodAFvfHbYcpMK7EQao7HJA7o49Vr0NcNJVmW+pYqu0Hq0N+
j+WilQ4eYiw1I6GgXxiQQlOKFKdnKmflOJXEJp8qMr8iokP9OX5ewN7d/007uZNA
3gCzt7tpsBACzjx/01exaUdKOFDxHB+l1vglHiC2aFlLN46U637DiJpL0OMN+soF
AYV0vRGIfxKZOSpSk4398gbX10kv2ew9uOG9UbzkRqneZmdXWqZXPMJ2eH/H2doV
hdNpt7B+6mgKQpYZZI3OrMilj5ZXfGNc4R2RSt0ViTfabn6D5gYynTrE+Jh37mgZ
phfBvReUZIP108iAgdxOOi2pLRuUYU4ayeDmQkhNQPaokoAyxkOdy7eorJC8yRD5
HJ/sL6zKuLJkfaBrsr5zbOe3DD2VqtFQ/mGp0kgAjcKpgdvFyR5IG3n0JiBS+p8c
Q/CC7tb/gFLJYR9fReUmeJJ4xIY6dzUaXRaxocWuSts8sOgwwyUEiIdDdEK3vxu2
Gew7VEXZN1T9nBktQhgY
=IpY0
-----END PGP SIGNATURE-----
