X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9206" "Tuesday" "28" "May" "2019" "14:25:13" "+1000" "Aleksa Sarai" "cyphar@cyphar.com" "<20190528042345.epozq4a25hwiduhx@yavin>" "188" "[oss-security] CVE-2018-15664: docker (all versions) is vulnerable to a symlink-race attack" "^Date:" nil nil "5" "2019052804:25:13" "[oss-security] CVE-2018-15664: docker (all versions) is vulnerable to a symlink-race attack" (number mark "U       cyphar@cypha May 28  188/9206  " thread-indent "\"[oss-security] CVE-2018-15664: docker (all versions) is vulnerable to a symlink-race attack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2018-15664: docker (all versions) is vulnerable to a symlink-race attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3088 invoked by uid 550); 28 May 2019 04:25:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 2043 invoked from network); 28 May 2019 04:25:52 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
Message-ID: <20190528042345.epozq4a25hwiduhx@yavin>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m7rk7l4675kbe3jp"
Content-Disposition: inline
Date: Tue, 28 May 2019 14:25:13 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-15664: docker (all versions) is vulnerable to a
 symlink-race attack
To: oss-security@lists.openwall.com

--m7rk7l4675kbe3jp
Content-Type: multipart/mixed; boundary="pibqf2s52lolsgeh"
Content-Disposition: inline


--pibqf2s52lolsgeh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There is no released Docker version with a fix for this issue at the
time of writing. I've submitted a patch upstream[1] which is still
undergoing code review, and after discussion with them they agreed that
public disclosure of the issue was reasonable. Since the SUSE bug report
contains exploit scripts[2], I've attached them here too.

This attack was discovered by myself (Aleksa Sarai), though T=F5nis Tiigi
did mention the possibility of an attack like this in the past (at the
time we thought the race window was to small to exploit). In addition,
you could see this exploit as a continuation of some 'docker cp'
security bugs that I helped find and fix more than 4 years ago in
2014[3,4] (these were never assigned CVEs because at the time it was
thought that attacks which used access to docker.sock were not valid
security bugs).

[[ Overview ]]

The basic premise of this attack is that FollowSymlinkInScope suffers
from a fairly fundamental TOCTOU attack. The purpose of
FollowSymlinkInScope is to take a given path and safely resolve it as
though the process was inside the container. After the full path has
been resolved, the resolved path is passed around a bit and then
operated on a bit later (in the case of 'docker cp' it is opened when
creating the archive that is streamed to the client). If an attacker can
add a symlink component to the path *after* the resolution but *before*
it is operated on, then you could end up resolving the symlink path
component on the host as root. In the case of 'docker cp' this gives you
read *and* write access to any path on the host.

As far as I'm aware there are no meaningful protections against this
kind of attack (other than not allowing "docker cp" on running
containers -- but that only helps with his particular attack through
FollowSymlinkInScope). Unless you have restricted the Docker daemon
through AppArmor, then it can affect the host filesystem -- I haven't
verified if the issue is as exploitable under the default SELinux
configuration on Fedora/CentOS/RHEL.

[[ Exploit Scripts ]]

Attacked are two reproducers of the issue. They both include a Docker
image which contains a simple binary that does a RENAME_EXCHANGE of a
symlink to "/" and an empty directory in a loop, hoping to hit the race
condition. In both of the scripts, the user is trying to copy a file to
or from a path containing the swapped symlink.

In the case of run_read.sh, I get a <1% chance of hitting the race
condition (my attack script is quite dumb, it's possible with better
timing you'd be able to hit the race window much more effectively).
However <1% still means it only takes 10s of trying to get read access
to the host with root permissions.

  % ./run_read.sh &>/dev/null & ; sleep 10s ; pkill -9 run.sh
  % chmod 0644 ex*/out # to fix up permissions for grep
  % grep 'SUCCESS' ex*/out | wc -l # managed to get it from the host
  2
  % grep 'FAILED'  ex*/out | wc -l # got the file from the container
  334

However, the run_write.sh script can overwrite the host filesystem in
very few iterations -- this is because internally Docker has a
"chrootarchive" concept where the archive is extracted from within a
chroot. However, Docker doesn't chroot into the container's "/" (which
would make this exploit ineffective), it chroots into the parent
directory of the archive target -- which is attacker controlled. As a
result, this actually results in the attack being more likely to succeed
(once the chroot has hit the race, the rest of the attack is guaranteed
to succeed).

The scripts will ask for sudo permissions, but that is only to be able
to create a "flag file" in /. You could modify the scripts to target
/etc/shadow instead if you like.

[[ Future Work ]]

In an attempt to come up with a better solution for this problem, I've
been working on some Linux kernel patches which add the ability to
safely resolve paths from within a rootfs[5]. But they are still being
reviewed and it will take a while for userspace to be able to take
advantage of the new interfaces. However, I am also working on
redesigning my "secure join" library's API[6] so that we can at least
better detect these attacks on older kernels and take advantage of [5]
in newer kernels.

[1]: https://github.com/docker/docker/pull/39252
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1096726
[3]: https://github.com/docker/docker/pull/5720
[4]: https://github.com/docker/docker/pull/6000
[5]: https://marc.info/?l=3Dlinux-fsdevel&m=3D155835923516235&w=3D2
[6]: https://github.com/cyphar/filepath-securejoin

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--pibqf2s52lolsgeh
Content-Type: application/x-xz
Content-Disposition: attachment; filename="symlink_race.tar.xz"
Content-Transfer-Encoding: base64

/Td6WFoAAATm1rRGAgAhARYAAAB0L+Wj4E//CPVdABcLxoeSWjunj8clDrgP
tNQvLgoNNnrYr7zUOBkS/+yK725mdamSpJbjaCJbho/iknvYNq+5TpuVNsdD
OxlgUIf6UQgZBTCbY5bsWvepxr6tD5MdeZOJnEiaCMfDzsZywouTda26Gw8F
wSTqQwdEKxOd1KldM9zGw3Y1TRtDz5sS2qW36Nr50QD9ejy/JFN6xdvGm594
iXYGDHuJ3+nQN6JoIp0r1fSbeNG/LvHSrrblcbLittpKByN0nyZWWxIhfxPJ
Kv7pOckddIcFL+P8/zUTJdBeEBr/RPaJqgQrmTSQNVjHRv+wf1VATfvef27V
8eT36FUR08utQU3gfNpDDt4WLI1KdYVfGNuFeu2xnJI1krSZ44tFWWFpgPbB
RH+o/gxg27cpnY3wdxng8RzlqswQmO3ui/ofgg9pDVyNZOlJQyUG9+Z3HmuC
Yy/uzdx0G6BJ7PK//VquNYHGGZ2EigP5GXRwVjVDwT/KBuRAezKbCOo6Fnws
KnZk0Arvqp+syPB1LeVwCefKLvvO5LgmUukfoQ/Y/0yR1Q+ki7Hj6m+06g9g
0UPGWniwBsR7psXzHQ5l5NxE/GFK2QkxaY/9VJBoIoL7AwCZz/Oj48jBmW+O
vwUAtFVrjkpEtMzyRDjWd1ImzAFz9TyFSY9bpJUV9Jmba5RVfAcXyD+UOl38
BHqeWGSdBcQqX25irdkBqIfFMMFzaeEnyaenJaglGPbbtQDXRS1oql7tc+Pk
2NPEiX969dfqykv1FiOffL0xFqCL1+RJEPekXI45qXcmVyP9NDVMoyvxK5IK
3X+VNbKThhxR9diw+MhkFAg25T19mm+3onCZJDbCWRoB88XX1jJF5oO5pVuZ
ffgHpGLR+F7LydG3lCh1QcEe7hP9gQ0hRbAA8mSen80DwAM5+CoIb9o+k4K1
61+eXlYpNqh4suBRVD4+uzyn3kseZftrXMkiRa0iTltV5M8J+o/GqrzrtXFp
9jOpUW4854FFwZfY4vVYAyLmgiRaenOlcEbck2wEP/tcwapOPZvG/F97lCLD
FIttuM5rRTOQidIvxPvpXlpFPl60Aj4cYW8knvf2+dA/a+PWCwLd6p5JOukm
BbiMYq7g4gVM6LwWefjkDVkiYf1o+MzdvNEtkxxJsBh++/uq4d/FsfBfVYuu
V/ztTcyX63gXv8bTLkkmKBIV+U8ApyvBcdLncAQzZDnSykkPsjXbodMwBU55
FFUQVEjUbT/p4JEpEPFbLzY5TA1GU8jv+MUfqfKVfTltoeYm7mq1X/tco4Z4
lgUIPumMGuImUrv+OVP2Ar38GHM5u/Gku0468Bh6lxXqv2675Fo1LqXuBXqN
K96FLLdOg/EfgRaULgXNwjtkMPLySwBq9kd2WUAiwvm43JAer7CWCW9tbCNN
DFTFu9Dumf8q5wdWDDbz2E4NZmslT+Jp62jUlAj609GxhdoJGYL4nFbKelt7
qn8pCk/LCuqD/2+AKcvS5Ic7jvue607DYDkKXdtpda4XNh9fEdLF860ID0g+
mcw3EPfto4fCfq3w+0m4WVkPP/rcAtcjEcp28NRCmyTWdos/+qVYCESoV491
t9aWsWsJ6ye22doBg4W9n8sT3/gcbivC55tbuumZ7ItE1YdktQw+NqZPTJtY
yKjtUG18jbeGBkhS+4HzbLUFhxL0HMg3DJLu59/WywnrYaVRnqZ4cEd+3X8b
P//kGd799yqBA0BuscUd4sLfNJd1Oe555p8kCxeUmKp2FosexV4K0OmCUWHJ
+VbcUT/WBMwti/CTBXQoNdoMvS4W63K8PNlGc6v0fGEcMJgAU3CAeQqctyfe
3834uXXM9EPj0zGVNJuVex09XSJB6dPYKb7YOEcVHqVfHHe5io6KG6FD1o/i
wp32zChoREijNVfMbMN5EMcvLRm74DWnamyek1w2ebYR0bHJe/FUBpWNJkw4
a6/c/6CtHjFSGSfYYIMRB8OODUGae8scFdielUifXKcE5rQ9v2rVAVFajASH
bkIqxvWP64j4emqeqaGpF6r10Saqlg6FzqhoxpN7bZCwnvQXr4Vw5epy9FWz
vIjxl3Uqwj1aEWiApf6htR9KhDkc+j6wwwEbysCd/GZIl+TBSdVNUXRUYRFf
O9F4ESh1/r/KZyNplg+fvfKg7XhyTGcLIf7fap1lj+o/7vWNkL74WTbCuALK
mVrf09zZFoAd5zt/6LKILLL+nXjK4v7NGRciTfW58gBKjztM7xtRZIBOB+FC
uTZ8yRRu6lGV3dvaokYUcXaKZdo8m/kiYtqT4kRIZXTh++cxEd4YdYqxExj/
1m+KYpN4ZqQyn5/eJaJ1gZXpcFFR07U8TZQ/gRLHugT7RUceFaC+WOKM6T5f
HEJ99gRS9pS+SELmhZKxXDVm7L96EUCHA8mPMh35fsvuhEWHmcTzqCQGp1R/
riBdMbBiUhW3wW0UwS4pwQ6BFKtghjgtvtXxuIu0MtkVEFN8N6ShjKxFugvI
0Ns3PpnS7aGKDxFek0Clm3H5gAXfWG0VNrAqYX2T7QjIkQUeT+E3w2gU3cZV
iKp53c88H9FBdvxeswmpTMTnIuDc2llAu8HmxcoJFPHl1Vf0sc0dA/rWeNF2
8XllRq5Dbj6rbBExvxARX5hc7Pmj7AcFhThZww2o2d2i8ut3hI374SDyaiwv
nKskYQrFcK4zE30/X6YtQyfR/699HaVokdHnrg4erXcMidPNQfxswyXTf0yV
tiTkCmhOo/AtPnFGZ1VKz6mw56KOaSBCEixW3Uv1jPpcgME58eujeBhnityT
GCv6n4HKZT/Lskl/of6SeO60cz1KYDwuvIywTc8utVSnBAX6BVdmVXiz9k8T
xQvWVzzwK7u0wyWsoBbq5dQ3WN4/vJdqoSgFjeImeRe/hyJh7HBKadC9DB2B
MEw4PxIgLeotCJJoCF2cbnnBaKPXxvkSkq/ljpozkSJhinqkuwZabIbBZPbK
h2ogPeHCgE0FIQhzregzzt+aOog0K67NehJKb0OoixFm2Edp0h2SZzdHSbeS
ZeVXsbZDcYBpZHnpJ9tUq7Z12bj4srXN+DPlAMwAAAAAJ+/ZQ2KosWoAAZES
gKABAMMPdSKxxGf7AgAAAAAEWVo=

--pibqf2s52lolsgeh--

--m7rk7l4675kbe3jp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb6Gz4/mhjNy+aiz1Snvnv3Dem58FAlzsuCkACgkQSnvnv3De
m59Yng//VKWE+ayhyqofNNMNcDB+hLHxs+ytRayztiP8DcdL8enPCaz5kI/ucBCw
7QpTZFwjLUYzkOihTdJjRr2VZVWEFoh3MhXTmMIvwPiVGVqt8EfPFvLN4fuUvxwg
VtbC+aJ1vLsOeMUI7Wcbzf4+wV+TvqJ+dVFV7vYF1zrcz+Mz8wOa3FIy3TR8wyFP
DCgadeFS4arU3iBVTZUQVAJjW8I9pVqdFKyRG1WdpAEH6MDTPUVchl/dx5BExLGD
4Wb/oD2rdXjSCwrECKq+Y6praILPNBpz6nQgtH58fVMC6J2BoacykgU/hWm/xykl
ZXTzZ3l4OlmFMJnka8Z/tI46yF/BZ590/bedYZxU0BZAjqjOxCr84Fhntfp2Wq/H
9w6ZM6x3Lu0Qp6wbI4L25lIlAwKUFj6MrFq9/GR0ajbXwghu64MIk7ocV3cALF0W
qJWtlXdbpAN2K0NRC8C1lhp++6NQdkWiqVyo6i2atjgGvwYWNOiebvUQCbjD5NvJ
2p2JzTOAjprZfuSb8N828e2ioKiey3aKibC9JeYUaITQjr++1JAPqRrDCetfkOf9
Smucn/DEagR24MT36uvAMs8DRxxFOR7WvCp/Dgi0/I6dpMAqdfGuDBuTPPPR8RSP
qKBSCNtFOnM2px0Bl29Kayeefg1NlE91WSWD1evZnryD5NQWVXg=
=QeQi
-----END PGP SIGNATURE-----

--m7rk7l4675kbe3jp--
