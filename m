X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8843" "Tuesday" "14" "April" "2015" "09:10:04" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<552D3BDC.10808@oracle.com>" "213" "Re: [oss-security] Re: CVE Request: libX11: buffer overflow in MakeBigReq macro" nil nil nil "4" "2015041416:10:04" "[oss-security] Re: CVE Request: libX11: buffer overflow in MakeBigReq macro" (number mark "        alan.coopers Apr 14  213/8843  " thread-indent "\"Re: [oss-security] Re: CVE Request: libX11: buffer overflow in MakeBigReq macro\"\n") "<1428591608.22575.194.camel@opteya.com>" ("<20150409070930.2B22A1BE1C2@smtpvbsrv1.mitre.org>" "<55265E1D.4050404@redhat.com>" "<55266634.3010405@canonical.com>" "<1428591608.22575.194.camel@opteya.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19980 invoked by uid 550); 14 Apr 2015 16:10:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19962 invoked from network); 14 Apr 2015 16:10:21 -0000
Message-ID: <552D3BDC.10808@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:17.0) Gecko/20150125 Thunderbird/17.0.11
MIME-Version: 1.0
References: <20150409070930.2B22A1BE1C2@smtpvbsrv1.mitre.org>  <55265E1D.4050404@redhat.com> <55266634.3010405@canonical.com> <1428591608.22575.194.camel@opteya.com>
In-Reply-To: <1428591608.22575.194.camel@opteya.com>
Content-Type: multipart/mixed;
 boundary="------------040405000008060201040305"
X-Source-IP: userv0022.oracle.com [156.151.31.74]
CC: Yann Droneaud <ydroneaud@opteya.com>, Florian Weimer <fweimer@redhat.com>,
        Marc Deslauriers <marc.deslauriers@canonical.com>,
        cve-assign@mitre.org
Date: Tue, 14 Apr 2015 09:10:04 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: libX11: buffer overflow in MakeBigReq
 macro
To: oss-security@lists.openwall.com

--------------040405000008060201040305
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

X.Org issued the attached advisory today, just in case any distro builders
hadn't rebuilt yet and hadn't noticed the discussion here.

As usual, it's also posted to our advisories page at:
	http://www.x.org/wiki/Development/Security/

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org


--------------040405000008060201040305
Content-Type: message/rfc822;
 name="Attached Message"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message"

Received: from userv0022.oracle.com (/156.151.31.74)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 14 Apr 2015 08:57:32 -0700
Received: from aserp1030.oracle.com (aserp1030.oracle.com [141.146.126.68])
	by userv0022.oracle.com (8.13.8/8.13.8) with ESMTP id t3EFvVWF009608
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Tue, 14 Apr 2015 15:57:31 GMT
Received: from userp2050.oracle.com (userp2050.oracle.com [156.151.31.91])
	by aserp1030.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id t3EFvU7C018481
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 14 Apr 2015 15:57:31 GMT
Received: from pps.filterd (userp2050.oracle.com [127.0.0.1])
	by userp2050.oracle.com (8.14.7/8.14.7) with SMTP id t3EFtFsj030524;
	Tue, 14 Apr 2015 15:57:30 GMT
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by userp2050.oracle.com with ESMTP id 1ts4bg1b53-1;
	Tue, 14 Apr 2015 15:57:30 +0000
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062146E701;
	Tue, 14 Apr 2015 08:57:29 -0700 (PDT)
X-Original-To: xorg-devel@lists.x.org
Delivered-To: xorg-devel@lists.x.org
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7A8446E701;
 Tue, 14 Apr 2015 08:57:28 -0700 (PDT)
Received: from userv0021.oracle.com (userv0021.oracle.com [156.151.31.71])
 by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id
 t3EFvQlo024709
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
 Tue, 14 Apr 2015 15:57:26 GMT
Received: from jurassic.us.oracle.com (jurassic.us.oracle.com [10.134.8.79])
 by userv0021.oracle.com (8.13.8/8.13.8) with ESMTP id t3EFvPMY014644
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
 Tue, 14 Apr 2015 15:57:26 GMT
Received: from also.us.oracle.com (also.us.oracle.com [10.132.136.78])
 by jurassic.us.oracle.com (8.15.1+Sun/8.15.1) with ESMTPS id t3EFvJ2F515017
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Tue, 14 Apr 2015 08:57:20 -0700 (PDT)
Date: Tue, 14 Apr 2015 08:57:18 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: xorg-announce@lists.x.org
Subject: [ANNOUNCE] X.Org Security Advisory: Buffer overflow in MakeBigReq
 macro
Message-ID: <20150414155716.GA3755@also.us.oracle.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: xorg@lists.x.org, xorg-devel@lists.x.org
X-BeenThere: xorg-devel@lists.x.org
X-Mailman-Version: 2.1.18
Precedence: list
List-Id: "X.Org development list" <xorg-devel.lists.x.org>
List-Unsubscribe: <http://lists.x.org/mailman/options/xorg-devel>,
 <mailto:xorg-devel-request@lists.x.org?subject=unsubscribe>
List-Archive: <http://lists.x.org/archives/xorg-devel>
List-Post: <mailto:xorg-devel@lists.x.org>
List-Help: <mailto:xorg-devel-request@lists.x.org?subject=help>
List-Subscribe: <http://lists.x.org/mailman/listinfo/xorg-devel>,
 <mailto:xorg-devel-request@lists.x.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1257201945=="
Errors-To: xorg-devel-bounces@lists.x.org
Sender: "xorg-devel" <xorg-devel-bounces@lists.x.org>
X-Source-IP: 131.252.210.177
X-ServerName: gabe.freedesktop.org
X-Proofpoint-Virus-Version: vendor=nai engine=5700 definitions=7770 signatures=670572
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 suspectscore=1 phishscore=0
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=7.0.1-1402240000 definitions=main-1504140137
X-Spam: Clean


--===============1257201945==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bWWgv9679ymWMP+4"
Content-Disposition: inline


--bWWgv9679ymWMP+4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

X.Org Security Advisory:  April 14, 2015
Buffer overflow in MakeBigReq macro in libX11 prior to 1.6 [CVE-2013-7439]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Description:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

It's been brought to X.Org's attention that this commit:

http://cgit.freedesktop.org/xorg/lib/libX11/commit/?id=3D39547d600a13713e15=
429f49768e54c3173c828d

which was included in libX11 1.5.99.901 (1.6 RC1) and later releases fixed=
=20
an issue which may be exploitable when X clients are rendering untrusted=20
content, such as in web browsers.

Mitre has thus issued CVE-2013-7439 for tracking this vulnerability.
Further discussion is available in the oss-security thread starting at=20
http://seclists.org/oss-sec/2015/q2/73 .

Note that as this affects a macro in a header file, all software using this
macro will need to be recompiled for the fix to take effect.  Since the
Xlibint.h header provides access to the internals of libX11, it should
not be directly accessed by most clients, but nearly all of the Xlib-based
extension libraries are affected, as are some third-party client libraries
and programs who have ill-advisedly relied on libX11 internals.

X.Org software known to use these macros includes:

        libXext
        libXfixes
        libXi
        libXp
        libXrandr
        libXrender
        libXv
        libXxf86misc
        xf86-video-vmware

Some uses of the macros in other software may be found at:
        http://codesearch.debian.net/results/SetReqLen
        http://codesearch.debian.net/results/MakeBigReq
but of course, only a search of your own code base will be exhaustive.

Affected Versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The off-by-one-word error in the amount of memory to copy was introduced
in the original integration of the BigRequests extension for X11R6.0:
http://cgit.freedesktop.org/~alanc/xc-historical/commit/?id=3D57ae039acec35=
ee7df4bc3f3c02abd957780b026
thus X.Org believes all versions of X11R6.x are affected, as are all versio=
ns
of the standalone libX11 prior to the libX11 1.6.0 release in June 2013.

Fixes
=3D=3D=3D=3D=3D

As noted above, the fix is already available in this libX11 git commit:
        39547d600a13713e15429f49768e54c3173c828d
which is also included in libX11 1.6.0 and later module releases from X.Org,
however, for the fix to be effective, all software which references the
MakeBigReq() or SetReqLen() macros from Xlibint.h must be recompiled with
the new header.

--
        -Alan Coopersmith-              alan.coopersmith@oracle.com
          X.Org Security Response Team - xorg-security@lists.x.org

--bWWgv9679ymWMP+4
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (SunOS)

iQIcBAEBCgAGBQJVLTjbAAoJEM/fFIgoxkKnfuYP/2PxkzcpWhlq+2NLAqnpgtIf
HCbGQbqgSRNH7K1bT2aSgQOuLl5hnKqZQxirw18DBwyABlLyDsWe5dM8rny4FDnu
06sEP9EgVb61JdbiAx81usEPUX5FnG+kQeXxtLpxS58y816k6H2hhBJXfWGWPWM6
VnHy8EVsADXYc6Fd9WlQbm201CQqLrX3MJU+fr8i2FnrxoXQUZTHuks77B6oSXjp
kHhR8NvegKWaNmELtO6r8n8SSulLYoqr0eOH20TMJAu+e9ZYjzk6KbbeHzcdasrY
8Iou8LCQpcGor6TFYL0NgL1Biw7AmKOKMTEVp7FowtLfj2t3rA1zTqgm0PAJKJKd
ELZn+ui+T1H9EVgbyK1Zg5ONYGlmQCulzYnphC/Vp/YAYHcqMirhBVImW6qbmYdr
ZKrB5vmeNu3R45vPO9Xq/XGeyaVwKUUDs29M/5GObcbTt0xuDWS4eJcyoicbcmzr
i9VvzUMwQdz/LB66GDDSzzQ0/Qem6mcGMRwuxk6Ifa8j9dLI9L4uJ3VuCgK4A1Io
sMaI8L5N+3f/ljul422fejtl6QgadIFNP5yG2FRg7uKhuTYKIl/qvZpx6FyWSzyj
FHlKVy3wrQG10tbJh+GI5NnbEHpl+zuh0zzpF4x2bZhKZmnFB9lPGE8udedOAj/j
SuqVrER1y3Sicsz7FUxu
=3b7x
-----END PGP SIGNATURE-----

--bWWgv9679ymWMP+4--

--===============1257201945==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KeG9yZy1kZXZlbEBsaXN0cy54Lm9yZzogWC5PcmcgZGV2ZWxvcG1lbnQK
QXJjaGl2ZXM6IGh0dHA6Ly9saXN0cy54Lm9yZy9hcmNoaXZlcy94b3JnLWRl
dmVsCkluZm86IGh0dHA6Ly9saXN0cy54Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3hvcmctZGV2ZWw=

--===============1257201945==--

--------------040405000008060201040305--
