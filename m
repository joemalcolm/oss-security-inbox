X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1022" "Wednesday" "21" "December" "2016" "11:39:26" "+0000" "tapper" "lancett01@googlemail.com" "<513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>" "28" "[oss-security] Curious about the security of my router fermwair." nil nil nil "12" "2016122111:39:26" "[oss-security] Curious about the security of my router fermwair." (number mark "U       lancett01@go Dec 21   28/1022  " thread-indent "\"[oss-security] Curious about the security of my router fermwair.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3253 invoked by uid 550); 21 Dec 2016 11:50:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31875 invoked from network); 21 Dec 2016 11:40:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=Mvee4yai+eD2oWbgYS0IkYoILE40xdPGu8vclZLO/3I=;
        b=ct6RWC81HUvQT2XfbkkrovK1g80FUAwh5xepzHH5YPDvk/iGtpCNEBzCnuSCSPyXIo
         eaZzwS96ieoMAPP7NHTpBc3ZYGivEbnWYYKr/QDMKd+3k1s6MXGu27CJ5ujxhLmnBZRH
         orM91I0Xzs+e/9CHhgx3PrUvPhnc10S6OHDE8KSvBEMHOpSKAJUidoHBPdd5Ldttll+n
         DjE1ReBV2/ipp2mdyk05e/uVrx/a0ty0ReD8PMMHbntCg2Y7yZd8Mm9edUHBAszWsBOa
         /P1tMP6ERBdYmMAV5+rqXTYkrcfxc0r9OwQDp3yfvSvgQ1dwfJhkO2ljc7SW8rgN+KxD
         2OCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=Mvee4yai+eD2oWbgYS0IkYoILE40xdPGu8vclZLO/3I=;
        b=GughDpH525aMi1Dlgz43DO63g2lM/31Phjqw1cJDfrHe3+8N+nS7OKRjoQeYJRK22W
         7dD7uVMi8zQReuoBgN1195AMizQOWMSiTt2fS+ZVDnczg+0FOkVcZYZAXF78+40YmaUy
         MUKd8S1pI7VfplcXBbs+Qyr4B3viJ7l1Kf2wQfgJkBnoNB7J/9OFCMk75skAN6QvXNfb
         0kJuQaObisvPL1iw8InIbvwiwp8vyP6Svfp6nDA+JR0iOTHKswL1sahgXxMn0IjNLh8N
         qbE5tKpM0gqQdcK/5/gaMdqc5wxQ5qSFdwKHFT13iHzeuZv7dUma1HBW+zS5RL8r4rn8
         Jawg==
X-Gm-Message-State: AIkVDXJ/wfkzSdzie9MwiZtrPAKSEhufnI4Z5Zpz2fC5Sx8dgvfYhjdJCoJID4w2DhalRQ==
X-Received: by 10.194.94.39 with SMTP id cz7mr3907996wjb.204.1482320437622;
        Wed, 21 Dec 2016 03:40:37 -0800 (PST)
To: oss-security@lists.openwall.com, oss-security@lists.openwall.com
From: tapper <lancett01@googlemail.com>
Message-ID: <513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>
Date: Wed, 21 Dec 2016 11:39:26 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Curious about the security of my router fermwair.

	Hi my name is Jonathan. I don't know if this is the write place to ask 
about this but here gos.

I would like to know if any one would like to have a poke around at the 
third party router firmware I use on my router called Gargoyle.
Its a easy to use interface built on top of Openwrt.

I use this firmware because it has some grate plug ins and the user 
interface has grate a11y. I use a screen reader as I am blind and the 
html5 interface is easy for me to get around in.

It's homepage
https://www.gargoyle-router.com/index.php
GitHub
https://github.com/ericpaulbishop/gargoyle
forum
https://www.gargoyle-router.com/phpbb/index.php

The devs behind Gargoyle are really nice people and have helped me out 
with bugs and made me a mod on the forum.
What I would really like to know is just how secure is this firmware?

I'm not a coder. I am just interested in how safe is my router firmware 
keeping me?

If any one finds any sacurety bugs I know they will get fix.

Thanks and sorry about my spelling Jonathan				
