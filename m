X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3368" "Thursday" "6" "September" "2018" "14:52:52" "+0200" "Marcus Meissner" "meissner@suse.de" "<20180906125252.tfsfzfp2af3ztl3j@suse.de>" "93" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "9" "2018090612:52:52" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        meissner@sus Sep  6   93/3368  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>" ("<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>" "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>" "<alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>" "<5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>" "<alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>" "<CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>" "<20180828092517.eteuy4vzcpdpr62p@suse.de>" "<CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3757 invoked by uid 550); 6 Sep 2018 12:53:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3736 invoked from network); 6 Sep 2018 12:53:04 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180906125252.tfsfzfp2af3ztl3j@suse.de>
References: <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>
 <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>
 <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>
 <5b7dd771.1c69fb81.a6d8.6521@mx.google.com>
 <alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>
 <5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>
 <alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>
 <CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>
 <20180828092517.eteuy4vzcpdpr62p@suse.de>
 <CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Date: Thu, 6 Sep 2018 14:52:52 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com, taviso@google.com

Hi,

Following CVEs have been assigned by Mitre:

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ea735ba37dc0fd5f5622d031830b9a559dec1cc9
> # 699671
> handling /undefined results in SEGV

	CVE-2018-16510

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=0edd3d6c63
> # 699659 missing type check in ztype

	CVE-2018-16511

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=78911a01b6 #
> 699654 A /invalidaccess checks stop working after a failed restore
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=5516c614dc33 #
> 699654 B /invalidaccess checks stop working after a failed restore
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=79cccf641486 #
> 699654 C /invalidaccess checks stop working after a failed restore
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=520bb0ea7519aa3e79db78aaf0589dae02103764
> 699654 D /invalidaccess checks stop working after a failed restore

	CVE-2018-16509

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=b326a716
> # 699655 - missing type checking in setcolor

	CVE-2018-16513

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=c3476dde
> # 699656 - LockDistillerParams boolean missing type checks

	CVE-2018-15910

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a054156d42
> # 699658 - Bypassing PermitFileReading by handling undefinedfilename errors

	CVE-2018-16539

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=0b6cd1918e1ec4ffd087400a754a845180a4522b
> # 699660 - shading_param incomplete type checking
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=e01e77a36cbb2e0277bc3a63852244bec41be0f6
> # 699660 - shading_param incomplete type checking

	CVE-2018-15909

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=c432131c3f
> # 699661 - pdf14 garbage collection memory corruption

	CVE-2018-16540

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=971472c83a345a16dac9f90f91258bb22dd77f22
> # 699663 - .setdistillerkeys memory corruption

	CVE Requested (this morning, will be assigned in some hours I expect)

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=241d911127
> # 699664 - corrupt device object after error in job

	CVE-2018-16541

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=0d3901189f
> # 699657 - .tempfile SAFER restrictions seem to be broken

	CVE-2018-15908

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=8e9ce5016db968b40e4ec255a3005f2786cce45f
> # 699665 - memory corruption in aesdecode

	CVE-2018-15911

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=b575e1ec42
> # 699668 - .definemodifiedfont memory corruption if /typecheck is handled

	CVE-2018-16542

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=5b5536fa88a9e885032bc0df3852c3439399a5c0
> # 699670 gssetresolution memory corruption

	CVE-2018-16543

> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ea735ba37dc0fd5f5622d031830b9a559dec1cc9
> # 699671 handling /undefined results in SEGV
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ea735ba37dc0fd5f5622d031830b9a559dec1cc9
> # 699676 PDF interpreter can leave dangerous operators available

	As its the same commit, I assume it is also covered by CVE-2018-16510 from bug 699671?

I have not yet requested the current issue(s) you spotted.

Ciao, Marcus
