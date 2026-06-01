Received: (qmail 29841 invoked by uid 550); 1 Jun 2026 16:48:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23599 invoked from network); 1 Jun 2026 16:29:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1780331352; x=1780590552;
	bh=8W7n3FwzZlMFKfqTFiLvt+FlUrgb8VYdYy30k+dBe38=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=U4i6XmWmf9kE0ms4fYVz6i/sx74tSVG9ReI0Vlhzns7XP1Cl+eWbmfcJVxfXhiV1Y
	 WhwtEnN49gDZOHPElhpmbkzP++ruV/WANYKUbslafGPV3y5nPiXwtF8h9x6TDy5aVC
	 i7/SnL/GpMfrZ1IMItsMYbCzXSjmxoMLrKFtcnC2zu0MMdIzH2lUeqN54QKmifWlyW
	 TPgJcks7Iw087fsQGVIUOrEbBrqs/y1bcgpf9sBkJ+cXb2pozIabANM3VlYoN50d6F
	 CkMhhaMQaB+S6NDlX8TJ9I/JKU04O+ipiY3rV8KumKDoztNWp+iFSQ5AXs1XRxdsnm
	 7kSaG6Ew8Ts7Q==
Date: Mon, 01 Jun 2026 16:29:07 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: manizada <manizada@pm.me>
Message-ID: <GfCJSpWx5ED3ab4e9KIBVoJg0GzV8zm_0wAvbTvgRgcINcGdSHqVH6d5thaI2VYArLvnNswmCC0-1Cm5bPmmbMDsOpvv7OnpQdg9ZWadZv4=@pm.me>
In-Reply-To: <9HfNTJZbs42VU_pG0a6KlZzHfPkU933U_AOcdeUmSFDS2WwU5oyQrKN-LXzTuFFMwnXjg34lDuWnLRCTpFL-hP1IP7NvCFzxLUDn6Xu7ETw=@pm.me>
References: <9HfNTJZbs42VU_pG0a6KlZzHfPkU933U_AOcdeUmSFDS2WwU5oyQrKN-LXzTuFFMwnXjg34lDuWnLRCTpFL-hP1IP7NvCFzxLUDn6Xu7ETw=@pm.me>
Feedback-ID: 37265593:user:proton
X-Pm-Message-ID: 82e599b316ee28471b9c0ba59a08b19c895a074f
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: CIFSwitch: Linux kernel/cifs-utils local root via forged cifs.spnego upcall

This has been assigned CVE-2026-46243, see https://lore.kernel.org/linux-cv=
e-announce/2026060140-CVE-2026-46243-3d1c@gregkh/



On Thursday, May 28th, 2026 at 12:07 AM, manizada <manizada@pm.me> wrote:

> Hi folks,
>=20
> Emailing here now that the embargo agreed upon with linux-distros@ has ex=
pired.
>=20
> Flagging a local root vulnerability spanning both CIFS in the kernel and
> cifs-utils in userspace (originally reported to kernel/cifs maintainers o=
n May 16).
> The kernel-side (only) fix has now been public for over a week and is que=
ued for stable:
>=20
> 3da1fdf4efbc ("smb: client: reject userspace cifs.spnego descriptions")
>=20
> Impact:
>   Unprivileged user -> root code exec on any system where:
>   - cifs-utils is installed (with the default cifs.spnego rule)
>   - CIFS kernel module is loadable/compiled-in (typically the case), and
>   - unprivileged user/mount namespaces are enabled.
>=20
> Some default AppArmor/SELinux profiles block this.
>=20
> Bug:
>   An unprivileged user can call request_key("cifs.spnego", ...) with a fo=
rged
>   CIFS SPNEGO description. The request-key rule starts cifs.upcall as roo=
t.
>   cifs.upcall then trusts attacker-supplied pid, uid, creduid, and
>   upcall_target fields as if they came from kernel CIFS.
>=20
>   For upcall_target=3Dapp, affected cifs-utils versions switch into the s=
upplied
>   process's namespaces and perform NSS lookup before final privilege drop.
>   A private mount namespace containing attacker-controlled /etc/nsswitch.=
conf
>   and libnss_*.so.2 is therefore sufficient for code execution in the root
>   helper.
>=20
> Affected distros:
>   This a non-exhaustive summary of some tested distros. The full table, i=
ncluding
>   the cases where stock policy blocks exploitation (but relaxing AppArmor=
/SELinux/etc.
>   enables exploitation), is in the attachment (and in an easier-to-read f=
ormat in
>   the writeup linked below).
>=20
>   Stock-default exploitable distros
>     (cifs-utils comes preinstalled in the profile + unprivileged namespac=
es permitted by default
>     + the AA/SELinux policies, if any, do not block the attack):
>=20
>     - Linux Mint Cinnamon 21.3 and 22.3
>     - CentOS Stream 9 GNOME
>     - Rocky Linux 9 Workstation
>     - Kali Linux headless 2021.4/2022.4/2023.4/2024.4/2025.4/2026.1
>     - AlmaLinux 9.7 Workstation/Azure cloud image
>     - SLES 15 SP7/SAP 15 SP7/SAP 16
>=20
>   Exploitable if cifs-utils is installed, with no other default config ch=
anges:
>     - Ubuntu 18.04/20.04/22.04 Desktop/Server
>     - Pop!_OS 22.04 Intel/24.04 Generic
>     - Ubuntu 24.04 Desktop minimal/full and Server
>     - Debian 11/12/13 netinst standard and GNOME/KDE/standard/XFCE
>     - CentOS Stream 9 Cinnamon/KDE/MATE/XFCE
>     - Rocky Linux 9 KDE/Workstation-Lite
>     - openSUSE Leap 15.6 GNOME/KDE
>     - openSUSE Tumbleweed GNOME/KDE
>     - Rocky Linux 8 GenericCloud
>     - Oracle Linux 8/9 KVM
>     - Amazon Linux 2023 KVM
>=20
> Immediate-term mitigations (aside from backporting the kernel fix):
>   - Blocking the CIFS module from loading (assuming it's not built-in)/un=
installing cifs-utils if not used
>   - Deleting/overriding the default cifs.spnego request-key rule (if Kerb=
eros cifs is not required),
>     e.g., after adjusting for your keyctl path:
>=20
>     cat >/etc/request-key.d/cifs.spnego.conf <<'EOF'
>     create cifs.spnego * * /usr/sbin/keyctl negate %k 30 %S
>     EOF
>=20
>   - Disabling unprivileged user namespaces
>=20
> The CVE # assignment is still pending.
>=20
> Full writeup:
>   https://heyitsas.im/posts/cifswitch
>=20
> PoC to validate mitigations:
>   https://github.com/manizada/CIFSwitch
>=20
> Thanks,
> -Asim Manizada
