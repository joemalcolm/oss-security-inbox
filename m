X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1445" "Thursday" "22" "December" "2016" "09:51:41" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2630257.ZRS1qYvz9N@blackgate>" "41" "Re: [oss-security] Curious about the security of my router fermwair." nil nil nil "12" "2016122208:51:41" "[oss-security] Curious about the security of my router fermwair." (number mark "U       ago@gentoo.o Dec 22   41/1445  " thread-indent "\"Re: [oss-security] Curious about the security of my router fermwair.\"\n") "<513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>" ("<513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23952 invoked by uid 550); 22 Dec 2016 08:52:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23929 invoked from network); 22 Dec 2016 08:51:59 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: tapper <lancett01@googlemail.com>
Date: Thu, 22 Dec 2016 09:51:41 +0100
Message-ID: <2630257.ZRS1qYvz9N@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.26-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>
References: <513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] Curious about the security of my router fermwair.

On Wednesday 21 December 2016 11:39:26 tapper wrote:
> 	Hi my name is Jonathan. I don't know if this is the write place to ask
> about this but here gos.
> 
> I would like to know if any one would like to have a poke around at the
> third party router firmware I use on my router called Gargoyle.
> Its a easy to use interface built on top of Openwrt.
> 
> I use this firmware because it has some grate plug ins and the user
> interface has grate a11y. I use a screen reader as I am blind and the
> html5 interface is easy for me to get around in.
> 
> It's homepage
> https://www.gargoyle-router.com/index.php
> GitHub
> https://github.com/ericpaulbishop/gargoyle
> forum
> https://www.gargoyle-router.com/phpbb/index.php
> 
> The devs behind Gargoyle are really nice people and have helped me out
> with bugs and made me a mod on the forum.
> What I would really like to know is just how secure is this firmware?
> 
> I'm not a coder. I am just interested in how safe is my router firmware
> keeping me?
> 
> If any one finds any sacurety bugs I know they will get fix.
> 
> Thanks and sorry about my spelling Jonathan

I'm using it too.

Basically is what Seth said, but apart ffmpeg some more important packages are 
not up to date, for example:

root@Gargoyle:~# openvpn --version 
OpenVPN 2.3.6 mips-openwrt-linux-gnu [SSL (OpenSSL)] [LZO] [EPOLL] [MH] [IPv6] 
built on Nov  7 2015 
library versions: OpenSSL 1.0.2d 9 Jul 2015, LZO 2.08


