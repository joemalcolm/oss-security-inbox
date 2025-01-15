Received: (qmail 11597 invoked by uid 550); 15 Jan 2025 12:12:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11561 invoked from network); 15 Jan 2025 12:12:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736942633; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=TS214+5M3WbYXUmud2WxDG8RL5B6vnL9Uoj2Otnc8eQ=;
	b=YgUFDnDRFvWxPe6KtcsMJ7eRd67FjDywHHHPGfYcdmkjFW1ga0pILeCgq6gEHwYn0mpZK9
	tu4tv9g8fn0pFe3eDx9xyONMZdX4CoKqubBRHFQRlDud+4mWjFKIOZUZb4ax4PRw5Xk4d5
	4FPGQYp/6mKcpBAcFL+KPG0ThaM5ZjI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736942633;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=TS214+5M3WbYXUmud2WxDG8RL5B6vnL9Uoj2Otnc8eQ=;
	b=4oHrmOSWW91KCW0VqL6L9mGZP7QOnZPW8m6COxRBtdKxkCP7NWDKy5flEFTYYisuisNkVw
	TOSYHW8g+eAzf+DQ==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1736942632; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=TS214+5M3WbYXUmud2WxDG8RL5B6vnL9Uoj2Otnc8eQ=;
	b=dnNbop8h9iEVGHdpHiIhrE3uYJNVrhKKmpVFvRM84Yv989oGRRjOf6V7WhP6GIhfW02FGf
	obrGxevD7XEqs3cbR+GPsRiGRXko66Sw5GMHakwr9D2s9PdmaPBiWlvVgOwb0nStsXOTdq
	aMn6W1iakzQ37HPIlB9qC2GmUE7MDJo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1736942632;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=TS214+5M3WbYXUmud2WxDG8RL5B6vnL9Uoj2Otnc8eQ=;
	b=AnHE8Pj89L5KIsbqNEYFoCVE6vKYASZ+0LjYkqlgu7J1FnBjiACw8Py0oWe4R6tq8+oDqZ
	3I/ra0WEBSPfXsBw==
Date: Wed, 15 Jan 2025 13:03:49 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Z4ekKFlPfkdWqeW2@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vh3Ad4PjUsMAMr+9"
Content-Disposition: inline
Subject: [oss-security] pam-u2f: problematic PAM_IGNORE return values in
 pam_sm_authenticate() (CVE-2025-23013)

--vh3Ad4PjUsMAMr+9
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jan 2025 13:03:49 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: pam-u2f: problematic PAM_IGNORE return values in
 pam_sm_authenticate() (CVE-2025-23013)

Hello list,

following is a report about problematic return values in the pam-u2f [1]
module. We also offer a rendered version of this report on our blog [2].

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The pam-u2f module allows to use U2F (Universal 2nd Factor) devices like
YubiKeys in the PAM authentication stack. The hardware tokens can be
used as a second authentication factor, or to allow password-less login.

We have been checking all PAM modules in the openSUSE code base for bad
return values. During this effort we found that improper use of
`PAM_IGNORE` return values in the pam-u2f module implementation could
allow bypass of the second factor or password-less login without
inserting the proper device.

This report is based on pam-u2f release 1.3.0 [4].

2) Improper use of `PAM_IGNORE` Return Values
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

PAM modules basically consist of a set of hook functions that are
invoked by libpam based on the active PAM stack configuration. Each PAM
module function returns an `int` containing one of the `PAM_*` return
values [5] defined in the libpam headers. These return values are vital
for the outcome of a PAM authentication procedure, since libpam reports
authentication success or failure depending on the return values
encountered while processing the modules configured in the `auth`
management group of the active PAM stack configuration.

The main business logic of the pam-u2f module is found in function
`pam_sm_authenticate()` [6], which contains multiple code
paths that will result in a `PAM_IGNORE` return value. The following is
a list of the possible situations that can cause this to happen:

- if an error occurs in `gethostname()`.
- if various memory allocation errors occur in `strdup()` or `calloc()`.
- if `resolve_authfile_path()` fails (which fails if `asprintf()` fails).
- if `pam_modutil_drop_priv()` or `pam_modutil_regain_priv()` fail.

Returning `PAM_IGNORE` signifies to libpam that the pam-u2f module shall
not contribute to the return value that the application obtains. If no
module reports a decisive return value, then libpam will report an
authentication failure by default. However, if any other module in the
`auth` management group returns `PAM_SUCCESS`, and no module marks an
error condition, the overall result of the authentication will be
"success". How exactly this can happen is explored in the rest of this
section.

In the pam-u2f documentation [7] two main use cases for the PAM module
are stated:

    # as a second factor
    auth required pam_u2f.so authfile=3D/etc/u2f_mappings cue
=20=20=20=20
    # for password-less authentication:
    auth sufficient pam_u2f.so authfile=3D/etc/u2f_mappings cue pinverifica=
tion=3D1

In the "second factor" scenario, a `PAM_IGNORE` return from pam-u2f
means that login will be possible without actually providing a second
factor. The first factor authentication module (typically something like
`pam_unix`) will set a `PAM_SUCCESS` return value, which will become the
overall authentication result.

In the "password-less" authentication scenario, when pam-u2f is used
exclusively for authentication, a `PAM_IGNORE` return could mean that
login will succeed without providing any authentication at all. The
precondition for this is that another module in the `auth` management
group returns `PAM_SUCCESS`. There exist utility modules that don't
actually authenticate but perform helper functions or enforce policy. An
example is the pam_faillock [8] module, which can be added to the
`auth` management group to record failed authentication attempts and
lock the account for a certain time if too many failed attempts occur.
This module will return `PAM_SUCCESS` when running in "preauth" mode and
if the maximum number of failed attempts has not been reached yet. In
such a case `PAM_SUCCESS` would become the overall authentication result
when pam-u2f returns `PAM_IGNORE`.

An attacker can attempt to provoke a situation that results in a
`PAM_IGNORE` return value in pam-u2f to achieve one of these outcomes.
In particular, provoking an out-of-memory situation comes to mind - for
example if a local attacker already has user level access and wants to
escalate privileges via `sudo` or `su`.

3) Upstream Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We suggested to upstream to change the problematic `PAM_IGNORE` return
values to others that mark the authentication as failed, e.g.
`PAM_BUF_ERR` for memory allocation errors or `PAM_ABORT` for other
critical errors. Furthermore we suggested to harmonize the error
handling in the affected function, because different styles of return
values [9] have been used in the `retval` variable (`PAM_*` constants
mixed with literal integers returned from sub-functions).

Upstream implemented a bugfix along these lines, which is available in
commit a96ef17f74b8e4 [10]. This bugfix is available as
part of release 1.3.1 [11]. Yubico also offer their own security
advisory [12] for this CVE.

4) Remaining Uses of `PAM_IGNORE`
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D

`PAM_IGNORE` should only be used in clearly defined circumstances, like
when necessary configuration for the PAM module is missing. Even then,
this behaviour ideally should require an explicit opt-in by
administrators, by passing configuration settings to the module's PAM
configuration line.

Two such cases remain in pam-u2f with the bugfix applied. These cases
trigger if no auth file exists for the user to be authenticated and if
the "nouserok" option has been passed to the PAM module.

5) Possible Workaround
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

If applying the bugfix is not possible right away, then a temporary
workaround for the issue can be applied via the PAM stack configuration
by changing the `pam_u2f` line as follows:

    auth       [success=3Dok default=3Dbad]    pam_u2f.so [...]

This way even a `PAM_IGNORE` return in `pam_u2f.so` will be considered a
bad authentication result by libpam.

6) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2024-11-20: We reported the issue to Yubico security (security@yubico.com),=
 offering coordinated disclosure.
2024-11-22: Yubico security accepted coordinated disclosure and stated that=
 they are working on a fix.
2024-12-06: Yubico security notified us that a bugfix release is planned in=
 early January.
2024-12-12: Yubico security shared their suggested bugfix with us. We sent =
back minor suggestions for improvement.
2025-01-08: Yubico security informed us of the release date of 2025-01-14.
2025-01-10: Yubico security shared the CVE identifier and their formal secu=
rity advisory with us.
2025-01-14: The upstream bugfix release 1.3.1] [11] has been published as p=
lanned.

7) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://developers.yubico.com/pam-u2f/
[2]: https://security.opensuse.org/2025/01/14/pam-u2f-ignore-returns.html
[3]: https://github.com/Yubico/pam-u2f
[4]: https://github.com/Yubico/pam-u2f/tree/pam_u2f-1.3.0
[5]: https://github.com/linux-pam/linux-pam/blob/ea980d991196df67cdd56b3f65=
d210b73218d08a/libpam/include/security/_pam_types.h#L29
[6]: https://github.com/Yubico/pam-u2f/blob/pam_u2f-1.3.0/pam-u2f.c#L169
[7]: https://developers.yubico.com/pam-u2f/#examples
[8]: https://linux.die.net/man/8/pam_faillock
[9]: https://github.com/Yubico/pam-u2f/blob/773bf275e207a5a626313cf0a92d382=
7f8784b85/pam-u2f.c#L391
[10]: https://github.com/Yubico/pam-u2f/commit/a96ef17f74b8e4ed80a97322120a=
f1a228a1ffb7
[11]: https://github.com/Yubico/pam-u2f/releases/tag/pam_u2f-1.3.1
[12]: https://www.yubico.com/support/security-advisories/ysa-2025-01/

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
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--vh3Ad4PjUsMAMr+9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmeHpCUACgkQFMQFyXGS
NVNfQxAAgUla6IuOl7WLYEuawHnA0TqNbC4w80mBGsuBEm82DjtFetSTkXguvpTU
n4VPZI0KpS/l+JiFghnkha2mnk172k8T5NygYkFxQfZABE+Ukw2eoNlWBegAKTDm
S4dlx1p6j6D4Dydb9CsPONq+Okp3A16as86Lg/yJGxX05KWdW/eyChVzugx9wyCS
S7L2tlBM7Yg9a/UKkr4cc8YJddFxe3/+GB4YmiDg397whiNRX+Otm29jQFXAm+rc
O/eXzK6C6ct85Y1LGlSU1pDnHL4JIF0p6+CAC9CE+3Zoo+B88hcNh3VXgeQT6qZZ
iAfhe51g6cXVYKkBwDfLW4H5duVAzKogWL1TQOTJqm27HSdwt7AcewpPPP0d/1To
pSesJSXn3SeFnnpPmAEk776tzzlmRMuNjThW3PqSmkzXZxVNKqkRDcLZRCkWLTBe
F5RcS26Wf9S9R5bdpm9Bix/u8x5smFQmouGAOdtSmMb9dVz6RZx6bL0IpBlvMHle
u+PO8guVll2RipV4C6mPn+0LKS8FGSy26w6z9Eg1Kw8R4vdU9JYI1DOvy+ye3ttG
kX5srGtuC0pu3BHN+7h/5bj9sYSDvEgS42bu1kLnj7zo17WXJmlJPvTq2f4TwtyM
KcAiEWOsImzD+HeE56f0mkeLry/JJanIxjjzHhdU0ErdGy7dhis=
=ubZ5
-----END PGP SIGNATURE-----

--vh3Ad4PjUsMAMr+9--
