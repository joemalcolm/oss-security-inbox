X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2514" "Wednesday" "29" "March" "2017" "07:10:35" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1989072863.8759727.1490785835327.JavaMail.zimbra@redhat.com>" "87" "[oss-security] CVE-2017-7294: kernel: drm/vmwgfx: limit mip levels in vmw_surface_define_ioctl()" nil nil nil "3" "2017032911:10:35" "[oss-security] CVE-2017-7294: kernel: drm/vmwgfx: limit mip levels in vmw_surface_define_ioctl()" (number mark "U       vdronov@redh Mar 29   87/2514  " thread-indent "\"[oss-security] CVE-2017-7294: kernel: drm/vmwgfx: limit mip levels in vmw_surface_define_ioctl()\"\n") "<17942653da2647d196e3afaef5659a84@imshyb01.MITRE.ORG>" ("<17942653da2647d196e3afaef5659a84@imshyb01.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31857 invoked by uid 550); 29 Mar 2017 11:10:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31836 invoked from network); 29 Mar 2017 11:10:49 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 9EAE07F77E
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=vdronov@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 9EAE07F77E
Date: Wed, 29 Mar 2017 07:10:35 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Cc: liqiang6-s@360.cn
Message-ID: <1989072863.8759727.1490785835327.JavaMail.zimbra@redhat.com>
In-Reply-To: <17942653da2647d196e3afaef5659a84@imshyb01.MITRE.ORG>
References: <17942653da2647d196e3afaef5659a84@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.12]
Thread-Topic: CVE-2017-7294: kernel: drm/vmwgfx: limit mip levels in vmw_surface_define_ioctl()
Thread-Index: TptXnhJeHBMGOX8jTx8QdO6Rwjcz9w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Wed, 29 Mar 2017 11:10:37 +0000 (UTC)
Subject: [oss-security] CVE-2017-7294: kernel: drm/vmwgfx: limit mip levels in
 vmw_surface_define_ioctl()

hello,

CVE-2017-7294 was assigned for another flaw in [vmwgfx] driver.

> Below is the CVE ID for this new vulnerability (we understand that it
> is completely different from CVE-2017-7261, even though the affected
> function is the same).
>
> [Suggested description]
> In was found that in the Linux kernel in vmw_surface_define_ioctl()
> function in 'drivers/gpu/drm/vmwgfx/vmwgfx_surface.c' file, a
> 'req->mip_levels[i]' are user-controlled values which are not checked
> for the upper limit and are used to calculate 'num_sizes' parameter.
> Both the 'num_sizes' and the array are 'uint32_t' so it is possible to
> make 'num_sizes' overflow. Later 'mip_levels[i]' are used as the loop
> count. This can lead an oob-write and/or kernel lockup or crash. Due
> to the nature of the flaw, privilege escalation cannot be fully ruled
> out.
> 
> ------------------------------------------
> 
> [Additional Information]
> Due to the nature of the flaw, privilege escalation cannot be fully ruled out, although we believe it is unlikely.
> 
> ------------------------------------------
> 
> [VulnerabilityType Other]
> CWE-20
> 
> ------------------------------------------
> 
> [Vendor of Product]
> kernel.org: Linux kernel
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> Linux kernel - all upto 4.11-rc3
> 
> ------------------------------------------
> 
> [Affected Component]
> vmw_surface_define_ioctl() function, drivers/gpu/drm/vmwgfx/vmwgfx_surface.c file
> 
> ------------------------------------------
> 
> [Attack Type]
> Local
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Impact Escalation of Privileges]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> to exploit vulnerability a local user have to run a binary which makes certain ioctl() call
> 
> ------------------------------------------
> 
> [Reference]
> https://lists.freedesktop.org/archives/dri-devel/2017-March/137094.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1436798
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
> 
> ------------------------------------------
> 
> [Discoverer]
> Li Qiang of the Gear Team, Qihoo 360 Inc
>
> Use CVE-2017-7294.
>
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
