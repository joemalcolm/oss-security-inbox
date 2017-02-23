X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2491" "Thursday" "23" "February" "2017" "09:43:53" "+0000" "Roger Pau =?iso-8859-1?Q?Monn=E9?=" "roger.pau@citrix.com" "<20170223094353.hrdgcxjsqdoy3v5l@dhcp-3-221.uk.xensource.com>" "82" "[oss-security] Re: [Xen-devel] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe" nil nil nil "2" "2017022309:43:53" "[oss-security] Re: [Xen-devel] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe" (number mark "U       roger.pau@ci Feb 23   82/2491  " thread-indent "\"[oss-security] Re: [Xen-devel] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe\"\n") "<E1cg96x-0006uk-4m@xenbits.xenproject.org>" ("<E1cg96x-0006uk-4m@xenbits.xenproject.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13690 invoked by uid 550); 23 Feb 2017 13:05:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23856 invoked from network); 23 Feb 2017 09:44:11 -0000
X-IronPort-AV: E=Sophos;i="5.35,197,1484006400"; 
   d="scan'208";a="41287894"
Date: Thu, 23 Feb 2017 09:43:53 +0000
From: Roger Pau =?iso-8859-1?Q?Monn=E9?= <roger.pau@citrix.com>
To: Xen.org security team <security@xen.org>
CC: <xen-announce@lists.xen.org>, <xen-devel@lists.xen.org>,
	<xen-users@lists.xen.org>, <oss-security@lists.openwall.com>
Message-ID: <20170223094353.hrdgcxjsqdoy3v5l@dhcp-3-221.uk.xensource.com>
References: <E1cg96x-0006uk-4m@xenbits.xenproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <E1cg96x-0006uk-4m@xenbits.xenproject.org>
User-Agent: NeoMutt/20170206 (1.7.2)
X-ClientProxiedBy: AMSPEX02CAS02.citrite.net (10.69.22.113) To
 AMSPEX02CL02.citrite.net (10.69.22.126)
Subject: [oss-security] Re: [Xen-devel] Xen Security Advisory 209 (CVE-2017-2620) -
 cirrus_bitblt_cputovideo does not check if memory region is safe

On Tue, Feb 21, 2017 at 12:00:03PM +0000, Xen.org security team wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
>             Xen Security Advisory CVE-2017-2620 / XSA-209
>                               version 3
> 
>    cirrus_bitblt_cputovideo does not check if memory region is safe
> 
> UPDATES IN VERSION 3
> ====================
> 
> Public release.
> 
> ISSUE DESCRIPTION
> =================
> 
> In CIRRUS_BLTMODE_MEMSYSSRC mode the bitblit copy routine
> cirrus_bitblt_cputovideo fails to check wethehr the specified memory
> region is safe.
> 
> IMPACT
> ======
> 
> A malicious guest administrator can cause an out of bounds memory
> write, very likely exploitable as a privilege escalation.
> 
> VULNERABLE SYSTEMS
> ==================
> 
> Versions of qemu shipped with all Xen versions are vulnerable.
> 
> Xen systems running on x86 with HVM guests, with the qemu process
> running in dom0 are vulnerable.
> 
> Only guests provided with the "cirrus" emulated video card can exploit
> the vulnerability.  The non-default "stdvga" emulated video card is
> not vulnerable.  (With xl the emulated video card is controlled by the
> "stdvga=" and "vga=" domain configuration options.)
> 
> ARM systems are not vulnerable.  Systems using only PV guests are not
> vulnerable.
> 
> For VMs whose qemu process is running in a stub domain, a successful
> attacker will only gain the privileges of that stubdom, which should
> be only over the guest itself.
> 
> Both upstream-based versions of qemu (device_model_version="qemu-xen")
> and `traditional' qemu (device_model_version="qemu-xen-traditional")
> are vulnerable.
> 
> MITIGATION
> ==========
> 
> Running only PV guests will avoid the issue.
> 
> Running HVM guests with the device model in a stubdomain will mitigate
> the issue.
> 
> Changing the video card emulation to stdvga (stdvga=1, vga="stdvga",
> in the xl domain configuration) will avoid the vulnerability.
> 
> CREDITS
> =======
> 
> This issue was discovered by Gerd Hoffmann of Red Hat.
> 
> RESOLUTION
> ==========
> 
> Applying the appropriate attached patch resolves this issue.
> 
> xsa209-qemuu.patch       qemu-xen, qemu upstream
> (no backport yet)        qemu-xen-traditional

It would be nice to mention that (at least on QEMU shipped with 4.7) the
following patch is also needed for the XSA-209 fix to build correctly:

52b7f43c8fa185ab856bcaacda7abc9a6fc07f84
display: cirrus: ignore source pitch value as needed in blit_is_unsafe

Roger.
