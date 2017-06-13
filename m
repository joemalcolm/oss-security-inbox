X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["643" "Wednesday" "14" "June" "2017" "09:24:26" "+1200" "Murray McAllister" "murray.mcallister@insomniasec.com" "<e84de9d7-409e-1346-87a6-0950030449fe@insomniasec.com>" "20" "[oss-security] Re: Linux kernel: drm/vmwgfx: 4 byte read of uninitialised kernel memory in vmw_gb_surface_define_ioctl()" "^Date:" nil nil "6" "2017061321:24:26" "[oss-security] Re: Linux kernel: drm/vmwgfx: 4 byte read of uninitialised kernel memory in vmw_gb_surface_define_ioctl()" (number mark "U       murray.mcall Jun 14   20/643   " thread-indent "\"[oss-security] Re: Linux kernel: drm/vmwgfx: 4 byte read of uninitialised kernel memory in vmw_gb_surface_define_ioctl()\"\n") "<58b3f24c-90fe-a92e-1ae8-dc8ad702401f@insomniasec.com>" ("<58b3f24c-90fe-a92e-1ae8-dc8ad702401f@insomniasec.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30269 invoked by uid 550); 13 Jun 2017 21:27:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28162 invoked from network); 13 Jun 2017 21:24:41 -0000
References: <58b3f24c-90fe-a92e-1ae8-dc8ad702401f@insomniasec.com>
Message-ID: <e84de9d7-409e-1346-87a6-0950030449fe@insomniasec.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <58b3f24c-90fe-a92e-1ae8-dc8ad702401f@insomniasec.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Wed, 14 Jun 2017 09:24:26 +1200
From: Murray McAllister <murray.mcallister@insomniasec.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux kernel: drm/vmwgfx: 4 byte read of uninitialised kernel
 memory in vmw_gb_surface_define_ioctl()
To: oss-security@lists.openwall.com

On 13/06/17 15:39, Murray McAllister wrote:
> The vmw_gb_surface_define_ioctl() function (accessible via
> DRM_IOCTL_VMW_GB_SURFACE_CREATE) defines a backup_handle variable but
> does not give it an initial value. If you attempt to create a GB
> surface, and provide a previously-allocated DMA buffer to be used as a
> backup buffer, the backup_handle variable does not get written to and is
> then later returned to user-space.
> 
> Upstream commit:
> 
> https://github.com/torvalds/linux/commit/07678eca2cf9c9a18584e546c2b2a0d0c9a3150c
> 
> CVE:
> 
> I'll request one now and reply once I have one.
> 

MITRE assigned CVE-2017-9605.

Thanks
