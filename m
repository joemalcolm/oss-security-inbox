Received: (qmail 25830 invoked by uid 550); 20 Apr 2022 09:07:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25800 invoked from network); 20 Apr 2022 09:07:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1650445620; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=cdMtn18g4n7vTM42w9lhWe+QPts1t/0o2+UrMK4HxDk=;
	b=F5Spzq0aN2RtuXAJu2HceRSRnYpOba7wDh9JAi0J9Drcidd16ODvlvioNqtvKb+K5aDjOR
	Q2lAFL8YyVUeukaumtmRaQ5yFmiYbnEGBNhRp9rnoWKPqHj/fhT8PIsioVjQJPmWKmYm+G
	Gs2TFD+W7c3X4f7/ijM4LGkhO5+EFuU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1650445620;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=cdMtn18g4n7vTM42w9lhWe+QPts1t/0o2+UrMK4HxDk=;
	b=0BJxXImZuCtnGd0QlPNxTQZ7aXe9MdDu3S2APOWFGr4Cj/9eKL+2nsZ3x279bldRxyP1wK
	A3IDVnrqGQkPztAg==
Date: Wed, 20 Apr 2022 11:07:00 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Yl/NNAMZpGvD1c09@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lVIgUkz1BMfIw6ux"
Content-Disposition: inline
Subject: [oss-security] tpm2-abrmd: possibly surprising security model for local users could
 result in a local DoS against TPM configuration and data

--lVIgUkz1BMfIw6ux
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this is both a heads up and an invitation for discussion of a situation
that some end users and TPM integrators might find surprising.

The Intel TPM 2.0 software stack offers software components for
accessing TPM 2.0 hardware features. The stack's main components are the
core libraries tpm2-tss [1], a set of command line tools tpm2-tools [2]
and the userspace resource manager and access broker tpm2-abrmd [3] used
for multiplexing parallel access to a TPM device.

I was made aware that, after installing all three of the mentioned
tpm2 packages on openSUSE, arbitrary local users may issue arbitrary
commands to the TPM chip [4], including a `tpm2_clear` operation. The
reporter of this was afraid that this could be used as a local
denial-of-service vector especially in the light of recent feature
developments like TPM assisted unattended unlocking of encrypted file
systems during boot.

The Intel TPM 2.0 software stack supports different communication
backends (TCTIs, TPM Command Transmission Interfaces) for accessing a
TPM device. For example the tcti-device backend accesses the /dev/tpm0
character device directly while tcti-tabrmd attempts to invoke the D-Bus
interface of the tpm2-abrmd daemon. The packaging of tpm2-abrmd in
openSUSE uses configuration files to allow transparent autostart of the
daemon via D-Bus [5] and to allow everybody to invoke the service's
D-Bus methods via the D-Bus service configuration [6].

What happens is that upon invocation of a tpm2-tools command, even by a
regular system user (even a user like 'nobody'), different TCTI
backends will be probed by the tool. The probing of the tcti-tabrmd will
cause the tpm2-abrmd service to be started, even if not enabled on
systemd level. Since there are no restrictions on D-Bus level and no
further authentication layers exist on top of it, the operation will
succeed.

The /dev/tpm0 character device is typically owned by root:root (mode
0700) or root:tss (mode 0770) and does not allow world access. Thus
without tpm2-abrmd installed, arbitrary local users are *not* able to
issue TPM commands. I contacted upstream about their security model in
this regard and the statement is that they purely rely on the
cryptographic security provided by the TPM itself. This means to avoid
arbitrary local users being able to e.g. reset TPM state, the respective
TPM properties would need to be protected by TPM level authorization.
The /dev/tpm0 device should still not be world accessible, because
otherwise the TPM device itself could suffer from a local DoS. The
tpm2-abrmd implements measures against the latter.

Upstream told me that they considered to implement e.g. polkit
authorization for individual actions in tpm2-abrmd but in the end
decided against it as they did not see a clear benefit for integrators.

I generally agree with upstream in that properly setup TPM level
authorization will prevent any local DoS issues. On the other hand I
found that many people seem to find this situation surprising. Tests
on other Linux distributions like Debian or Fedora show that they
exhibit the same behaviour when all three mentioned tpm2 packages are
installed. Thus integrators might want to reduce the level of surprise
for some of their users. This can be done relatively simple by
restricting the D-Bus level access to members of a separate group, for
example. Upstream recommends *not* to use the same 'tss' group for this
as is used for group ownership of /dev/tpm0, because this would
introduce DoS issues against the kernel level device again.

Upstream stresses the point that this is not a known vulnerability. I
still would be interested to hear further opinions on this.

Best Regards

Matthias

[1]: https://github.com/tpm2-software/tpm2-tss
[2]: https://github.com/tpm2-software/tpm2-tools
[3]: https://github.com/tpm2-software/tpm2-abrmd
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1197532
[5]: https://github.com/tpm2-software/tpm2-abrmd/blob/master/dist/com.intel=
.tss2.Tabrmd.service
[6]: https://github.com/tpm2-software/tpm2-abrmd/blob/master/dist/tpm2-abrm=
d.conf

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev

--lVIgUkz1BMfIw6ux
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmJfzTQACgkQFMQFyXGS
NVOyQg/8D2vPW2H8gbqeVoH81j5PHyFJrEvXBykYiDkYhc18gTTlCjibDtY6/ydU
Uvlk18nhqibliVsnJT/tJ3SztsYvTRiGrgd+azi034blqczs22VvPkSfcfz0boTy
CtJatK2Jd24h8Vb3zazeI6vY0sYeNiwGzkxYzgsVVg4AGPXS9Io9mUEHuylGBdMQ
snXM/S+4l79pG938KRLJFYq2Y6bv65lCmdX/74g0RyMuoE2MsgK+D5zwnmT2nTA/
RWu94DbUil2n0gcscAY7nlNpj98iqqrL/ihmsuHhTxDuQ2Ks+SsnBjVKEVnITO7m
6JjL7kplNiaoP+bmcmGgmW7IKHbO5FKkd24qz8QNiCpUCKiX4T5C2+1vqRA202Ss
D3ISaKSGMi8ZeJPGK5MyBiCuujBQC8WA5td+8o3352P/uxRqvKHKm3OcaVpJRGdF
ChkqiOZbwf9pUxw9JxZRlSJZTqcc5Nk16XXhHHjVv/d7NIQz+1wEZA0btMrsrPdq
1xyTMmw4Q85h5cgyOysca5YVE9ho9LeDUlp1ednRp+HgEqwzS1d2URJAjPvewyZf
p1UJauUx76IqitJKMkXEM73gb3+cz4Ghi16px7eS/u5eR5UIjHs0Epg6Y6NYJluy
7pE+CC1hsocUQCplzROqoYj7ly3Cw8tB9Qcwo4RIKNLqrWxA4kc=
=ZNhu
-----END PGP SIGNATURE-----

--lVIgUkz1BMfIw6ux--
