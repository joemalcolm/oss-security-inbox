X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3109" "Monday" "20" "July" "2020" "14:44:48" "+0100" "Andrew Cooper" "andrew.cooper3@citrix.com" "<57e20b43-53cb-acc6-2634-4fc3b29e2312@citrix.com>" "111" "Re: [oss-security] Xen Security Advisory 329 v2 - Linux ioperm bitmap context switching issues" nil nil nil "7" "2020072013:44:48" "[oss-security] Xen Security Advisory 329 v2 - Linux ioperm bitmap context switching issues" (number mark "U       andrew.coope Jul 20  111/3109  " thread-indent "\"Re: [oss-security] Xen Security Advisory 329 v2 - Linux ioperm bitmap context switching issues\"\n") "<CAA8xKjVib9UERsMrAy3nNdVssNxLciXTmmhmXqq1gvhO16URew@mail.gmail.com>" ("<E1jw3ms-0006i6-Se@xenbits.xenproject.org>" "<CAA8xKjVib9UERsMrAy3nNdVssNxLciXTmmhmXqq1gvhO16URew@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Xen Security Advisory 329 v2 - Linux ioperm bitmap context switching issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12286 invoked by uid 550); 20 Jul 2020 13:46:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11996 invoked from network); 20 Jul 2020 13:45:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=citrix.com; s=securemail; t=1595252704;
  h=subject:to:cc:references:from:message-id:date:
   mime-version:in-reply-to:content-transfer-encoding;
  bh=OuiEP3D65JBIDm2R1AzKgKM4VFlaTnShCJIfjbHA2Dg=;
  b=B3VNs0qNrEnQNC4UCVTiRCN2cewf1cElBIvDMzhuwiuwGC9ittyl6+7h
   ZVrjdsklrGLMCnGUFheEyPClIoFRRe+3wN3cyJpfdyK0utD+evuiaP4Dy
   NYtnBHwEW85vdy0sfhQVRPURn7l4FofCpGxNqK/0Vh5W/mjdapkw7n5VS
   I=;
Authentication-Results: esa5.hc3370-68.iphmx.com; dkim=none (message not signed) header.i=none
IronPort-SDR: sNyUv7VO9pjGKXyswLM1TpeV6PWBf4YBhqlfyQbFFMeziSp3EwpWsVcfqABUCpw1FTCaHzUAiw
 ij+9alrRXwiPyLEBu6RgqkIuhM2WIGLbZSOWCqIIbO68a5oGUBt368oGDD0ovD2gTxmpgexUKM
 IxtU0mpQjgJv2B64F5+kc99RKPJavAYpwe3+EpvVgVOYKPcCJjIYnxqg0a86mOx6MBgv01FDqk
 pSc2vBe4DWoIs8K1Aw7NS9AJkkc8+b9OvYFvBzQr6fG4PvAmAMDLFn1LLnSNvZarYUi58i0etn
 H6c=
X-SBRS: 2.7
X-MesageID: 22950362
X-Ironport-Server: esa5.hc3370-68.iphmx.com
X-Remote-IP: 162.221.158.21
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.75,375,1589256000"; 
   d="scan'208";a="22950362"
To: Mauro Matteo Cascella <mcascell@redhat.com>,
	<oss-security@lists.openwall.com>
CC: <xen-announce@lists.xen.org>, <xen-devel@lists.xen.org>,
	<xen-users@lists.xen.org>, Xen.org security team
	<security-team-members@xen.org>
References: <E1jw3ms-0006i6-Se@xenbits.xenproject.org>
 <CAA8xKjVib9UERsMrAy3nNdVssNxLciXTmmhmXqq1gvhO16URew@mail.gmail.com>
From: Andrew Cooper <andrew.cooper3@citrix.com>
Message-ID: <57e20b43-53cb-acc6-2634-4fc3b29e2312@citrix.com>
Date: Mon, 20 Jul 2020 14:44:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAA8xKjVib9UERsMrAy3nNdVssNxLciXTmmhmXqq1gvhO16URew@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Content-Language: en-GB
X-ClientProxiedBy: AMSPEX02CAS02.citrite.net (10.69.22.113) To
 AMSPEX02CL02.citrite.net (10.69.22.126)
Subject: Re: [oss-security] Xen Security Advisory 329 v2 - Linux ioperm bitmap
 context switching issues

/sigh - it seems that stuff like this doesn't get done when I'm on holiday.

I'll get one sorted.

~Andrew

On 17/07/2020 08:54, Mauro Matteo Cascella wrote:
> Hello,
>
> Will a CVE be assigned to this flaw?
>
> Thanks,
>
> On Thu, Jul 16, 2020 at 3:21 PM Xen.org security team
<security@xen.org <mailto:security@xen.org>> wrote:
>
>                     Xen Security Advisory XSA-329
>                               version 2
>
>              Linux ioperm bitmap context switching issues
>
> UPDATES IN VERSION 2
> ====================
>
> Public release.
>
> ISSUE DESCRIPTION
> =================
>
> Linux 5.5 overhauled the internal state handling for the iopl() and
> ioperm()
> system calls.  Unfortunately, one aspect on context switch wasn't wired up
> correctly for the Xen PVOps case.
>
> IMPACT
> ======
>
> IO port permissions don't get rescinded when context switching to an
> unprivileged task.  Therefore, all userspace can use the IO ports
> granted to
> the most recently scheduled task with IO port permissions.
>
> VULNERABLE SYSTEMS
> ==================
>
> Only x86 guests are vulnerable.
>
> All versions of Linux from 5.5 are potentially vulnerable.
>
> Linux is only vulnerable when running as x86 PV guest.  Linux is not
> vulnerable when running as an x86 HVM/PVH guests.
>
> The vulnerability can only be exploited in domains which have been granted
> access to IO ports by Xen.  This is typically only the hardware
> domain, and
> guests configured with PCI Passthrough.
>
> MITIGATION
> ==========
>
> Running only HVM/PVH guests avoids the vulnerability.
>
> CREDITS
> =======
>
> This issue was discovered by Andy Lutomirski.
>
> RESOLUTION
> ==========
>
> Applying the appropriate attached patch resolves this issue.
>
> xsa329.patch           Linux 5.5 and later
>
> $ sha256sum xsa329*
> cdb5ac9bfd21192b5965e8ec0a1c4fcf12d0a94a962a8158cd27810e6aa362f0 
> xsa329.patch
> $
>
> DEPLOYMENT DURING EMBARGO
> =========================
>
> Deployment of the patches and/or mitigations described above (or
> others which are substantially similar) is permitted during the
> embargo, even on public-facing systems with untrusted guest users and
> administrators.
>
> But: Distribution of updated software is prohibited (except to other
> members of the predisclosure list).
>
> Predisclosure list members who wish to deploy significantly different
> patches and/or mitigations, please contact the Xen Project Security
> Team.
>
>
> (Note: this during-embargo deployment notice is retained in
> post-embargo publicly released Xen Project advisories, even though it
> is then no longer applicable.  This is to enable the community to have
> oversight of the Xen Project Security Team's decisionmaking.)
>
> For more information about permissible uses of embargoed information,
> consult the Xen Project community's agreed Security Policy:
>   http://www.xenproject.org/security-policy.html
>
>
>
> --
> Mauro Matteo Cascella, Red Hat Product Security
> 6F78 E20B 5935 928C F0A8  1A9D 4E55 23B8 BB34 10B0


