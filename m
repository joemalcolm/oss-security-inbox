Received: (qmail 3604 invoked by uid 550); 24 Oct 2022 12:53:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3573 invoked from network); 24 Oct 2022 12:53:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1666615986; h=from:from:sender:sender:reply-to:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:list-id;
	bh=+ZpPuoFNujW8CRU8yfELOb/5t+G/0pdxC8B6wp/rLRI=;
	b=IdU2WK50cVtL1d8K7GgdCqc9hbx3RiIKWI4bWTY/P8qpTHxBKvrB75kEo2ygzW8Itudowa
	8pVDVjnBiGYrj26CxTBVD2Q78GvDHxGTjkVuBuQHgfr3ipF+WidpqDWrKX6t0qpbTNQnxG
	9/EPFsaWwi0j66/o+W2W8qAHsky/xEE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1666615986;
	h=from:from:sender:sender:reply-to:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:list-id;
	bh=+ZpPuoFNujW8CRU8yfELOb/5t+G/0pdxC8B6wp/rLRI=;
	b=L7CyZMj+j0ja2/8EjhCM2DwlfYjZ+Hbb6Ss53IgVsTJRDvxw3WxOfnm2xm39M3IYBVvkQz
	LPxa+ACYYpK8HeCg==
Date: Mon, 24 Oct 2022 14:53:05 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Sender: security <security-bounces+mgerstner=suse.de@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Y1aKsQY3KEVt0aAl@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MPSq+CtcB/XgJiRD"
Content-Disposition: inline
Subject: [oss-security] Warpinator remote file creation / overwrite security issue
 (CVE-2022-42725)

--MPSq+CtcB/XgJiRD
Content-Type: text/plain; charset=iso-8859-1; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Oct 2022 14:53:05 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Warpinator remote file creation / overwrite security issue
 (CVE-2022-42725)

Hello list,

this report is about a remote file creation / overwrite issue I found in
Warpinator [1]. The release under review for this report was Warpinator
version 1.2.13.

1) About Warpinator
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Warpinator is a graphical application to easily transfer files between
hosts on a local network in a decentralized manner. To find other users
on the network a zeroconf protocol is used.

2) Connection Setup and Trust Model
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The main connection between two instances of Warpinator is established
using SSL. To establish trust a shared symmetric key derived from what
is called a "group code" is used. Each instance of Warpinator provides a
randomly generated public SSL certificate in an encrypted form over the
network. It is encrypted symmetrically based on the group code via the
libsodium "SecretBox" API. According to libsodium documentation [2] this
API employs the following cryptographic algorithms:

Encryption: XSalsa20 stream cipher
Authentication: Poly1305 MAC

Although it seems unusual to make the public SSL certificate actually
secret in this approach it seems safe in so far as without it no one
will be able to establish the encrypted SSL connection. Once the SSL
connection is established no further authentication or authenticity
checks happen in the Warpinator RPC protocol.

An issue with the group code, though, is that is has the default value
of "Warpinator". The project's README of the reviewed version states:

    Do not leave it as the default "Warpinator".

During runtime the application does not undertake any efforts to bring
this to the user's attention, but starts to operate using the default
group code right away. A user has to consciously change this group code
in the settings dialog to achieve a trusted setup. Therefore I fear
there is a high risk of users keeping this default setup and thus
possibly trusting arbitrary other instances of Warpinator on the same
network.

This could allow malicious actors on the same network to act as a
man-in-the-middle to intercept transferred data. The authenticity of the
randomly generated SSL certificates used is not verified otherwise by
Warpinator as far as I can see, so the group code is the only means of
establishing trust between Warpinator instances.

3) File Creation / Overwrite Issue (CVE-2022-42725)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

I noticed that Warpinator does not manage to confine uploaded data
properly to the configured upload directory (~/Warpinator by default).
Warpinator trusts the remote Warpinator instance regarding the path
names and other metadata that are transferred. Furthermore the
file information displayed in confirmation dialogs is not necessarily
reflecting what the peer is actually sending.

The following code change allows a simple demonstration of this:

  diff --git a/src/transfers.py b/src/transfers.py
  index 0996738..dc27433 100644
  --- a/src/transfers.py
  +++ b/src/transfers.py
  @@ -138,7 +138,7 @@ class FileSender(GObject.Object):
                           else:
                               time =3D None

  -                        yield warp_pb2.FileChunk(relative_path=3Dfile.re=
lative_path,
  +                        yield warp_pb2.FileChunk(relative_path=3D"../.ba=
shrc",
                                                    file_type=3Dfile.file_t=
ype,
                                                    chunk=3Db.get_data(),
                                                    file_mode=3Dfile.file_m=
ode,

This patch simply unconditionally changes the `relative_path` field
reported during uploads to "../.bashrc". If a file is sent from a
malicious Warpinator instance using this changed code then the uploaded
file content will appear on the victim's system in $HOME/.bashrc,
without the user being aware of this from GUI messages. It will solely
be confusing, because the uploaded file will not appear under the
expected name. This way a malicious remote Warpinator instance can
achieve full remote code execution in the context of the user account
running Warpinator on the victim's system.

There is a configuration setting in Warpinator "Require approval when
files would be overwritten", which is active by default. The check for
file overwrite actually happens before the actual file and relative_path
are transferred, thus this setting does not prevent the described
attack.

Should a user decide to disable another setting "Require approval before
accepting files" then the described attack would even work fully
unattended, without any interactive confirmation by the victim user. The
only precondition is that the attacker knows the correct group code to
interact with the victim.

To get by the confirmation dialog a likely scenario would be social
engineering attacks where the attacker suggests to send over a file
using Warpinator but actually overwrites arbitrary data of the victim's
user account.

4) Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Upstream implemented some first aid changes for the file overwrite issue
in [3], [4], [5], [6]. This should prevent the naive attack outlined in
this report. There are remaining concerns, however:

- Warpinator implements a complex file transfer protocol that even
  allows to create complete directory trees including symlinks on the
  remote node. Also Warpinator employs thread pools for processing
  incoming requests potentially in parallel, thus it could be possible
  to circumvent the added security checks by exploiting race conditions
  (e.g. creating a symlink in one file transfer that is followed in
  another). I did not further explore these possibilities.
- To my knowledge the issue with the default group code described in 2)
  is still not addressed. Changing the group code is vital to reduce the
  potential attack surface. The interactive workflow of Warpinator
  should foster this, or not set a default group code at all.

I want to thank Warpinator upstream for looking into the issue and
dealing with my report. Upstream is still investigating and discussing
how to best address the remaining concerns. The initial fixes and CVE
assignment are already public for a while now so we decided to publish
the full report. As far as I am aware there is no release available yet
containing these initial fixes.

5) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2022-09-01: a routine review [7] was requested for addition of Warpinator
            to openSUSE Tumbleweed.
2022-09-15: I discovered the file overwrite issue described in this
            report and started getting into contact with upstream.
2022-09-16: I sent the full report to the Warpinator main developer and
            Linux Mint security contact. I offered coordinated
	    disclosure.
2022-09-22: I reviewed the initial patches by upstream and upstream
            published them on GitHub. No formal coordinated disclosure
	    process has been setup.
2022-10-06: A colleague from the SUSE security team requested a CVE from
            Mitre to track this issue.
2022-10-19: No final solution has been found yet in discussions with
            upstream to address the remaining concerns. We gave some
	    ideas as input but also asked to publish the full
	    vulnerability report soon to make the community fully aware.

[1]: https://github.com/linuxmint/warpinator
[2]: https://libsodium.gitbook.io/doc/secret-key_cryptography/secretbox
[3]: https://github.com/linuxmint/warpinator/commit/5244c33d4c109ede9607b9d=
94461650410e2cddc
[4]: https://github.com/linuxmint/warpinator/commit/f4907ef6a17a189d56ab0a9=
da4b53190b061ad75
[5]: https://github.com/linuxmint/warpinator/commit/8bfd2f8b3f1b0c0f0a5a6d2=
75702d107b9e08a94
[6]: https://github.com/linuxmint/warpinator/commit/95124fd4468683dd69ddd7b=
3da0e9906ce6beae2
[7]: https://bugzilla.suse.com/show_bug.cgi?id=3D1203037

Best Regards

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

--MPSq+CtcB/XgJiRD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmNWirEACgkQFMQFyXGS
NVO4rxAAqrqGApUfdSZzaz0tUgGeAS+GpwjzrAg7IBJ266XE0tnfRuOjwdD3P/lh
NYDBM881fD+bibHNz8Ql6LCs6jHp7uOYOTduh4N8l7dNjpt+9cxcETj6Gi8z3dqB
upOIMei5doyZYgC8nXZChvYPi0pmeGaxtZU264me0qhJEi8LZ/nSGDgJs43H0Kld
VTIOZ1wn0NPAoHY/Vka2v4eUvo9/C7votcZz36At5hYThsJ1omj5v0w2J5NTX1H6
0VtAsZIS9wHKpX8oiExhWcGa04q6yjA3w1JhEbk68EATaaDNMqWAfpJwyvq0+8xO
dyIqxM/bUFWCd90l1DFqrx+q/nII2sA7CAAzjY+nz/79XtTWX6wCc7h1aFSORrz5
zD6hEiweWaQqL20UhONWOa1vpCwYsMBD2MM9wVYYrxq3D4KIduM+PQNLUzFbHmHF
mVFNHB22BncwmnlAGwBnAawoaVDcXgE9B2HuO1I9bBzjyyt49y2lILLHRmj/4S30
/PJfqpfGIUJpd9Obj660zPViN5rQkpzi4Smi1khOQPsZcGtVteo+xA0fEth8l66J
o7+SR0hWyS+G+r7haDzd05h6NabZoqI1QnMVDT9fyoQ/+jxOELfE5r9HORPSeqmI
vgeqhdbKG93BWFbGQekgkeEULZbe+gmEGVcbuL7+MPpe8Lkc/1E=
=o9dH
-----END PGP SIGNATURE-----

--MPSq+CtcB/XgJiRD--
