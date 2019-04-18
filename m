X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6147" "Thursday" "18" "April" "2019" "12:43:55" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20190418104355.GD9248@f195.suse.de>" "156" "[oss-security] Security issues in snapcraft snap-confine set*id binary" nil nil nil "4" "2019041810:43:55" "[oss-security] Security issues in snapcraft snap-confine set*id binary" (number mark "U       mgerstner@su Apr 18  156/6147  " thread-indent "\"[oss-security] Security issues in snapcraft snap-confine set*id binary\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Security issues in snapcraft snap-confine set*id binary" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25908 invoked by uid 550); 18 Apr 2019 10:44:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25844 invoked from network); 18 Apr 2019 10:44:08 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 18 Apr 2019 12:43:55 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20190418104355.GD9248@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0eh6TmSyL6TZE2Uz"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Security issues in snapcraft snap-confine set*id binary

--0eh6TmSyL6TZE2Uz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

a couple of security issues have been found in the snapcraft package
manager [1] during the course of a security review for inclusion of
snapcraft in openSUSE [2]. The basis for this review was upstream
version 2.37.4.

snapcraft uses a setuid/setgid root program called `snap-confine` to
setup namespace based containers for snap packages. While the program's
code is generally of good quality the following moderate security issues
have been found:

1) Up and including to version 2.37.4 the /tmp directory within a snap
  container was owned by the first user that entered the container. Since
  snap containers can be used by multiple users at the same time or a
  privileged program or daemon may run in a container, the security of
  files and directories in /tmp is compromised.  An attacker can remove
  or replace files and directories belonging to other users within the
  container's /tmp to achieve an unspecified impact.

  This issue was recently fixed by upstream via commit [3].

2) The `sc_join_preserved_ns()` function along with a number of other
  function remembers the current working directory (CWD) of the calling
  user outside of the container and attempts to restore this CWD again
  within the container. The `chdir()` operation to restore the CWD is
  performed with root privileges within the container and is prone to
  symlink attacks. Therefore an unprivileged user can enter arbitrary
  directories within the container. Example PoC:

  ```
  user1 $ snap run --shell opera
    user1 $ cd /tmp
    user1 $ umask 077
    user1 $ mkdir user1_private
    user1 $ cd user1_private
    user1 $ umask 022
    user1 $ mkdir subdir
    user1 $ cd subdir
    user1 $ echo secret >file

  user2 $ cd /tmp
  user2 $ mkdir -p user1_private/subdir
  user2 $ ln -s /tmp/user1_private/subdir user2_private
  user2 $ cd user2_private
  user2 $ snap run --shell opera
    user2 $ /tmp/user1_private/subdir
    user2 $ cat file
    secret
  ```

  In this example user2 enters the public sub-directories of a private
  tmp directory of user1 within the application container. Basically
  this can also be used to enter /root or /var/lib/snapd/hostfs/root/.config
  and so on.

  The severity of this issue is reduced, because snap-confine employs
  extensive AppArmor profiles that prevent many file system accesses
  beyond classic DAC permission checks.

  This issue is addressed by an upstream PR [4].

3) In function `sc_parse_mountinfo_entry()` the pseudo file
  /proc/self/mountinfo is parsed. In the subsequently called helper
  function `parse_next_string_field()` most of the content of each line
  from that file is parsed. This helper function uses `sscanf()` with a
  "%s%n" format. %s in `sscanf()` extracts a whitespace delimited
  string. While the kernel protects e.g. against newlines found in
  directory names by encoding them specially in the mountinfo file,
  there are whitespace characters that are not protected against.
  Unprivileged users can use mechanisms like FUSE based file systems
  like sshfs to mount file systems onto such strangely named
  directories:

  ```
  user $ cd /tmp
  user $ mkdir `echo -e "strange\rdir"`
  user $ sshfs localhost:/tmp strange?dir
  ```

  The result will be an entry in /proc/self/mountinfo that looks like
  this:

  ```
  111 107 0:49 / /tmp/strange\rdir rw,nosuid,nodev,relatime shared:59 - fus=
e.sshfs localhost:/tmp/ rw,user_id=3D1000,group_id=3D100\n
  ```

  The parsing logic in snap-confine will wrongly treat "/tmp/strange" as
  the `mount_dir` and continue parsing "the next field" after the
  carriage return.  Basically this allows the attacker to provide the
  rest of the fields parsed by snap-confine via the directory name. In
  my tests no failure was detected by `sc_parse_mountinfo()`, since
  parsing "%s" always works as long there is data left to parse.

  I don't see any viable attack vector here at the moment. To actually
  control the behaviour of snap-confine we'd need to control the field
  (4) of the mountinfo file. This field is only available to
  unprivileged users if they can perform a bind mount. Maybe there is a
  setuid tool around that allows such things, then it would be a tool to
  further influence what snap-confine does. In such a case it could e.g.
  be used to force triggering of the discard-ns logic of snap-confine.

  This issue is addressed by an upstream PR [5].

I've asked upstream to assign CVEs for issues 1) and 2) but they're not
available yet.

Best Regards

Matthias

[1]: https://snapcraft.io/
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1127368
[3]: https://github.com/snapcore/snapd/commit/bdbfeebef03245176ae0dc323392b=
b0522a339b1
[4]: https://github.com/snapcore/snapd/pull/6642
[5]: https://github.com/snapcore/snapd/pull/6605

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG Nuernberg)

--0eh6TmSyL6TZE2Uz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAly4VOsACgkQFMQFyXGS
NVMcihAAp7GlIGhJL4dilkC+7ewZhYhDk9Y2jt0hsh464sHNYnMsWaikLkRWUf02
6zcDqcmSThUOILdtZCKJ5DIce39F6i8N0JCvD9lWUUzTA9s+MM3GC6N6QgOqYt4t
QP4/Sh5gR/KtIOAEvNSuTPt3yKxXuKCph1IA/Mcnad/jiJI9Ddmpbgv2D22kohzD
m2AK886YTaggZ7monHUBSfxxAxy2dHS8O/Z6iwPHPjtQ4FXOm/E0dw90cxfweEST
lYHByQ9o4HXufcMaPitEaGog0KEFhvmvCq820fQWgvcIrfUVySS86LKnP99FRNfN
C2TVLt2ZMg1G4y4UvVJY62ve8GVWskDidUmPLX/DFdHORKFdFfmrqkIVrMs2drbF
Wf3OIHJYRPqUAq6MzTQoyRfePqMZK0qXY4LZ5cKydfZwnccgQJ+VVSYDy1zoGGiA
ggZci8I/P6T3xifSmt6WLgaYNlAOolEyZB9EkIOuQ78/sqjbYxhg2MRI86nserML
UWoeJi8iAkkgHOy26ltipkZf39AdIxR6C04s3jM015Ur1jmasUZbIdwA9xyDB1P4
4T1Egj9H9lHu260R1+NvrmlHvlCHPNAVagNiEVfqF5bJT+OEu1y3JdszQHkr8WTi
GauKRZT7TE9K+w1S8xHt7d/bzdsfKB8N/FK6JDn689NTe3YZJxU=
=3erS
-----END PGP SIGNATURE-----

--0eh6TmSyL6TZE2Uz--
