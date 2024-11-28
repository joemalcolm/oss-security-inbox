Received: (qmail 17926 invoked by uid 550); 28 Nov 2024 09:32:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17896 invoked from network); 28 Nov 2024 09:32:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1732786334; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=p/OXSOuHaUI4WS9vzBVH2oy/hsvPDLUmpQKM8eeg84U=;
	b=eA3o8Cnn9hGCRdavoAUjKMkSR4NkGoytR+HHhYDNCxUwahPdQ0fzjjlIPn7xpxZ4fh+n2n
	YweqYieOX/SheS3rpj4t8oUBU+AvOeAZBxgxCMnxKnCjRBirz0q7qy9VqzxLITdp4HIA6/
	HFHbU50f753Mz6iKV/Q2MamUWBS3IGk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1732786334;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=p/OXSOuHaUI4WS9vzBVH2oy/hsvPDLUmpQKM8eeg84U=;
	b=Tby7Jst7HLpg1JdOs0Bej0maHXnPRvv4sjSvlqBvLT/j7pIODwijnouO/urlUMqVPo1bHP
	by5TEDQE/zK44+BQ==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1732786334; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=p/OXSOuHaUI4WS9vzBVH2oy/hsvPDLUmpQKM8eeg84U=;
	b=eA3o8Cnn9hGCRdavoAUjKMkSR4NkGoytR+HHhYDNCxUwahPdQ0fzjjlIPn7xpxZ4fh+n2n
	YweqYieOX/SheS3rpj4t8oUBU+AvOeAZBxgxCMnxKnCjRBirz0q7qy9VqzxLITdp4HIA6/
	HFHbU50f753Mz6iKV/Q2MamUWBS3IGk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1732786334;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=p/OXSOuHaUI4WS9vzBVH2oy/hsvPDLUmpQKM8eeg84U=;
	b=Tby7Jst7HLpg1JdOs0Bej0maHXnPRvv4sjSvlqBvLT/j7pIODwijnouO/urlUMqVPo1bHP
	by5TEDQE/zK44+BQ==
Date: Thu, 28 Nov 2024 10:32:09 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Z0g4nBTW-VFYm4cu@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wMFsZItBRj851CzY"
Content-Disposition: inline
Subject: [oss-security] tuned: local root exploit in D-Bus method instance_create and other
 issues in tuned >= 2.23 (CVE-2024-52336, CVE-2024-52337)

--wMFsZItBRj851CzY
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Nov 2024 10:32:09 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: tuned: local root exploit in D-Bus method instance_create and other
 issues in tuned >= 2.23 (CVE-2024-52336, CVE-2024-52337)

Hello list,

this is a report a about a local root exploit and some other issues in
tuned [1]. We also offer a rendered version of this report on our blog
[2].

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Tuned is a privileged daemon for Linux that supports
automatic tuning of various hardware and kernel settings during runtime.
The daemon offers a comprehensive D-Bus interface protected by Polkit
authentication. We regularly perform reviews of newly introduced D-Bus
system services and changes to them. Tuned sees frequent additions to
its D-Bus interface and this is already the tenth review of it that we
carried out since 2019. Usually the reviews are straightforward and we
have no complaints, but this time was the exception.

During the review we checked the D-Bus methods matching the following
Polkit actions:

    com.redhat.tuned.instance_create        (auth_admin:auth_admin:yes)
    com.redhat.tuned.instance_destroy       (auth_admin:auth_admin:yes)
    net.hadess.PowerProfiles.HoldProfile    (no:no:yes)
    net.hadess.PowerProfiles.ReleaseProfile (no:no:yes)

This report is based on tuned release v2.24.0.

2) Problems in the `instance_create` D-Bus Method
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Calling the `instance_create()` D-Bus method is allowed without
authentication for locally logged-in users (`yes` Polkit setting). The
method call accepts various parameters, including an `options`
dictionary, that are fully under attacker control.

2a) Script Options Allow Local Root Exploit (CVE-2024-52336)
------------------------------------------------------------

The `script_pre` and `script_post` options allow to pass arbitrary
scripts that will be executed by _root_. The parameters are extracted in
daemon/controller.py:459 [3], stored unmodified in a new `Instance`
object and the only verification of the script path is performed in
plugins/base.py:222 [4]:

```
    if not script.startswith("/"):
        log.error("Relative paths cannot be used in script_pre or script_po=
st. " \
                + "Use ${i:PROFILE_DIR}.")
        return False
```

So the only requirement is that an absolute path is passed. Thus,
scripts under control of an unprivileged user can be passed here. This
allows for a local root exploit.

### Reproducer

As a locally logged-in non-privileged user execute the following D-Bus
call:

```
    $ gdbus call -y -d com.redhat.tuned -o /Tuned \
        -m com.redhat.tuned.control.instance_create cpu myinstance \
        '{"script_pre": "/path/to/myscript.sh", "devices": "*"}'
```

The path _/path/to/myscript.sh_ needs to be replaced by a path to a user
controlled executable script or program. It will be executed by tuned
with root privileges.

2b) Instance Name can Contain Arbitrary Data (CVE-2024-52337)
-------------------------------------------------------------

The `instance_name` parameter of the `instance_create()` method is not
sanitized. This string is later on used in logging and in the output of
utilities like `tuned-adm get_instances`, or other third party programs
that utilize tuned's D-Bus interface to obtain instance names.

A local attacker can include arbitrary data in the instance name and can
achieve log spoofing this way. By placing newline characters into the
name, seemingly independent, legitimate-looking entries can be added to
the tuned log. By adding terminal control sequences the terminal
emulators of administrators or other users can be influenced. The
following is a Proof-of-Concept for this:

```
    $ EVIL=3D`echo -e "this is\nevil\033[?1047h"`
    $ gdbus call -y -d com.redhat.tuned -o /Tuned -m com.redhat.tuned.contr=
ol.instance_create cpu "$EVIL" '{"devices": "*"}'
```

When another user now calls `tuned-adm get_instances` then the terminal
emulator will switch to the alternate screen upon output of the crafted
instance name.

Affectedness
------------

The `instance_create()` D-Bus method has been added via upstream commit
cddcd233 [5] and was first part of version tag v2.23.0. The initial
version already contained support for the script option parameters and
the `instance_name` parameter.

3) Problems in the PowerProfiles Interface
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

3a) Cookie in PowerProfiles API is Predictable
----------------------------------------------

The new D-Bus methods `HoldProfile()` and `ReleaseProfile()` use a
cookie to identify a profile hold. The cookie is simply a continuously
increasing integer starting at zero. This means other users in the
system can easily release the profile holds of any other users.

3b) User Supplied Strings can Contain Arbitrary Data
----------------------------------------------------

The `HoldProfile()` call accepts `reason` and `app_id` strings which are
used in logging and may also be returned as a dictionary via
`ProfileHold.as_dict()`.  These strings can again contain crafted data
that could have side effects similar to the ones shown in section 2b).

Suggested Fix
-------------

A local DoS scenario using the `cookie` would only be an issue on
multi-user systems, or if the Polkit settings are relaxed so that also
non-local sessions can use these D-Bus methods. One way to make this
more robust could be to hand out random `cookie` IDs instead, to make
the attack less trivial.

4) Bugfixes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Upstream published release v2.24.1 [6] that addresses the issues
described in this report. Commit 90c24eea037 [7] contains the cumulative
fixes as follows:

- plugins are now only loaded from trusted locations
  (`_safe_script_path()` function).
- various user supplied strings are rejected if they contain disallowed
  characters (`is_valid_name()` function).
- upstream also tightened the tuned Polkit policy for `instance_create`
  and a number of other actions, that they also found to be problematic
  when accessed by local unprivileged users.

For issue 3a) no upstream fix is available at the moment. This is more
of a hardening suggestion, though.

5) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2024-11-07: We reported the issues to the Red Hat security team.
2024-11-08: Red Hat security confirmed the issues and communicated the
	    CVE assignments to us, and the publication date of
	    2024-11-26 was suggested.
2024-11-11: Red Hat shared the suggested patch and we reviewed it.
2024-11-26: The publication date has been reached and publication
            happened as planned.

6) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/redhat-performance/tuned
[2]: https://security.opensuse.org/2024/11/26/tuned-instance-create.html
[3]: https://github.com/redhat-performance/tuned/blob/v2.24.0/tuned/daemon/=
controller.py#L459
[4]: https://github.com/redhat-performance/tuned/blob/v2.24.0/tuned/plugins=
/base.py#L222
[5]: https://github.com/redhat-performance/tuned/commit/cddcd2336944a56e313=
324c699dd739fe8f1f85d
[6]: https://github.com/redhat-performance/tuned/releases/tag/v2.24.1
[7]: https://github.com/redhat-performance/tuned/commit/90c24eea037c7a5e941=
4c93f8fb3e549ed4a7b06

Regards

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

--wMFsZItBRj851CzY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmdIOJkACgkQFMQFyXGS
NVPy1hAAlOwzzNLl9RhDl5zHGtYkMhBAJmmZBfjCdXg2L81xjHvXW8+dmWIFI0jH
E6j2/+YAeNEjpj64gwk2xuBsD4JYK2UO9W/V33hQzteQgM7SJDoZ6YTl/uqit3b/
RMd5Tl/qC/jFy0Md6FowJgLhJsdHklmrePV5i65CLpCxPI0mYmd1uY/strswWwHn
kGgp5qilidsVcFtRV3QgjAzxg4sauqqKchCtfNDdyHSmouB4JT9pTcobn5GETwaf
kr6F3UQnbPGnvvnUnUn1n2X5neYAQRCnlT2aY299mWfvyDcK2QRNE+HYrII8fdOj
BtK39O7Vs/tF09Xl0ufjHbTGUU3Ncg39LQ2yLJEL1n+dJKNpIS5W2kgTlVqgUX5H
OCU4D+sR+QsyCheuBCyteCN+qWugpUasEqFmevUgwIkpTsW5VnNqV0Q2VROj1LfS
IsCSyvcsPRULVESCnASwDXMH/5zSIpuWnv5fO6ofsuu02Tzsl2GK29+f9V4QgQDw
3B2hG9/0UczgGoCQT5jAKJ7Yr4ShuDMr1ZeO7P9E5ChNZ9bRu4Kj4A+hjXlBNNEz
B3dmEeqNXrce2NCJteYJ7ew96C2+Jl6Qg6wrfQF7PRHO5vRCXcUNEkDonQkUsphn
HXycrFR0CnuwT+tHbSRECS7p7qvUYJTIj5mvpZl3GjHTMeA1mVI=
=mR0Y
-----END PGP SIGNATURE-----

--wMFsZItBRj851CzY--
