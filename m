X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2186" "Friday" "31" "March" "2017" "06:39:03" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1716857341.9702917.1490956743135.JavaMail.zimbra@redhat.com>" "72" "[oss-security] CVE-2017-7346: kernel: drm/vmwgfx: limit the number of mip levels in vmw_gb_surface_define_ioctl()" nil nil nil "3" "2017033110:39:03" "[oss-security] CVE-2017-7346: kernel: drm/vmwgfx: limit the number of mip levels in vmw_gb_surface_define_ioctl()" (number mark "U       vdronov@redh Mar 31   72/2186  " thread-indent "\"[oss-security] CVE-2017-7346: kernel: drm/vmwgfx: limit the number of mip levels in vmw_gb_surface_define_ioctl()\"\n") "<1e6d72c041264038b30f6277bc8b3a27@imshyb01.MITRE.ORG>" ("<1e6d72c041264038b30f6277bc8b3a27@imshyb01.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1610 invoked by uid 550); 31 Mar 2017 10:39:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1571 invoked from network); 31 Mar 2017 10:39:14 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 3FB5A7F6B2
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=vdronov@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 3FB5A7F6B2
Date: Fri, 31 Mar 2017 06:39:03 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1716857341.9702917.1490956743135.JavaMail.zimbra@redhat.com>
In-Reply-To: <1e6d72c041264038b30f6277bc8b3a27@imshyb01.MITRE.ORG>
References: <1e6d72c041264038b30f6277bc8b3a27@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.12]
Thread-Topic: CVE-2017-7346: kernel: drm/vmwgfx: limit the number of mip levels in vmw_gb_surface_define_ioctl()
Thread-Index: faojYKzg1HhDEDYZ9VPvFMowtaTy9w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 31 Mar 2017 10:39:03 +0000 (UTC)
Subject: [oss-security] CVE-2017-7346: kernel: drm/vmwgfx: limit the number of mip levels
 in vmw_gb_surface_define_ioctl()

hello,
CVE-2017-7346 was assigned for another flaw in [vmwgfx] driver.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer

> [Suggested description]
> The vmw_gb_surface_define_ioctl function in
> drivers/gpu/drm/vmwgfx/vmwgfx_surface.c in the Linux kernel through
> 4.10.7 does not validate certain levels data, which allows local users
> to cause a denial of service (system hang) via a crafted ioctl call
> for a /dev/dri/renderD* device.
> 
> ------------------------------------------
> 
> [Additional Information]
> It was found that in the Linux kernel in vmw_gb_surface_define_ioctl()
> function in 'drivers/gpu/drm/vmwgfx/vmwgfx_surface.c' file, a
> 'req->mip_levels' is a user-controlled value which is later used as a
> loop count limit. This allows local unprivileged user to cause a
> denial of service by a kernel lockup via a crafted ioctl call for a
> /dev/dri/renderD* device.
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
> Linux kernel - all upto 4.11-rc4
> 
> ------------------------------------------
> 
> [Affected Component]
> vmw_gb_surface_define_ioctl() function, drivers/gpu/drm/vmwgfx/vmwgfx_surface.c file
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
> [Attack Vectors]
> to exploit vulnerability a local user have to run a binary which makes
> certain ioctl() call. to exploit vulnerability a local unprivileged
> user has to have read/write permissions to the '/dev/dri/renderD*'
> file.
> 
> ------------------------------------------
> 
> [Reference]
> https://bugzilla.redhat.com/show_bug.cgi?id=1437431
> https://lists.freedesktop.org/archives/dri-devel/2017-March/137429.html
> http://marc.info/?l=linux-kernel&m=149086968410117&w=2
>
> Use CVE-2017-7346.
>
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
