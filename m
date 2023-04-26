Received: (qmail 30122 invoked by uid 550); 26 Apr 2023 09:54:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30101 invoked from network); 26 Apr 2023 09:54:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1682502883; h=from:from:sender:sender:reply-to:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:list-id;
	bh=JyqCB1FqzsCZa+LMPcOFuyeNERqnXHYsIkJFGFrmQs8=;
	b=FCwFDJeSH0N2qeqayLK1Xvx54JI2q2ZkYkanW7N76bK4DzZdQUdB2ho2q7o3e/zIoeaBvc
	ltNuc70iQFWe1JH0bQxHNLRfRZ/uNB4I3QJnDxYFAI4yw9RWbdA9HHfiyYKitiO91mIZ6j
	BgBrpKTjNyLhveCWl7Bt4VrWgMqd+1A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1682502883;
	h=from:from:sender:sender:reply-to:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:list-id;
	bh=JyqCB1FqzsCZa+LMPcOFuyeNERqnXHYsIkJFGFrmQs8=;
	b=Yk/YovaB9wcm6xRpCKaF15KltI8jodC81Q8XYHYpGcKddHSEl6n/2Jce05l+pYYQeHVT0s
	twZWjil/trCinQBQ==
Date: Wed, 26 Apr 2023 11:54:38 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Sender: security <security-bounces+mgerstner=suse.de@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZEj04rd7LMiLwsKH@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2wgFwCuOuBcMUGfN"
Content-Disposition: inline
Subject: [oss-security] Warpinator: Remote file deletion vulnerability (CVE-2023-29380)

--2wgFwCuOuBcMUGfN
Content-Type: text/plain; charset=iso-8859-1; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 26 Apr 2023 11:54:38 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Warpinator: Remote file deletion vulnerability (CVE-2023-29380)

Hi list,

this report is about a remote file deletion vulnerability in Warpinator
[1].

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I already reviewed and found issues in Warpinator a while ago [2]. The
openSUSE packager for Warpinator asked me for a follow-up review after
updating to upstream release 1.4.3 which contained the fixes for
CVE-2022-42725.

In the course of the review I found another vulnerability which is
described in detail in the next section.

The Vulnerability
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In the code base of version 1.4.3 the sender of a file also sends a list
of `top_dir_basenames` to the peer. While there is now a verification of
the `relative_path` on the receiving side, the `top_dir_basenames` are
not verified at all. In `FileReceiver.__init__()` the following code is
found:

```
    for name in op.top_dir_basenames:
        try:
            path =3D os.path.join(self.save_path, name)
            if os.path.isdir(path): # file not found is ok
                shutil.rmtree(path)
            else:
                os.remove(path)
        except FileNotFoundError:
            pass
        except Exception as e:
            logging.warning("Problem removing existing files.  Transfer may=
 not succeed: %s" % e)
```

If the sender is passing a string like "../" as part of
`top_dir_basenames` then this code will delete the complete parent
directory of the download directory (by default ~/Warpinator) and thus
the complete home directory of the receiving party. Any other files
under control of the receiving party are similarly endangered by this
remote DoS / integrity attack.

This can happen automatically if the receiving side is running
Warpinator in trusted mode, both parties share the same non-default
group key and unconfirmed file overwrites are allowed. If this is not
the case then the receiving side will see a confirmation popup like

    X wants to send `../=B4

This message might not be very suspecting for an average end user. Other
strings can be used here as well like an absolute path to the user's
home directory, which could be interpreted as correct, or overlooked.

I investigated whether the fact that this allows to delete the download
directory completely could lead to a follow-up vulnerability to allow
overwriting files in other paths again. This seems not to be possible
though.  The check of the `relative_path()` is stable enough to prevent
this even if the download directory does not exist at all.

Affectedness
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The problematic handling of `top_dir_basenames` was first introduced in
upstream version 1.0.7.

Bugfixes
=3D=3D=3D=3D=3D=3D=3D=3D

The remote file deletion vulnerability has been fixed upstream via
commit 9aae768 [3].

The fact that this vulnerability escaped both upstream's and my own
review efforts during handling of CVE-2022-4272 confirmed earlier
concerns I had about relying on a single line of defense in the
Warpinator codebase. I recommended to upstream to use an isolation
technique like Linux mount namespaces to prevent escapes from the
destined download directory. In the light of this new security issue I
additionally or alternatively recommended a redesign of the codebase to
better separate trusted and untrusted codepaths.

Upstream used the 90 days embargo time we offered to implement isolation
mechanisms either based on Linux namespaces through the Bubblewrap tool,
or based on the Linux kernel's landlock security module. Only if none of
both can be established, Warpinator will run in a legacy mode. In
this case the user will be warned about the weakened security.

The new Warpinator major version release 1.6.0 contains both the bugfix
for this the remote file deletion issue as well as the added security
layers.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2023-01-25: I reported the newly found issue to upstream and offered
            coordinated disclosure.
2023-03-08: Upstream shared the core changes listed above with us, I
            reviewed them and gave feedback.
2023-04-05: I received CVE-2023-29380 from Mitre to track the file
            deletion issue and shared it with upstream.
2023-04-25: Upstream needed additional time for testing and integration.
            The 90 days maximum embargo period we offer ends and with
	    the 1.6.0 release being available we agreed on the
	    publication of all available information.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/linuxmint/warpinator
[2]: https://seclists.org/oss-sec/2022/q4/38
[3]: https://github.com/linuxmint/warpinator/commit/9aae768522b7bbb09c83641=
9893802a02221d663

Best Regards

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moer=
man

--2wgFwCuOuBcMUGfN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmRI9N8ACgkQFMQFyXGS
NVM6Qw//YUrDBFWsLN9L0sQYwBWJGoUKtLrs0FHh4c4GwiMrKBKT48RT0/sOAHp4
HsFkhdw5DVtcbW8ZxR0mq43jArWW/KLo+0yTXP0PQSNCaKUZxRf320uzet97Cp/n
5j4zzu5X+dhusWTVxLMIH3RUzlGxQH0PxMsul/5mrGCDpJgSSKgRK+9Sf/lpKdQ7
wBwgWZPEP6pKyJdCrgA5PCZMKc49UQHRBMokMw7juN4iROfmSRucONCVYVmEkdbA
v98bBU1JJuExJxP/4fjDKIoSgg4wADbduLTDKQCLPFTojMj/zAo7QF9OOJFKDngm
VrLUnpP0ZmJM0dccrp8hEx3RS+/Adl3+iJiDBQK0B3fiLoDY4fu2XFp6gFQE28R6
QM21/czKgnofYOst6MH9rO7V0r8/3MrkPFm+xj2NC8ItaLnnpQKzQzer73kGbaLU
KeSHmtWXigKDlQ0wN7g04PT+Zq++5Zvttj1zv9SG5Ofb5CDBgDtz2fSdjD4LcZyH
IgUbBXlRHSJXUNNJ5CGJk+UrOFMvJvQPW3voJpf+kzpgnqV954p50WzIjGhW1AYA
e8W5DwGhqslaLH/zL2xVzQWvE07wB1GM9LP4tWCT4DFj5EQ5haDRg8IbkNKPC2wb
05X76l4ogYOQpgR/5sKmCMzoknkd5pWJ68yXpu18BIm4eAzGC1c=
=1f1y
-----END PGP SIGNATURE-----

--2wgFwCuOuBcMUGfN--
