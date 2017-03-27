X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2156" "Monday" "27" "March" "2017" "12:06:49" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<537176772.7443853.1490630809109.JavaMail.zimbra@redhat.com>" "72" "[oss-security] CVE: kernel: drm/vmwgfx: check that number of mip levels is above zero in in vmw_surface_define_ioctl()" nil nil nil "3" "2017032716:06:49" "[oss-security] CVE: kernel: drm/vmwgfx: check that number of mip levels is above zero in in vmw_surface_define_ioctl()" (number mark "U       vdronov@redh Mar 27   72/2156  " thread-indent "\"[oss-security] CVE: kernel: drm/vmwgfx: check that number of mip levels is above zero in in vmw_surface_define_ioctl()\"\n") "<6c5cd8ce2e5c485fa598435b83bc4813@imshyb01.MITRE.ORG>" ("<6c5cd8ce2e5c485fa598435b83bc4813@imshyb01.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3163 invoked by uid 550); 27 Mar 2017 16:07:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3140 invoked from network); 27 Mar 2017 16:07:02 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 4424D61BA9
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=vdronov@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 4424D61BA9
Date: Mon, 27 Mar 2017 12:06:49 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <537176772.7443853.1490630809109.JavaMail.zimbra@redhat.com>
In-Reply-To: <6c5cd8ce2e5c485fa598435b83bc4813@imshyb01.MITRE.ORG>
References: <6c5cd8ce2e5c485fa598435b83bc4813@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.12]
Thread-Topic: kernel: drm/vmwgfx: check that number of mip levels is above zero in in vmw_surface_define_ioctl()
Thread-Index: 2gQ2QhcM8WEcqNhaU73ia0A8FxI3AA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 27 Mar 2017 16:06:50 +0000 (UTC)
Subject: [oss-security] CVE: kernel: drm/vmwgfx: check that number of mip levels is above
 zero in in vmw_surface_define_ioctl()

hello,

CVE-2017-7261 was assigned for the following flaw in [vmwgfx] driver.

> [Suggested description]
> The vmw_surface_define_ioctl function in drivers/gpu/drm/vmwgfx/vmwgfx_surface.c in the Linux kernel through 4.10.5
> does not check for a zero value of certain levels data, which
> allows local users to cause a denial of service (ZERO_SIZE_PTR dereference, and
> GPF and possibly panic) via a crafted ioctl call for
> a /dev/dri/renderD* device.
> 
> ------------------------------------------
> 
> [Additional Information]
> In was found that in the Linux kernel in vmw_surface_define_ioctl()
> function in 'drivers/gpu/drm/vmwgfx/vmwgfx_surface.c' file, a
> 'num_sizes' parameter is assigned a user-controlled value which is not
> checked if it is zero. This is used in a call to kmalloc() and later
> leads to dereferencing ZERO_SIZE_PTR, which in turn leads to a GPF and
> possibly to a kernel panic.
> 
> ------------------------------------------
> 
> [VulnerabilityType Other]
> CWE-839
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
> [Attack Vectors]
> to exploit vulnerability a local user have to run a binary which makes certain ioctl() call
> 
> ------------------------------------------
> 
> [Reference]
> https://bugzilla.redhat.com/show_bug.cgi?id=1435719
> https://lists.freedesktop.org/archives/dri-devel/2017-March/136814.html
> http://marc.info/?t=149037004200005&r=1&w=2
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>
> Use CVE-2017-7261.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
