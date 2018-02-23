X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["696" "Friday" "23" "February" "2018" "09:20:48" "+0100" "Dominik Csapak" "d.csapak@proxmox.com" "<b25d53ba-7344-a2c2-fb22-b7744ee1016e@proxmox.com>" "22" "Re: [oss-security] review of LibVNCServer/vncterm proxmox/vncterm proxmox/spiceterm xenserver/vncterm qemu/ui/console.c" nil nil nil "2" "2018022308:20:48" "[oss-security] review of LibVNCServer/vncterm proxmox/vncterm proxmox/spiceterm xenserver/vncterm qemu/ui/console.c" (number mark "U       d.csapak@pro Feb 23   22/696   " thread-indent "\"Re: [oss-security] review of LibVNCServer/vncterm proxmox/vncterm proxmox/spiceterm xenserver/vncterm qemu/ui/console.c\"\n") "<20180222182926.GA4275@openwall.com>" ("<20180222182926.GA4275@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4052 invoked by uid 550); 23 Feb 2018 11:21:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3620 invoked from network); 23 Feb 2018 08:21:04 -0000
To: oss-security@lists.openwall.com
References: <20180222182926.GA4275@openwall.com>
From: Dominik Csapak <d.csapak@proxmox.com>
Message-ID: <b25d53ba-7344-a2c2-fb22-b7744ee1016e@proxmox.com>
Date: Fri, 23 Feb 2018 09:20:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180222182926.GA4275@openwall.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] review of LibVNCServer/vncterm proxmox/vncterm
 proxmox/spiceterm xenserver/vncterm qemu/ui/console.c

Hi,

Thanks for the review.

I do not know where you looked at our code, but in our official git 
repositories for vncterm[1] and spiceterm[2]

those issues are already fixed (since 2017-05-05)

i changed those variables all to unsigned int, which makes those 
increments defined behavior, and the range checks are ok, because
they cannot be negative anymore.
(it may behave strange, but you cannot trigger an out-of-bounds 
read/write anymore)
also, i replaced the vt->cy += buf code paths with calls to
vncterm_gotoxy (which as you mentioned, perform all necessary checks)

Dominik

[1]: https://git.proxmox.com/?p=vncterm.git;a=summary
[2]: https://git.proxmox.com/?p=spiceterm.git;a=summary

