X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["424" "Thursday" "18" "April" "2019" "21:33:59" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiRB0POW+i-Q5NAjbkBjStUZ9YVehk=dOsM-p7symuUgdQ@mail.gmail.com>" "12" "[oss-security] Linux kernel < 4.14.111 drivers/net/wan/lmc/lmc_main.c kernel address dumps to user space" nil nil nil "4" "2019041813:33:59" "[oss-security] Linux kernel < 4.14.111 drivers/net/wan/lmc/lmc_main.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   12/424   " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/net/wan/lmc/lmc_main.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/net/wan/lmc/lmc_main.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13680 invoked by uid 550); 18 Apr 2019 16:37:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24049 invoked from network); 18 Apr 2019 13:34:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=g+mzOOTw4SlT7Ujz/LkjV3MDKO+felxHAWQpxHht3AE=;
        b=K6DtR7mqJFs2DYd9ybIZb92u1WPCIJk6HRdTy5hiqmo3J8s8th+gOG9OjyWh56MXMJ
         aAcbqYtpI/r0kqNQ4Ji9cqG0Ld+73sOfgOH5wmQ4EH6SLVa9YGHrySIl6CIf15mVqdev
         YinXhmaOAgXNbCIXfo0QzXMTtaT5KCA/jXZU0ndByB/iOBbK8whUlY7g8Ytoy80wrxOm
         DE2ndrtl8XSkY73m/fOnAVUx4hJaofTf6iKiRv1ndMrMDfFuNZcV1YyzLWDN1w9eqhPg
         zHpOw87RwIPN/DTVIhBnJQaYRcXJR0Yl/HQlVCSm7g3kVY+sGtXqSInW5Nh0lcO3QYZ3
         av7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=g+mzOOTw4SlT7Ujz/LkjV3MDKO+felxHAWQpxHht3AE=;
        b=TAp7Iw5Ok6FlYjPKjp1uMdXvS+VCvA7OJR3SUxbVo9vCa542x4yJYvPmCo1c2twFv+
         AMW0KjLFPBgxOoGQOgZdsu64WrIQ+CaPC0yOaG+1Rh9ohjMPBjyVRK2sc1aDpPMzXo1E
         C6Or4CYFYobT1MXUDE9YRCiL9uv4GOow6bTs70b1sZGys3Wu3gZuX4K/xlDe3EFxbhtR
         4IhzEKq7lO32CWg1WfB1SLPczcZEH+dgNl8o9V7+xFWvJhIN89hX2hQ5N+k7nqq1qatK
         TpT2XHKR7+yT4EYSkwccP957XScILSD1UT81rt+JolfTXUIWl06pAgYuxgWqNAugyzf0
         E7JA==
X-Gm-Message-State: APjAAAUlt8b9SeICCEF/WCBrn0ycITqlqMFtKIiunMGGoV055xvRbuf8
	10Pm/Rtp4/qj/AhfR8ExS+QvelrmqLhF2qQC8IaG11QUctI=
X-Google-Smtp-Source: APXvYqyXhOQvrHYi+DAHbjtgQaFVM7lAg62uGKU4H/lxIkKQ3DGCQoFQ21KH5bz8kNhURvdqqubrIvO6EtORk2nmk5E=
X-Received: by 2002:a0d:ec96:: with SMTP id v144mr934343ywe.28.1555594450291;
 Thu, 18 Apr 2019 06:34:10 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:33:59 +0800
Message-ID: <CABXRUiRB0POW+i-Q5NAjbkBjStUZ9YVehk=dOsM-p7symuUgdQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/net/wan/lmc/lmc_main.c kernel address
 dumps to user space

In drivers/net/wan/lmc/lmc_main.c:510,
lmc_ioctl will dump the address of data to dmesg when xc.command is
lmc_xilinx_load, which allows local user to read the kernel address.

int lmc_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd) /*fold00*/
{
    ...
    case lmc_xilinx_load: /*fold02*/
        ...
            printk("%s: Starting load of data Len: %d at 0x%p ==
0x%p\n", dev->name, xc.len, xc.data, data);
}
