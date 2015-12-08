X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1827" "Tuesday" "8" "December" "2015" "13:36:37" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151208183637.6D2F742E0A8@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: CVE request: Qemu: ui: vnc: avoid floating point exception" nil nil nil "12" "2015120818:36:37" "[oss-security] Re: CVE request: Qemu: ui: vnc: avoid floating point exception" (number mark "U       cve-assign@m Dec  8   48/1827  " thread-indent "\"[oss-security] Re: CVE request: Qemu: ui: vnc: avoid floating point exception\"\n") "<alpine.LFD.2.20.1512081741500.9091@wniryva>" ("<alpine.LFD.2.20.1512081741500.9091@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11479 invoked by uid 550); 8 Dec 2015 18:36:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11455 invoked from network); 8 Dec 2015 18:36:49 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, lianyihan@360.cn
In-Reply-To: <alpine.LFD.2.20.1512081741500.9091@wniryva>
Message-Id: <20151208183637.6D2F742E0A8@smtpvbsrv1.mitre.org>
Date: Tue,  8 Dec 2015 13:36:37 -0500 (EST)
Subject: [oss-security] Re: CVE request: Qemu: ui: vnc: avoid floating point exception

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the VNC display driver support is vulnerable to an
> arithmetic exception flaw. It occurs on the VNC server side while processing
> the 'SetPixleFormat' messages from a client.

We think SetPixleFormat is a typo of SetPixelFormat.

> A privileged remote client could use this flaw to crash the guest resulting in
> DoS.

> http://git.qemu.org/?p=qemu.git;a=commit;h=4c65fed8bdf96780735dbdb92a8bd0d6b6526cc3
> 
> ui: vnc: avoid floating point exception
> 
> While sending 'SetPixelFormat' messages to a VNC server,
> the client could set the 'red-max', 'green-max' and 'blue-max'
> values to be zero. This leads to a floating point exception in
> write_png_palette while doing frame buffer updates.
> 
> ui/vnc.c
> set_pixel_format

Use CVE-2015-8504.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWZyLpAAoJEL54rhJi8gl5uUUP/ArhiKUMu9CInCLLiz8fo9Ou
ey74+W5oaMoSwgP2PzCS6AbGj+ZK28t/8DbuhXz1FAJVChZlaa0v4yJkiw90B41g
1y8mI2CjB+vCgYPWF7Aqh8YqwlO3mY7XMflbvzmjKxUkdgYt5zha+dCmQ7P5Vet1
j+JZQkKZIU6VDnKQiUmvVz6BCtS7khsNYTFjqCs2F3PuUQnBZTKXjTxcO5tAcqcI
4wlLeB2QgJcZHRYcRkLAyfNpQ9IeJtzgqk5oc7Ms3gfwPzvQAxQYHH829aKPL7M9
GOe+fQH9ITuOlBohPNthAtNiZUq/A64nRKaZ4KekfR/6Hb2DWOKKMJ0injJflQaa
h7zF+zwccF9Z2meEg6bKcJyfcL7J6Qb0BOvUpmN0sT2JLKmQJvH4M8svWmBj3FiX
7Vj/DixcbLdeokQOz42a8ph51sWeghHRPdy1wYh87Kxv51RzaOyjCtMTH7nk7ae4
jzKJDFcKy0+qEoj95qO9DvhdFFTCAu7A+YB4+KvfGaFospbW/1UeprRpCgVrEzY/
YTT2d9PnFbns4zXJHK+T5XhxrhxNbsP0FnQPhwAxg1ruroyCJBrAA5Zemah3rNwF
HayZogYm0nkoEwnGB263CYI87fqOSZ+y4E/dXZVl37zttZ3ixqU764Z/2UAaSRea
kVSLWiCTRm/Gg+o4PRgK
=0JpL
-----END PGP SIGNATURE-----
