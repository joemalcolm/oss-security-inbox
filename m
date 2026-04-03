Received: (qmail 3303 invoked by uid 550); 3 Apr 2026 07:44:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3240 invoked from network); 3 Apr 2026 07:44:06 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Damien Miller <djm@cvs.openbsd.org>
Date: Fri, 03 Apr 2026 09:43:49 +0200
Message-ID: <2180860.3VsfAaAtOV@fcf>
In-Reply-To: <8054b51fdf431307@cvs.openbsd.org>
References: <8054b51fdf431307@cvs.openbsd.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart3672830.AJdgDx1Vlc"
Content-Transfer-Encoding: 7Bit
Subject: Re: [oss-security] Announce: OpenSSH 10.3 released

--nextPart3672830.AJdgDx1Vlc
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On gioved=C3=AC 2 aprile 2026 11:25:08 Ora legale dell=E2=80=99Europa centr=
ale Damien Miller wrote:
> Security
> =3D=3D=3D=3D=3D=3D=3D=3D
>=20
>  * ssh(1): validation of shell metacharacters in user names supplied
>    on the command-line was performed too late to prevent some
>    situations where they could be expanded from %-tokens in
>    ssh_config. For certain configurations, such as those that use a
>    "%u" token in a "Match exec" block, an attacker who can control
>    the user name passed to ssh(1) could potentially execute arbitrary
>    shell commands.  Reported by Florian Kohnh=C3=A4user.
>=20
>    We continue to recommend against directly exposing ssh(1) and
>    other tools' command-lines to untrusted input. Mitigations such
>    as this can not be absolute given the variety of shells and user
>    configurations in use.
>=20
>  * sshd(8): when matching an authorized_keys principals=3D"" option
>    against a list of principals in a certificate, an incorrect
>    algorithm was used that could allow inappropriate matching in
>    cases where a principal name in the certificate contains a
>    comma character. Exploitation of the condition requires an
>    authorized_keys principals=3D"" option that lists more than one
>    principal *and* a CA that will issue a certificate that encodes
>    more than one of these principal names separated by a comma
>    (typical CAs stronly constrain which principal names they will
>    place in a certificate). This condition only applies to user-
>    trusted CA keys in authorized_keys, the main certificate
>    authentication path (TrustedUserCAKeys/AuthorizedPrincipalsFile)
>    is not affected. Reported by Vladimir Tokarev.
>=20
>  * scp(1): when downloading files as root in legacy (-O) mode and
>    without the -p (preserve modes) flag set, scp did not clear
>    setuid/setgid bits from downloaded files as one might typically
>    expect. This bug dates back to the original Berkeley rcp program.
>    Reported by Christos Papakonstantinou of Cantina and Spearbit.
>=20
>  * sshd(8): fix incomplete application of PubkeyAcceptedAlgorithms
>    and HostbasedAcceptedAlgorithms with regard to ECDSA keys.
>    Previously if one of these directives contains any ECDSA algorithm
>    name (say "ecdsa-sha2-nistp384"), then any other ECDSA algorithm
>    would be accepted in its place regardless of whether it was
>    listed or not.  Reported by Christos Papakonstantinou of Cantina
>    and Spearbit.
>=20
>  * ssh(1): connection multiplexing confirmation (requested using
>    "ControlMaster ask/autoask") was not being tested for proxy mode
>    multiplexing sessions (i.e. "ssh -O proxy ..."). Reported by
>    Michalis Vasileiadis.

Hello Damien,

thank you for bringing this to oss-security so that everyone is aware of it.

Regarding the security changes, we do not see any CVE assigned. Could you p=
lease clarify=20
your perspective on this? Are these changes considered simply hardening imp=
rovements,=20
or do they have a security impact that would warrant a CVE?

Thank you.
Agostino

--nextPart3672830.AJdgDx1Vlc--



