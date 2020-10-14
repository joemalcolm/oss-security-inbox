X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2060" "Wednesday" "14" "October" "2020" "13:14:31" "+0000" "Jordan Glover" "Golden_Miller83@protonmail.ch" "<oxqCR3d1ydEMwuGW3PBgnpgk9XUJjoqNeS5JCk7dcaEaQGJyq7TxVPJk2fWAgk9Bjd4MfdLDr_CHRPBTeJv9kRZPOV4X2b0HAALr17Vy5Wo=@protonmail.ch>" "61" "Re: [oss-security] CVE-2020-16120 - incorrect unprivileged overlayfs permission checking" nil nil nil "10" "2020101413:14:31" "[oss-security] CVE-2020-16120 - incorrect unprivileged overlayfs permission checking" (number mark "U       Golden_Mille Oct 14   61/2060  " thread-indent "\"Re: [oss-security] CVE-2020-16120 - incorrect unprivileged overlayfs permission checking\"\n") "<20201013171034.GA68820@nxnw.org>" ("<20201013171034.GA68820@nxnw.org>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-16120 - incorrect unprivileged overlayfs permission checking" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14092 invoked by uid 550); 14 Oct 2020 16:51:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19937 invoked from network); 14 Oct 2020 13:14:47 -0000
Date: Wed, 14 Oct 2020 13:14:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail; t=1602681275;
	bh=+n7gYlTr0AuI62seDpchKmmNxG2HSr8geJpk7eqVljs=;
	h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
	b=tFciNR5cFSI343uDJ0V58obJeK9q2Zbx/cCyYXZMKss4CmKwPkf7//auT6PosF1XK
	 vEtjC1WS+vMUvVGtJ4sthPdhov0pkyn88JieZbKqmnwk1t0RSPrZavYAzci9R+Jaim
	 k33/zl7m54KPlz34ZUscAunvIjx6ujqkPoPna/8g=
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: Jordan Glover <Golden_Miller83@protonmail.ch>
Cc: "sbeattie@ubuntu.com" <sbeattie@ubuntu.com>
Message-ID: <oxqCR3d1ydEMwuGW3PBgnpgk9XUJjoqNeS5JCk7dcaEaQGJyq7TxVPJk2fWAgk9Bjd4MfdLDr_CHRPBTeJv9kRZPOV4X2b0HAALr17Vy5Wo=@protonmail.ch>
In-Reply-To: <20201013171034.GA68820@nxnw.org>
References: <20201013171034.GA68820@nxnw.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2020-16120 - incorrect unprivileged overlayfs permission checking

On Tuesday, October 13, 2020 5:10 PM, Steve Beattie <steve.beattie@canonica=
l.com> wrote:

> Hello,
>
> CVE-2020-16120 - incorrect unprivileged overlayfs permission checking
>
> Giuseppe Scrivano discovered that overlayfs did not properly perform
> permission checking when copying up files in an overlayfs, and can be
> exploited from within a user namespace, if, for example, unprivileged
> user namespaces are allowed.
>
> An attacker can abuse this to get read access to files on the system
> that they would not normally be permitted to access.
>
> This likely only has an impact on Ubuntu kernels, where unprivileged
> user namespaces are enabled by default.

AFAIK unpriv user ns are enabled by default on vast majority of distros now=
adays with debian (rhel?) being an exception (although this is going to cha=
nge at some point[1]). I think what makes ubuntu different is unpriv overla=
yfs which doesn't exist upstream thus in most other distros.

[1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D898446

>
> The following upstream commits address the issue:
>
> 48bd024b8a40d73ad6b086de2615738da0c7004f ("ovl: switch to mounter creds i=
n readdir")
> 56230d956739b9cb1cbde439d76227d77979a04d ("ovl: verify permissions in ovl=
_path_open()")
> 05acefb4872dae89e772729efb194af754c877e8 ("ovl: check permission to open =
real file")
>
> The following commits also may be desired or necessary:
>
> 130fdbc3d1f9966dd4230709c30f3768bccd3065 ("ovl: pass correct flags for op=
ening real directory")
> 292f902a40c11f043a5ca1305a114da0e523eaa3 ("ovl: call secutiry hook in ovl=
_real_ioctl()")
>
> Mitigation on systems where unprivileged user namespaces are enabled
> but not needed is to set the kernel.unprivileged_userns_clone sysctl
> to 0. e.g.:
>
> $ sudo sysctl kernel.unprivileged_userns_clone=3D0
>
> and across reboots by adding a file in /etc/sysctl.d/ that contains:
>
> kernel.unprivileged_userns_clone=3D0

This will only work with out-of-tree patch included in distro kernel.

>
> Thanks.
>
>
>
> Steve Beattie
> sbeattie@ubuntu.com
