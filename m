X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2294" "Sunday" "17" "December" "2017" "15:17:45" "+0100" "Stefano Brivio" "sbrivio@redhat.com" "<20171217151745.53c23a7b@elisabeth>" "60" "Re: [oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption" nil nil nil "12" "2017121714:17:45" "[oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption" (number mark "U       sbrivio@redh Dec 17   60/2294  " thread-indent "\"Re: [oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption\"\n") "<CAA7hUgE_9Q_sta09JaBZNezm=7O5hvaJ1DVUARxdV+MMyvGGng@mail.gmail.com>" ("<CAA7hUgE_9Q_sta09JaBZNezm=7O5hvaJ1DVUARxdV+MMyvGGng@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29745 invoked by uid 550); 17 Dec 2017 14:39:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17490 invoked from network); 17 Dec 2017 14:18:06 -0000
Date: Sun, 17 Dec 2017 15:17:45 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Raphael Geissert <atomo64@gmail.com>
Cc: oss-security@lists.openwall.com, security@sonatype.com
Message-ID: <20171217151745.53c23a7b@elisabeth>
In-Reply-To: <CAA7hUgE_9Q_sta09JaBZNezm=7O5hvaJ1DVUARxdV+MMyvGGng@mail.gmail.com>
References: <CAA7hUgE_9Q_sta09JaBZNezm=7O5hvaJ1DVUARxdV+MMyvGGng@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Sun, 17 Dec 2017 14:17:54 +0000 (UTC)
Subject: Re: [oss-security] Sonatype Nexus Repository Manager 2.x weak
 password encryption

On Sun, 17 Dec 2017 13:53:47 +0100
Raphael Geissert <atomo64@gmail.com> wrote:

> Hi,
>=20
> The Nexus Repository Manager in at least version 2.14.5 [0] (latest of
> the 2.x series), stores the LDAP bind password in an on-disk file
> using PBE (bouncy castle's implementation of PBEWithSHAAnd128BitRC4).
>=20
> This is all great except for:
> - it using only 23 iterations[1]
> - it using a hard-coded and weak password[2]
>=20
> Therefore offering as much protection as a rot13 would.
>=20
> Given that the same PasswordHelper containing the weak password is
> present elsewhere in the code, it is very likely that this weak crypto
> issue affects other passwords stored by Nexus:
>=20
> - components/nexus-core/src/main/java/org/sonatype/nexus/configuration/Pa=
sswordHelper.java[3]
> - components/nexus-security/src/main/java/org/sonatype/security/configura=
tion/source/PasswordHelper.java[4]
>=20
> It appears that this code is no longer used by the 3.x series.
>=20
> FWIW, the on-file password is:
>=20
> base64(SALT_SIZE || SALT || PBE_OUTPUT )
>=20
> SALT_SIZE always being 8 (hard-coded).
>=20
> N.b. I'll be filing a CVE request in a moment.
> N.b. I have not contacted sonatype. I couldn't find an email address.

The page at https://www.sonatype.com/contactus says:

	1. Send urgent or sensitive reports to security@sonatype.com.
	2. Use our public key to keep your message safe.
	3. Provide us with a secure way to respond.
	4. We=E2=80=99ll get back to you as soon as we can. Usually within 24 hour=
s.

> [0] https://help.sonatype.com/display/NXRM2/2017+Release+Notes
> [1] https://github.com/sonatype/nexus-public/blob/nexus-2.x/components/ne=
xus-ldap-common/src/main/java/org/sonatype/security/ldap/upgrade/cipher/Def=
aultPlexusCipher.java#L64
> [2] https://github.com/sonatype/nexus-public/blob/nexus-2.x/components/ne=
xus-ldap-common/src/main/java/org/sonatype/security/ldap/realms/persist/Def=
aultPasswordHelper.java
> [3] https://github.com/sonatype/nexus-public/blob/nexus-2.x/components/ne=
xus-core/src/main/java/org/sonatype/nexus/configuration/PasswordHelper.java
> [4] https://github.com/sonatype/nexus-public/blob/nexus-2.x/components/ne=
xus-security/src/main/java/org/sonatype/security/configuration/source/Passw=
ordHelper.java
>=20
> Cheers,

--=20
Stefano
