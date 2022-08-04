Received: (qmail 1303 invoked by uid 550); 4 Aug 2022 13:40:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23649 invoked from network); 4 Aug 2022 10:38:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1659609499; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=ksIG+LKSVKSTt4shtZ+IX38eWVQec9siBXD+JXTI9io=;
	b=1oHlc669KDFwffwkecBk7vyDoNY+c3ykyVj4QgPgVifxIm+kSvbgT9IozHAVMHPnKDBR/M
	d5mwFIpfNYL/3W0Xfkvg+/LQm9rBBDUJZWBKhExt/w9Lx2TLa/0VUt0XJwxJQoaFyjWUCR
	XkG520cUICC2kE2m/H7akH2W6Ew4DQA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1659609499;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=ksIG+LKSVKSTt4shtZ+IX38eWVQec9siBXD+JXTI9io=;
	b=JvXEnj6IlNE0d/1Sk44RS6zadnSIWGEEBnHWVwQDJ6SozVTq2ab8OeZgBmAK1Eefyam0Vw
	f2mQucDQpYgQRPBQ==
Date: Thu, 4 Aug 2022 12:38:17 +0200
From: Filippo Bonazzi <fbonazzi@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20220804103817.osenwnxxnj3ufxd4@suse.com>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oekbpxaz7bjhvgs2"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
Subject: [oss-security] gromox: potential local privilege escalation (CVE-2022-37030)

--oekbpxaz7bjhvgs2
Content-Type: multipart/mixed; boundary="5xpxwuyh6jq27t3f"
Content-Disposition: inline


--5xpxwuyh6jq27t3f
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

the following report describes a local privilege escalation vulnerability in
Gromox[0] versions 0.5 to 1.27. Any code references in this report are base=
d on
version 1.27 in the upstream Git repository[1], and packaging references are
based on the 1.27 RPM distributed by upstream[2].

# Introduction

Gromox is the central groupware server component of grommunio[3]. It is cap=
able
of serving as a replacement for Microsoft Exchange and compatibles.

Among its many features, Gromox provides a PAM module to authenticate non-G=
romox
processes to an authentication backend such as MySQL or LDAP. The PAM module
allows runtime loading of plugins, and its configuration lives in
`/etc/gromox/pam` or `/etc/gromox`.

The interaction between this PAM module, its runtime loading of plugins and
their configuration causes the vulnerability described in this report.

# The Vulnerability

The RPM spec file packages the `/etc/gromox` directory with ownership
`root:gromox` and mode 775, i.e. the directory is writeable by the unprivil=
eged
`gromox` group.

The directory contains, among others, the configuration file for the PAM mo=
dule.
When the authentication hook of the PAM module is invoked, the module loads=
 the
`/etc/gromox/pam.cfg` configuration file, which can contain a path and a li=
st of
filenames to be used to load plugins. The plugins are regular .so shared ob=
jects,
which are then executed by the PAM module.

It is therefore possible for the `gromox` group to effectively have the PAM
stack run arbitrary code upon execution of the `pam_gromox.so` module.

Assuming that the PAM stack is run as root, as it is likely, this results i=
n the
unprivileged `gromox` group being able to execute arbitrary code as root.

# Proof of Concept Exploit

Attached is a proof of concept setup that has been tested on current openSU=
SE
distributions.
The only precondition for the exploit is that gromox is installed and a tar=
get
user is in the `gromox` group.

# Upstream Fix

Upstream released version 1.28 of Gromox[4] which removes configuration
directives for runtime loading of plugins. Plugins are now loaded from a fi=
xed
list, and from root-controlled paths only. This removes the possibility for=
 an
unprivileged user to control what will be executed by the Gromox PAM module.

# Timeline

2022-07-25: I contacted upstream with the vulnerability report and offered
             coordinated disclosure.
	    Upstream released version 1.28 on the same day, fixing the issue,
	    and did not request any embargo.
2022-07-26: I reviewed the new version and verified that the issue has been
             fixed.
2022-08-01: I obtained CVE-2022-37030 from Mitre to track this issue.

# References

[0] https://gromox.com/
[1] https://github.com/grommunio/gromox
[2] https://download.grommunio.com/community/openSUSE_Tumbleweed/
[3] https://grommunio.com/
[4] https://github.com/grommunio/gromox/releases/tag/gromox-1.28

--=20
Filippo Bonazzi
Security Engineer                        suse.com
8257 4398 947A 2DBE F21D 76E6 937A 63F0 5B36 46D9

--5xpxwuyh6jq27t3f
Content-Type: application/zip
Content-Disposition: attachment; filename="gromox-poc.zip"
Content-Transfer-Encoding: base64

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
AAgAwQIAAOEGAAAAAA==

--5xpxwuyh6jq27t3f--

--oekbpxaz7bjhvgs2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEgldDmJR6Lb7yHXbmk3pj8Fs2RtkFAmLroZkACgkQk3pj8Fs2
RtmQJQf+Kand9AOFbJkEpwwKyjeRqHHgrNqJF87yNZxUrmmIw6jyUdKrSCkN92jW
BaXOiC7U/snPP+l2ywHm3QAw2FqeFIdJr2E8APnG65lHGI1zk/f4G+EyouPC9rm7
EC4nENOiSEA/U/z5yux8qmO3hFl8jj2kvT1tcSJI9nltDo5tJupold7bWbX0bEAc
/xQPAwIPptH8TGAELmBPLi8z0FQ4e5FO7/GtfBDffUyy3ZVsjM1JMk4ih+xOanEE
T/Uc4e3aTQovdYKij0gWcJ9WFXi0meqZtu2j3LZhVVH5pX6xKdgDBx8krpcx0EaS
vjgKJuxu2clDp2UXaaog2zGXdDOQxw==
=A99C
-----END PGP SIGNATURE-----

--oekbpxaz7bjhvgs2--
