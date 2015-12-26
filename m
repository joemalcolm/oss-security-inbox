X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1334" "Friday" "25" "December" "2015" "22:10:58" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151226031058.705046C0009@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: CVE request libtiff: out-of-bounds read in CIE Lab image format" "^Cc:" nil nil "12" "2015122603:10:58" "[oss-security] Re: CVE request libtiff: out-of-bounds read in CIE Lab image format" (number mark "        cve-assign@m Dec 25   35/1334  " thread-indent "\"[oss-security] Re: CVE request libtiff: out-of-bounds read in CIE Lab image format\"\n") "<b60b0b56-4be9-4f63-9cb2-4a1c28f36f09.zuozhi.fzz@alibaba-inc.com>" ("<b60b0b56-4be9-4f63-9cb2-4a1c28f36f09.zuozhi.fzz@alibaba-inc.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27718 invoked by uid 550); 26 Dec 2015 03:11:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27700 invoked from network); 26 Dec 2015 03:11:10 -0000
In-Reply-To: <b60b0b56-4be9-4f63-9cb2-4a1c28f36f09.zuozhi.fzz@alibaba-inc.com>
Message-Id: <20151226031058.705046C0009@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 25 Dec 2015 22:10:58 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request libtiff: out-of-bounds read in CIE Lab image format
To: zuozhi.fzz@alibaba-inc.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> If the data of image is packed ... a pixel only owns one byte. But in
> the implementation of putcontig8bitCIELab, it eats 3 bytes per pixel.
> This will lead to an out-of-bounds read

> tif_getimage.c, libtiff v4.0.6

> DECLAREContigPutFunc(putcontig8bitCIELab)

Use CVE-2015-8683.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWfgSfAAoJEL54rhJi8gl5gSkP/Amj1H6Tkb0IbaNaAbowHfeg
9j/mJ8EEzkokXlEgP/1GwElnwOw7e2wRE6HP8is1eFmoEKzrOW06RSYmqT6S88jT
QkKqH/YCvpdgNlwBH+a88KIwfDqX1KAlPVrWtrgv5RWk+gRaH6Z8lYlCzFDq54Yw
DnoZKaw+qMvsxmBvKOPgSB2pYQ6XjtxI8iFSZqpWc8utsmRlVnnV86/ocT3gVFN8
Sn0Cs94uRhsg7P41eWSA+l1A2phE3RB3xflMU4HKlii3wBLvEFMTNkYSPe5IopB0
XYxmwYsbQOTr0GWmrmjRYUvQlNn5o8XN3LaKGUOkpFzxvAxJrD2sATXhqeVSPyjw
WmeKBfJc0bNQxqYpxssJpDZnpwpG/eSm5RNSL85IZwB+XAVDjq5HejWwmCExkDSU
cNd06MghW42aHQPqJuSDK0VO6gQ4lcrXQf8VVRHLeAg4N40C0znt4aYIuu0FYJ0Z
D9qwrph0o6soYQXo0OeiBdTko7Vm1CN77f8icHT6SonLOXVndkjSxc3dsvumAhWk
HWPIDlDfCk162zKrSw83wCdzYTO3Nrt9yVOntmQoRzGgOhcXoZWIg6GVyDZAeRxy
9dT2MH7oXOjyM7wzxhiQyDGrsKVQjlw2zwXMTohY9MXUmfNrXMQP92ageSXxAR/m
9GaWzVP4oKh2l3uip3rH
=Yunc
-----END PGP SIGNATURE-----
