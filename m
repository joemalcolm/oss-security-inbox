X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1616" "Wednesday" "24" "October" "2018" "14:30:36" "+0000" "Jordan Glover" "Golden_Miller83@protonmail.ch" "<_lXuZCbn1AUuAYLpnbHITcY5b0mgsoqJta02ouknD8HstX2Za0vbMyKjB2nITSFXexg24EvqT_VHJPXxsUzae2-k91KKs4dB_7bN7JGV1bs=@protonmail.ch>" "41" "Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" "^Cc:" nil nil "10" "2018102414:30:36" "[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" (number mark "        Golden_Mille Oct 24   41/1616  " thread-indent "\"Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions\"\n") "<20181023133502.GA22933@openwall.com>" ("<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>" "<87zhv5znqn.fsf@oldenburg.str.redhat.com>" "<20181023133502.GA22933@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8054 invoked by uid 550); 24 Oct 2018 15:05:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18033 invoked from network); 24 Oct 2018 14:30:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=default; t=1540391439;
	bh=IpxRfRXk47eYm18dI5YlXBNY1mCoo3ycp6iHSBF37ww=;
	h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
	 Feedback-ID:From;
	b=VGiOGCJBJpWm85pAG4nGvU057PMuIi9OzWEzuHb2vXsqEX/tVmilvABSq61hIuBkw
	 wi/CSnkb+hei6aQ6HvTD/a8lgQDBUW8O/T2N2ZSG9sn75M3LcH9OoM/hMxtxtFmEl3
	 AD5C218kiXwoPX5SuOAUvDc1s1cjlriO+vWeTnsw=
Message-ID: <_lXuZCbn1AUuAYLpnbHITcY5b0mgsoqJta02ouknD8HstX2Za0vbMyKjB2nITSFXexg24EvqT_VHJPXxsUzae2-k91KKs4dB_7bN7JGV1bs=@protonmail.ch>
In-Reply-To: <20181023133502.GA22933@openwall.com>
References: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
 <87zhv5znqn.fsf@oldenburg.str.redhat.com>
 <20181023133502.GA22933@openwall.com>
Feedback-ID: QEdvdaLhFJaqnofhWA-dldGwsuoeDdDw7vz0UPs8r8sanA3bIt8zJdf4aDqYKSy4gJuZ0WvFYJtvq21y6ge_uQ==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Andrew Sandoval <ASandoval@webroot.com>, "solar@openwall.com" <solar@openwall.com>
Date: Wed, 24 Oct 2018 14:30:36 +0000
From: Jordan Glover <Golden_Miller83@protonmail.ch>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original Me=
ssage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
On Tuesday, October 23, 2018 3:35 PM, Solar Designer <solar@openwall.com> w=
rote:

>
> Here's a list of maybe-actionable items I came up with in response to
> Webroot's findings/reminder:
>
> 1.  More distros should start checking for executable stacks in program
>     binaries at package build time, and error out when this is unexpected.
>
> 2.  On Linux, we might want to have an enforcing mode (or several
>     sub-modes) in the kernel, where it'd keep the stack non-executable (a=
nd
>     possibly enforce W^X for other mappings as well), ignoring any flags =
in
>     the program binaries. I encouraged Vasiliy Kulikov to implement that
>     when he worked with us under GSoC 2011 on Linux kernel hardening task=
s.
>     Here's the relevant thread, including a kernel patch:
>
>     https://www.openwall.com/lists/kernel-hardening/2011/07/18/8
>
>     For GCC trampolines to continue working, we can implement emulation of
>     the trampoline instructions like I introduced in -ow patches for 2.2.x
>     and like it's done in PaX/grsecurity. Vasiliy's patch includes that
>     (using code from PaX).
>
>     IIRC, we never actually submitted this upstream. Maybe the current
>     kernel hardening project (KSPP) should take and complete this effort.
>

There is S.A.R.A LSM[0] proposed by Salvatore Mesoraca with the aim to upst=
ream
it to mainline kernel when needed infrastructure for it will be ready.

[0] https://sara.smeso.it/en/latest/

Jordan

