Received: (qmail 15403 invoked by uid 550); 28 May 2026 07:07:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15364 invoked from network); 28 May 2026 07:07:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1779952036; x=1780211236;
	bh=iuooPgIVWJxiUCoLjr78w2Kvz+JtFSexXFYOnGxq3ww=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=c40y8fJ70Fptv9HYVuVc7FdTuNMer6M9rkdo1XK3kdsrAS2eysR1GlVAL1JDv6FmA
	 YaoB1+M65f9/EdaBWiAmxPOHYIiP1l0HVW44se37/29dm0VCJZnTmDmPj9seFyDAZx
	 pvhdoThcP2x74fv6DvSzgiKqXnmPJ5P7AQgTUgn2D9gJDnRj1Z3MJvKAyIJGH/My2s
	 JywbSK3OEpqt+cVcNP5/e2k9UF7ThbpwJ8oFhGEQh1BI1+GZBvYuwf/lqn1pA7DLlD
	 oQ+lY1IxdpQI2y7qYRck+J4gqd//5tiuHaDbCneBXpUoL4jYbZ0UUr+0q3WdJxAY4E
	 UDWK/JP08C5SQ==
Date: Thu, 28 May 2026 07:07:11 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: manizada <manizada@pm.me>
Message-ID: <9HfNTJZbs42VU_pG0a6KlZzHfPkU933U_AOcdeUmSFDS2WwU5oyQrKN-LXzTuFFMwnXjg34lDuWnLRCTpFL-hP1IP7NvCFzxLUDn6Xu7ETw=@pm.me>
Feedback-ID: 37265593:user:proton
X-Pm-Message-ID: 2ae0e04f84ad19b1218b07996f9077de4178552a
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1=_oEIOM7VORkhIRkUgNtWj1kU5GyVCGyslY2R2ifVyo"
Subject: [oss-security] CIFSwitch: Linux kernel/cifs-utils local root via forged cifs.spnego upcall

--b1=_oEIOM7VORkhIRkUgNtWj1kU5GyVCGyslY2R2ifVyo
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi folks,

Emailing here now that the embargo agreed upon with linux-distros@ has expi=
red.

Flagging a local root vulnerability spanning both CIFS in the kernel and=20
cifs-utils in userspace (originally reported to kernel/cifs maintainers on =
May 16).
The kernel-side (only) fix has now been public for over a week and is queue=
d for stable:

3da1fdf4efbc ("smb: client: reject userspace cifs.spnego descriptions")

Impact:
  Unprivileged user -> root code exec on any system where:
  - cifs-utils is installed (with the default cifs.spnego rule)
  - CIFS kernel module is loadable/compiled-in (typically the case), and
  - unprivileged user/mount namespaces are enabled.

Some default AppArmor/SELinux profiles block this.

Bug:
  An unprivileged user can call request_key("cifs.spnego", ...) with a forg=
ed
  CIFS SPNEGO description. The request-key rule starts cifs.upcall as root.
  cifs.upcall then trusts attacker-supplied pid, uid, creduid, and
  upcall_target fields as if they came from kernel CIFS.

  For upcall_target=3Dapp, affected cifs-utils versions switch into the sup=
plied
  process's namespaces and perform NSS lookup before final privilege drop.
  A private mount namespace containing attacker-controlled /etc/nsswitch.co=
nf
  and libnss_*.so.2 is therefore sufficient for code execution in the root
  helper.

Affected distros:
  This a non-exhaustive summary of some tested distros. The full table, inc=
luding=20
  the cases where stock policy blocks exploitation (but relaxing AppArmor/S=
ELinux/etc.
  enables exploitation), is in the attachment (and in an easier-to-read for=
mat in
  the writeup linked below).

  Stock-default exploitable distros
    (cifs-utils comes preinstalled in the profile + unprivileged namespaces=
 permitted by default
    + the AA/SELinux policies, if any, do not block the attack):

    - Linux Mint Cinnamon 21.3 and 22.3
    - CentOS Stream 9 GNOME
    - Rocky Linux 9 Workstation
    - Kali Linux headless 2021.4/2022.4/2023.4/2024.4/2025.4/2026.1
    - AlmaLinux 9.7 Workstation/Azure cloud image
    - SLES 15 SP7/SAP 15 SP7/SAP 16

  Exploitable if cifs-utils is installed, with no other default config chan=
ges:
    - Ubuntu 18.04/20.04/22.04 Desktop/Server
    - Pop!_OS 22.04 Intel/24.04 Generic
    - Ubuntu 24.04 Desktop minimal/full and Server
    - Debian 11/12/13 netinst standard and GNOME/KDE/standard/XFCE
    - CentOS Stream 9 Cinnamon/KDE/MATE/XFCE
    - Rocky Linux 9 KDE/Workstation-Lite
    - openSUSE Leap 15.6 GNOME/KDE
    - openSUSE Tumbleweed GNOME/KDE
    - Rocky Linux 8 GenericCloud
    - Oracle Linux 8/9 KVM
    - Amazon Linux 2023 KVM

Immediate-term mitigations (aside from backporting the kernel fix):
  - Blocking the CIFS module from loading (assuming it's not built-in)/unin=
stalling cifs-utils if not used
  - Deleting/overriding the default cifs.spnego request-key rule (if Kerber=
os cifs is not required),
    e.g., after adjusting for your keyctl path:

    cat >/etc/request-key.d/cifs.spnego.conf <<'EOF'
    create cifs.spnego * * /usr/sbin/keyctl negate %k 30 %S
    EOF

  - Disabling unprivileged user namespaces

The CVE # assignment is still pending.

Full writeup:
  https://heyitsas.im/posts/cifswitch

PoC to validate mitigations:
  https://github.com/manizada/CIFSwitch=20

Thanks,
-Asim Manizada=

--b1=_oEIOM7VORkhIRkUgNtWj1kU5GyVCGyslY2R2ifVyo
Content-Type: text/plain; name=cifswitch-distro-impact-table.txt
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=cifswitch-distro-impact-table.txt

QSkgU3RvY2stZXhwbG9pdGFibGUgKGNpZnMtdXRpbHMgYWxyZWFkeSBwcmVzZW50OyBBQS9TRUxp
bnV4L2V0Yy4gZG8gbm90IHN0b3AgdGhlIGF0dGFjaykKRGlzdHJvL3ZlcnNpb24vaW1hZ2UgICAg
Y2lmcy11dGlscyBpbnN0YWxsZWQgYnkgZGVmYXVsdD8gICAgICAgIERlZmF1bHQtcG9saWN5IFBv
QyByZXN1bHQgKGNpZnMtdXRpbHMgaW5zdGFsbGVkKSAgICAgICAgTm9uLWRlZmF1bHQgUG9DIHJl
c3VsdApMaW51eCBNaW50IDIxLjMvMjIuMyBDaW5uYW1vbiAgIHllcyAgICAgRXhwbG9pdGFibGUg
d2l0aCBBQSBhY3RpdmUsIGRpcmVjdCB1bnNoYXJlICAgICAgU2FtZQpDZW50T1MgU3RyZWFtIDkg
R05PTUUgICB5ZXMgICAgIEV4cGxvaXRhYmxlIHdpdGggU0VMaW51eCBlbmZvcmNpbmcgICAgICBT
YW1lClJvY2t5IExpbnV4IDkgV29ya3N0YXRpb24gICAgICAgeWVzICAgICBFeHBsb2l0YWJsZSB3
aXRoIFNFTGludXggZW5mb3JjaW5nICAgICAgU2FtZQpLYWxpIExpbnV4IDIwMjEuNC8yMDIyLjQv
MjAyMy40LzIwMjQuNC8yMDI1LjQvMjAyNi4xIGhlYWRsZXNzIGluc3RhbGxlciB5ZXMgICAgIEV4
cGxvaXRhYmxlIHdpdGggQUEgYWN0aXZlLCBkaXJlY3QgdW5zaGFyZSAgICAgIFNhbWUKQWxtYUxp
bnV4IDkuNyBXb3Jrc3RhdGlvbi9BenVyZSBjbG91ZCBpbWFnZSByZWNpcGUgICAgICB5ZXMgICAg
IEV4cGxvaXRhYmxlIHdpdGggU0VMaW51eCBlbmZvcmNpbmcgICAgICBTYW1lClNMRVMgMTUgU1A3
L1NBUCAxNSBTUDcgIHllcyAgICAgRXhwbG9pdGFibGUgd2l0aCBBQSBhY3RpdmUsIGRpcmVjdCB1
bnNoYXJlICAgICAgU2FtZQpTTEVTIFNBUCAxNiAgICAgeWVzICAgICBFeHBsb2l0YWJsZSBTRUxp
bnV4IHBlcm1pc3NpdmUgIFNhbWUKCkIpIFN0b2NrLXBvbGljeSBleHBsb2l0YWJsZSBpZiBjaWZz
LXV0aWxzIGlzIGluc3RhbGxlZApEaXN0cm8vdmVyc2lvbi9pbWFnZSAgICBjaWZzLXV0aWxzIGlu
c3RhbGxlZCBieSBkZWZhdWx0PyAgICAgICAgRGVmYXVsdC1wb2xpY3kgUG9DIHJlc3VsdCAoY2lm
cy11dGlscyBpbnN0YWxsZWQpICAgICAgICBOb24tZGVmYXVsdCBQb0MgcmVzdWx0ClVidW50dSAx
OC4wNC8yMC4wNC8yMi4wNCBEZXNrdG9wL1NlcnZlciBubyAgICAgIEV4cGxvaXRhYmxlIHdpdGgg
QUEgYWN0aXZlLCBkaXJlY3QgdW5zaGFyZSAgICAgIFNhbWUKUG9wIV9PUyAyMi4wNCBJbnRlbC8y
NC4wNCBHZW5lcmljICAgICAgIG5vICAgICAgRXhwbG9pdGFibGUgd2l0aCBBQSBhY3RpdmUsIGRp
cmVjdCB1bnNoYXJlICAgICAgU2FtZQpVYnVudHUgMjQuMDQgRGVza3RvcCBtaW5pbWFsL2Z1bGwg
YW5kIFNlcnZlciAgICBubyAgICAgIERpcmVjdCB1bnNoYXJlIGlzIGJsb2NrZWQgYnkgQXBwQXJt
b3IgdXNlcm5zIHBvbGljeTsgZXhwbG9pdGFibGUgdGhyb3VnaCBhYS1leGVjIC1wIHRyaW5pdHkg
ICAgIERpcmVjdCB1bnNoYXJlIHdvcmtzIGFmdGVyIEFwcEFybW9yIHVzZXJucyBzeXNjdGxzIGFy
ZSByZWxheGVkCkRlYmlhbiAxMS8xMi8xMyBuZXRpbnN0IHN0YW5kYXJkIGFuZCBHTk9NRS9LREUv
c3RhbmRhcmQvWEZDRSAgICBubyAgICAgIEV4cGxvaXRhYmxlIHdpdGggQUEgYWN0aXZlLCBkaXJl
Y3QgdW5zaGFyZSAgICAgIFNhbWUKQ2VudE9TIFN0cmVhbSA5IENpbm5hbW9uL0tERS9NQVRFL1hG
Q0UgIG5vICAgICAgRXhwbG9pdGFibGUgd2l0aCBTRUxpbnV4IGVuZm9yY2luZyAgICAgIFNhbWUK
Um9ja3kgTGludXggOSBLREUvV29ya3N0YXRpb24tTGl0ZSAgICAgIG5vICAgICAgRXhwbG9pdGFi
bGUgd2l0aCBTRUxpbnV4IGVuZm9yY2luZyAgICAgIFNhbWUKb3BlblNVU0UgTGVhcCAxNS42IEdO
T01FL0tERSAgICBubyAgICAgIEV4cGxvaXRhYmxlIHdpdGggQUEgYWN0aXZlLCBkaXJlY3QgdW5z
aGFyZSAgICAgIFNhbWUKUm9ja3kgTGludXggOCBHZW5lcmljQ2xvdWQgICAgICBubyAgICAgIEV4
cGxvaXRhYmxlIHdpdGggU0VMaW51eCBlbmZvcmNpbmcgICAgICBTYW1lCk9yYWNsZSBMaW51eCA4
LzkgS1ZNICAgIG5vICAgICAgRXhwbG9pdGFibGUgd2l0aCBTRUxpbnV4IGVuZm9yY2luZyAgICAg
IFNhbWUKQW1hem9uIExpbnV4IDIwMjMgS1ZNICAgbm8gICAgICBFeHBsb2l0YWJsZSB3aXRoIFNF
TGludXggcGVybWlzc2l2ZSAgICAgU2FtZQoKQykgUmVzdDogYmxvY2tlZCBieSBzdG9jayBwb2xp
Y3kKRGlzdHJvL3ZlcnNpb24vaW1hZ2UgICAgY2lmcy11dGlscyBpbnN0YWxsZWQgYnkgZGVmYXVs
dD8gICAgICAgIERlZmF1bHQtcG9saWN5IFBvQyByZXN1bHQgKGNpZnMtdXRpbHMgaW5zdGFsbGVk
KSAgICAgICAgTm9uLWRlZmF1bHQgUG9DIHJlc3VsdApVYnVudHUgMjYuMDQgRGVza3RvcCBtaW5p
bWFsL2Z1bGwgYW5kIFNlcnZlciAgICBubyAgICAgIFBvQyBibG9ja2VkIGJ5IEFwcEFybW9yIHVz
ZXJucyBwb2xpY3kgICBFeHBsb2l0YWJsZSBhZnRlciBBcHBBcm1vciB1c2VybnMgc3lzY3RscyBh
cmUgcmVsYXhlZApGZWRvcmEgNDAvNDEvNDIvNDMvNDQgV29ya3N0YXRpb24vU2VydmVyICAgICAg
ICB5ZXMgICAgIFBvQyBibG9ja2VkIGJ5IFNFTGludXggZW5mb3JjaW5nICAgICAgICBFeHBsb2l0
YWJsZSBhZnRlciBzZXRlbmZvcmNlIDAKQ2VudE9TIFN0cmVhbSAxMCBHTk9NRSAgeWVzICAgICBQ
b0MgYmxvY2tlZCBieSBTRUxpbnV4IGVuZm9yY2luZyAgICAgICAgRXhwbG9pdGFibGUgYWZ0ZXIg
c2V0ZW5mb3JjZSAwCkNlbnRPUyBTdHJlYW0gMTAgS0RFICAgIG5vICAgICAgUG9DIGJsb2NrZWQg
YnkgU0VMaW51eCBlbmZvcmNpbmcgICAgICAgIEV4cGxvaXRhYmxlIGFmdGVyIHNldGVuZm9yY2Ug
MApSb2NreSBMaW51eCAxMCBXb3Jrc3RhdGlvbiAgICAgIHllcyAgICAgUG9DIGJsb2NrZWQgYnkg
U0VMaW51eCBlbmZvcmNpbmcgICAgICAgIEV4cGxvaXRhYmxlIGFmdGVyIHNldGVuZm9yY2UgMApS
b2NreSBMaW51eCAxMCBLREUvV29ya3N0YXRpb24tTGl0ZSAgICAgbm8gICAgICBQb0MgYmxvY2tl
ZCBieSBTRUxpbnV4IGVuZm9yY2luZyAgICAgICAgRXhwbG9pdGFibGUgYWZ0ZXIgc2V0ZW5mb3Jj
ZSAwCkFsbWFMaW51eCAxMC4xIFdvcmtzdGF0aW9uL0F6dXJlIGNsb3VkIGltYWdlIHJlY2lwZSAg
ICAgeWVzICAgICBQb0MgYmxvY2tlZCBieSBTRUxpbnV4IGVuZm9yY2luZyAgICAgICAgRXhwbG9p
dGFibGUgYWZ0ZXIgc2V0ZW5mb3JjZSAwCk9yYWNsZSBMaW51eCAxMCBLVk0gICAgIG5vICAgICAg
UG9DIGJsb2NrZWQgYnkgU0VMaW51eCBlbmZvcmNpbmcgICAgICAgIEV4cGxvaXRhYmxlIGFmdGVy
IHNldGVuZm9yY2UgMApvcGVuU1VTRSBUdW1ibGV3ZWVkIEdOT01FL0tERSAgIHllcyAgICAgUG9D
IGJsb2NrZWQgYnkgU0VMaW51eCBlbmZvcmNpbmcgICAgICAgIEV4cGxvaXRhYmxlIGFmdGVyIHNl
dGVuZm9yY2UgMApvcGVuU1VTRSBMZWFwIDE2LjAgT0VNIEdOT01FL0tERSAgICAgICAgeWVzICAg
ICBQb0MgYmxvY2tlZCBieSBTRUxpbnV4IGVuZm9yY2luZyAgICAgICAgRXhwbG9pdGFibGUgYWZ0
ZXIgc2V0ZW5mb3JjZSAwCm9wZW5TVVNFIExlYXAgMTYuMCBNaW5pbWFsLVZNICAgbm8gICAgICBQ
b0MgYmxvY2tlZCBieSBTRUxpbnV4IGVuZm9yY2luZyAgICAgICAgRXhwbG9pdGFibGUgYWZ0ZXIg
c2V0ZW5mb3JjZSAwClNMRVMgMTYgeWVzICAgICBQb0MgYmxvY2tlZCBieSBTRUxpbnV4IGVuZm9y
Y2luZyAgICAgICAgRXhwbG9pdGFibGUgYWZ0ZXIgc2V0ZW5mb3JjZSAwCgpEKSBVbmFmZmVjdGVk
CkRpc3Ryby92ZXJzaW9uL2ltYWdlICAgIGNpZnMtdXRpbHMgaW5zdGFsbGVkIGJ5IGRlZmF1bHQ/
ICAgICAgICBEZWZhdWx0LXBvbGljeSBQb0MgcmVzdWx0IChjaWZzLXV0aWxzIGluc3RhbGxlZCkg
ICAgICAgIE5vbi1kZWZhdWx0IFBvQyByZXN1bHQKQW1hem9uIExpbnV4IDIgS1ZNICAgICAgbm8g
ICAgICBVbmFmZmVjdGVkIGJ5IHRoaXMgUG9DOiBjaWZzLXV0aWxzIDYuMiBsYWNrcyB0aGUgbmFt
ZXNwYWNlLXN3aXRjaCBzaW5rICBOL0EKS2FsaSBMaW51eCAyMDE5LjQvMjAyMC40ICB5ZXMgICAg
IFVuYWZmZWN0ZWQgYnkgdGhpcyBQb0MgYWZ0ZXIgdXNlcm5zIHJlbGF4YXRpb246IGNpZnMtdXRp
bHMgNi45IGxhY2tzIHRoZSBuYW1lc3BhY2Utc3dpdGNoIHNpbmsgIE4vQQ==

--b1=_oEIOM7VORkhIRkUgNtWj1kU5GyVCGyslY2R2ifVyo--

