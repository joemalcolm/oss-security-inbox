X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1700" "Wednesday" "25" "January" "2017" "03:44:30" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<6b21533852d44795ba8d3bc376692029@imshyb01.MITRE.ORG>" "41" "[oss-security] Re: CVE request Virglrenderer: OOB access while parsing texture instruction" nil nil nil "1" "2017012508:44:30" "[oss-security] Re: CVE request Virglrenderer: OOB access while parsing texture instruction" (number mark "U       cve-assign@m Jan 25   41/1700  " thread-indent "\"[oss-security] Re: CVE request Virglrenderer: OOB access while parsing texture instruction\"\n") "<alpine.LFD.2.20.1701241547390.10545@wniryva>" ("<alpine.LFD.2.20.1701241547390.10545@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20162 invoked by uid 550); 25 Jan 2017 08:44:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20097 invoked from network); 25 Jan 2017 08:44:42 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1701241547390.10545@wniryva>
Message-ID: <6b21533852d44795ba8d3bc376692029@imshyb01.MITRE.ORG>
Date: Wed, 25 Jan 2017 03:44:30 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Virglrenderer: OOB access while parsing texture instruction

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support
> for the virtio GPU, is vulnerable to an OOB array access issue. It could occur
> when parsing texture instructions in parse_instruction().
> 
> A guest user/process could use this flaw to crash the Qemu process instance
> resulting DoS.
> 
> https://lists.freedesktop.org/archives/virglrenderer-devel/2017-January/000105.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1415986

Use CVE-2017-5580.

This is not yet available at
https://cgit.freedesktop.org/virglrenderer/log/src/gallium/auxiliary/tgsi/tgsi_text.c
but that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYiGPKAAoJEHb/MwWLVhi2438P/AtuBKdNEJ5lVOpdCtO3qU8B
OywpoakBGGu0+b3pbeQ7zshonl5YeVnguaxmV7TNMej3cEgiXOtsdIW1pcwRjnxE
H7vTGK3Lw1OPvJQZpcdYUf1NAJQRcNiYJ/x26dRK5D2vhBut5WaAylN4EXpuX9sw
jU3wKXa9KvPfw8Iald1VB/sZWMc8HclhUTVxNVacA2PbdSnHYH27RT+jWLR9K+vV
jE8m+vZrGvuUlEoPVhxwQ2x096+hadiQXlWEK/q50iLGIw/GMMLO17Jd7+Sbi8zH
PNjFt5TR/bb9obHrABGg9DUHUv+/65UevkyKeuj5NI9ZoZneKvbR+NCLXm3wOdMb
3BrlFe26wQRmA379YnWdlPeH65p7pMYeUDpddocGoV0O2Ile4y1E0RL9kz3NCLgn
F2IVNTqZIyHwDxIgRprqd/WMWfu+azn62mnYoheCOrFealenyZBq8Z8A7Al6hF7P
VXcanbg11IhZD/AACZUrDrids7xz5TujmA+Yt09I5GReHYmEmWZlJeHFcXaZP+iM
dMW1i98cStTbMMv42a1QG0hQaGuYAWEN2J/JnMZP4YYsfx+Wq/vReHhyhmeoBsTV
4dz/XLAXTdXD1v8//Gff0wXnTRm3dDUiLuQCegVSdruZmdUy7pdm5mn2v9CqTszL
WPlCZPkCAUA7uSEe6srn
=+9vv
-----END PGP SIGNATURE-----
