Received: (qmail 22155 invoked by uid 550); 18 Mar 2023 13:51:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25651 invoked from network); 18 Mar 2023 13:33:19 -0000
Date: Sat, 18 Mar 2023 13:33:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ab-data.us;
	s=protonmail; t=1679146387; x=1679405587;
	bh=CLi8g2/tICM19TAPM3Ltl79BW6MlbYzicBug5PVqZMA=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=hjzeSuMdI9k6bszctThNnXFYIOgTxYV475FOFn05a9lhrpTSu0juAK7C4aQLE0FoL
	 oeygGRFN0KvG0xlzY4bqqaXpj/GZc7gfKxv0Y8cVli/xM9RvAyE2nDRLLK39jIosen
	 iV44aVz8xdWADspvJdzs55Ob/SHs5Lw7PMvZ2gSzGKvgtLvnq5FCvb69T4lV0mwjDX
	 /fh0fj05NPZ7wsNrXEfqfc9i9Wx+ovo9tDvpZw+KUENnbWP68UxLDOIzST/SBkzT0A
	 izuEjSyTT2Lu2rO4qVM87XZmJTYcimh3xE11I+XHdUPQnT6HunhUpVbNAd2brjZiUG
	 Y/c1Pt/JjFjMQ==
To: oss-security@lists.openwall.com
From: Eric Ashley <eric@ab-data.us>
Message-ID: <wDR-6EJXGD6-bxaq2W-kI1jLku16_YuQtd-b0xX_bdYFJxXswSPpw6AU2G_U-CMxENlwx8-d9B7v5geNxaWaWAN8MoblHQMuqNIMm_BYhiQ=@ab-data.us>
In-Reply-To: <1a1ae12e36d5f711@orthanc.ca>
References: <20230314095103.1ed76cc0.hanno@hboeck.de> <20230314103626.3ucbt2rjdfhjbe6t@jwilk.net> <20230317114844.21563d9a.hanno@hboeck.de> <1a1ae12e36d5f711@orthanc.ca>
Feedback-ID: 2607232:user:proton
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------dbe7236cfa0a9b8c179cca8fd1e13f78dd75b381ae9eb0b4589ab181bb219cc3"; charset=utf-8
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

--------dbe7236cfa0a9b8c179cca8fd1e13f78dd75b381ae9eb0b4589ab181bb219cc3
Content-Type: multipart/mixed;boundary=---------------------d2877b8b1713a20133e79c7e28ec5923

-----------------------d2877b8b1713a20133e79c7e28ec5923
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

According to a note from kernel maintenance (https://git.kernel.org/pub/scm=
/linux/kernel/git/torvalds/linux.git/commit/?h=3Dv6.3-rc2&id=3D1e641743f055=
f075ed9a4edd75f1fb1e05669ddc), as of 2008 only Heirloom mailx (a.k.a. nail)=
 used it for ~h interactive header editing.

Best regards,

Eric




Sent with Proton Mail secure email.

------- Original Message -------
On Friday, March 17th, 2023 at 7:13 PM, Lyndon Nerenberg (VE7TFX/VE6BBM) <l=
yndon@orthanc.ca> wrote:


> Does anyone even remember why TIOCSTI was added in the
> first place? I remember stumbling across it decades
> ago (SVR?), but I've ever seen a use case for it.
> It puzzled me back then why it even existed.
>=20

> --lyndon=

-----------------------d2877b8b1713a20133e79c7e28ec5923
Content-Type: application/pgp-keys; filename="publickey - eric@ab-data.us - 0x43A549FB.asc"; name="publickey - eric@ab-data.us - 0x43A549FB.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - eric@ab-data.us - 0x43A549FB.asc"; name="publickey - eric@ab-data.us - 0x43A549FB.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4c0JOQkZ1
MldmOEJDQUM4bVN5QXFKaGxmRTFINTFnZ1VsTTJLTC96d3FPSjgzb2s0WkZ1
Qm01ZkU2c3IKRFNSU1VuK2FCVjUySzdZZ0U1R2Fzekw0SjlJRDFsdUJ3YllG
NElxUDltWVdBNi9hSENKMzRLRUQ5ZXdrClgwUEpYUTEzeldWTyszVHJBWlA0
V3VaMXpFYlRSalBrZG85VEhzbjl6L1F6UW9PeVU1WUtkc0NhYzMvNgo0TTY5
MmlGNDhXWjRPajdabE5pdUplNEdYc0xQMENESS9kVG5sMm16M1RQVmUxSHJ0
aXNmczd3cXYweFYKdzF5dEN1bE00RkFvazNHaTVkNUdHNGV0T3puUUFFeUIy
eWsrK2JSdXNZWjV3Nm1aUk85dTRaOHVPNHpKClVvQ05rdTZCWEtxaDVIWldn
a2xteHhwNkhsRk5pbFpXd1NGVWVEcVZacTA4SzBGbHhBNFNWVjV4QUJFQgpB
QUhOSXlKbGNtbGpRR0ZpTFdSaGRHRXVkWE1pSUR4bGNtbGpRR0ZpTFdSaGRH
RXVkWE0rd3NCL0JCQUIKQ0FBcEJRSmJ0bG4vQmdzSkJ3Z0RBZ2tRYlh1UXhZ
eXVNUlVFRlFnS0FnTVdBZ0VDR1FFQ0d3TUNIZ0VBCkNna1FiWHVReFl5dU1S
VjFtQWYrUEsrT280bFRPaEZTOFU1OHBPOWltWGZnVFJQZjVQNGp2MHV3YzN5
TQo0Rmdhb0ltWW5ULzY4OXZjWHFwVG01QWRWNmNQKzhjOUVMUHNtU2NTNmI3
WUc0Rmd4UTdVR3FxTjJlbksKc0FQMEt4UXhSekY1VithRnNpdnZoWkVub05I
bTdDQyt4ZjR6dXJrRnhReHZsYjlabDZaVG5Tb0NkR2tICmg1R2E1WXYxbnVo
K1dRNFZxMW1xd3Vhdk5OZWsxSk5XRGdTSEc3ZmlST21raUZrR2E5eGVvSDFu
ODFSVQpIRlFHWGthMmo0cFJOYjM2cFlyakhWMVh6UWpRQXdhMmZiSm1KTkFv
dTI5QStHL1QvVmNFNzhRTnZsZ3AKOHhsU0o3MWM4UTJoVkdjREhTdzJPdjlJ
SnlKYTdnQjdaY01MVngyQ0NtWERwbC8yQjFJSGZUN3FLU3ZKCmc4N0FUUVJi
dGxuL0FRZ0EwQ0kwOWRDZkU4UVpuaDRYYXVNMm9RK2FXaXBuMHBBaWIyTk83
Z0toY0ZCQQoxa1U3a3FTcWtFR2pNK0RYT01OYjVWeFdGUE9EN0FxTVBzc0xq
NFB1RW9ySDQ5MVRHREg1TCtwR2tUMVAKSDVZMzdaZ2kwci9aejZqTHVmSDR4
RmR0SW1BT2c0bVlmZlMxZlBlR3kzL1ppL0tYR3J6ZDNjTFFjODRKCllDWDhG
a0JnMzE3UXRKdW1ieHU5MTZuOXo4OXowUHBoRGNrTTNzRUozOE1lejRlZXQr
N0JFVmlvRXQvQwplV2o0a05rdWgwbE1EU3ZOK1VwMVUrZHVNR0s4Umc3NFlP
eXRPbmFVQldtTm8xTGVDbHN3MUJSR3crWkgKbXQ2Vi8veDdJMFJFZ0hBVXE2
dU03cGQzR1RGbDJuaGxsSDhtSXA5L0NKWjFibFRNR1VSWnNKTEkxUUFSCkFR
QUJ3c0JwQkJnQkNBQVRCUUpidGxuL0NSQnRlNURGaks0eEZRSWJEQUFLQ1JC
dGU1REZqSzR4RlNoTQpCLzkxaklGam90cHhJK1pXMnREOTVtamNzM0hSdTVm
QW5zSHgvODUxZENwaDE2ZXFLdlR6cFNoR0ZKcGwKVnRGLzIrUENnaDh6QzdD
am4rSmFsU1dZWXV2YjNUc283cXByMDFuLzRTeGpUYk5jamhaUlQ3RzZWM3pR
CklhVFpEVnhSenhiTllFK3hTUVIvQkxSQjNmQUtoUFYwZnJHR3NrWnJDUEYr
SzBnVkJkb3IzKzFyQ2IrcAplTXdSQUZGQVRvR0xjbEtQQS9iWjZNMHFnNHVv
NmJud3RpZHFWc2RtY25NR3h0VWFvZGU2dVhIb3pLbncKSHhPMXFraEg4Tmoz
VFBOam95L01tdkRrd3dodmZHdk1KL1I3WmFNZ25pYVM3eU9nOWxsYzQ2TzY2
T1YxCnUySEJ5bEFlajE0RXFFdnVwbnVBcEdxUG0zTFZ3WTNLNEx5WXFEa2Vi
WjMyCj00U2FRCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K

-----------------------d2877b8b1713a20133e79c7e28ec5923--

--------dbe7236cfa0a9b8c179cca8fd1e13f78dd75b381ae9eb0b4589ab181bb219cc3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsBzBAEBCAAnBQJkFb1sCRBte5DFjK4xFRYhBEOlSfsWN1099pslgG17kMWM
rjEVAAAOsQgAqKbDwYd631F8upVO+ujg4o8GaCFfto5p112m/KjfmZUWMr0K
z/6AZmHbWhsWn08L/QYQIaJ1WQFeY0Mi5ihgAMiB2tA7tQ7vSpv5th7qix2n
yEay6tWybaU1YO50h1DJuSAQpfLcj70F5GRwbiPibmJjgTlrnmHVreI0i2JW
vFmZSpaldMVn57zxUi/B8R3ZyM/XUtZ0n39wVU6HSim+RfDKS82yuGgJ9uzb
dNdQoNnim0hfautLNYVapHrajwchKyV7jpVq4da+gaXzzzVYVafADmbnPkEz
snxTGf+pC4K9sC836Jdc9iy42oIah/1lT7BLk/UVZrqqb4daWx5qXg==
=rlEM
-----END PGP SIGNATURE-----


--------dbe7236cfa0a9b8c179cca8fd1e13f78dd75b381ae9eb0b4589ab181bb219cc3--

