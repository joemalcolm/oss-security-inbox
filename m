X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["535" "Tuesday" "13" "June" "2017" "15:39:26" "+1200" "Murray McAllister" "murray.mcallister@insomniasec.com" "<58b3f24c-90fe-a92e-1ae8-dc8ad702401f@insomniasec.com>" "16" "[oss-security] Linux kernel: drm/vmwgfx: 4 byte read of uninitialised kernel memory in vmw_gb_surface_define_ioctl()" "^Date:" nil nil "6" "2017061303:39:26" "[oss-security] Linux kernel: drm/vmwgfx: 4 byte read of uninitialised kernel memory in vmw_gb_surface_define_ioctl()" (number mark "        murray.mcall Jun 13   16/535   " thread-indent "\"[oss-security] Linux kernel: drm/vmwgfx: 4 byte read of uninitialised kernel memory in vmw_gb_surface_define_ioctl()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3368 invoked by uid 550); 13 Jun 2017 11:03:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19528 invoked from network); 13 Jun 2017 03:39:40 -0000
Message-ID: <58b3f24c-90fe-a92e-1ae8-dc8ad702401f@insomniasec.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Tue, 13 Jun 2017 15:39:26 +1200
From: Murray McAllister <murray.mcallister@insomniasec.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: drm/vmwgfx: 4 byte read of uninitialised kernel memory
 in vmw_gb_surface_define_ioctl()
To: oss-security@lists.openwall.com

The vmw_gb_surface_define_ioctl() function (accessible via
DRM_IOCTL_VMW_GB_SURFACE_CREATE) defines a backup_handle variable but
does not give it an initial value. If you attempt to create a GB
surface, and provide a previously-allocated DMA buffer to be used as a
backup buffer, the backup_handle variable does not get written to and is
then later returned to user-space.

Upstream commit:

https://github.com/torvalds/linux/commit/07678eca2cf9c9a18584e546c2b2a0d0c9a3150c

CVE:

I'll request one now and reply once I have one.

Chur
