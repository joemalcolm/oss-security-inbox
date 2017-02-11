X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2141" "Saturday" "11" "February" "2017" "08:49:54" "+0000" "Roger Pau =?iso-8859-1?Q?Monn=E9?=" "roger.pau@citrix.com" "<20170211084954.xxo6puddj5b6jq6f@MacBook-Pro-de-Roger.local>" "68" "[oss-security] Re: [Xen-users] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy" nil nil nil "2" "2017021108:49:54" "[oss-security] Re: [Xen-users] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy" (number mark "U       roger.pau@ci Feb 11   68/2141  " thread-indent "\"[oss-security] Re: [Xen-users] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy\"\n") "<E1ccAXl-0000Q3-Dy@xenbits.xenproject.org>" ("<E1ccAXl-0000Q3-Dy@xenbits.xenproject.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30262 invoked by uid 550); 11 Feb 2017 09:41:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32640 invoked from network); 11 Feb 2017 08:50:23 -0000
X-IronPort-AV: E=Sophos;i="5.35,145,1484006400"; 
   d="scan'208";a="40600151"
Date: Sat, 11 Feb 2017 08:49:54 +0000
From: Roger Pau =?iso-8859-1?Q?Monn=E9?= <roger.pau@citrix.com>
To: Xen.org security team <security@xen.org>
CC: <xen-announce@lists.xen.org>, <xen-devel@lists.xen.org>,
	<xen-users@lists.xen.org>, <oss-security@lists.openwall.com>
Message-ID: <20170211084954.xxo6puddj5b6jq6f@MacBook-Pro-de-Roger.local>
References: <E1ccAXl-0000Q3-Dy@xenbits.xenproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <E1ccAXl-0000Q3-Dy@xenbits.xenproject.org>
User-Agent: NeoMutt/20170206 (1.7.2)
X-ClientProxiedBy: AMSPEX02CAS01.citrite.net (10.69.22.112) To
 AMSPEX02CL02.citrite.net (10.69.22.126)
Subject: [oss-security] Re: [Xen-users] Xen Security Advisory 208 (CVE-2017-2615) - oob
 access in cirrus bitblt copy

On Fri, Feb 10, 2017 at 12:43:17PM +0000, Xen.org security team wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
>             Xen Security Advisory CVE-2017-2615 / XSA-208
> 
>                    oob access in cirrus bitblt copy
> 
> ISSUE DESCRIPTION
> =================
> 
> When doing bitblt copy backwards, qemu should negate the blit width.
> This avoids an oob access before the start of video memory.
> 
> IMPACT
> ======
> 
> A malicious guest administrator can cause an out of bounds memory
> access, possibly leading to information disclosure or privilege
> escalation.
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
> RESOLUTION
> ==========
> 
> Applying the appropriate attached patch resolves this issue.
> 
> xsa208-qemuu.patch    qemu-xen, mainline qemu

The patch doesn't apply cleanly against the QEMU-upstream found in Xen 4.7.1:

http://beefy9.nyi.freebsd.org/data/110amd64-default/433828/logs/xen-tools-4.7.1_2.log

Roger.
