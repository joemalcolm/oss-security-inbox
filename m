X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1557" "Thursday" "18" "April" "2019" "21:32:54" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiQuyKO0DcAkODv6k-e5LLDu-D_8g6KOw4Xr1ZpuDSh2mw@mail.gmail.com>" "53" "[oss-security] Linux kernel < 4.14.111 drivers/message/fusion/mptscsih.c kernel address dumps to user space" nil nil nil "4" "2019041813:32:54" "[oss-security] Linux kernel < 4.14.111 drivers/message/fusion/mptscsih.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   53/1557  " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/message/fusion/mptscsih.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/message/fusion/mptscsih.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13548 invoked by uid 550); 18 Apr 2019 16:36:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22197 invoked from network); 18 Apr 2019 13:33:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ByRUQ9Aa8yaRPgJr81XT8URKiwaCeI+zx1SZLfXfEls=;
        b=BK9t5nUmR7bCuhlR7+8DsAt2LlaNtxc1yZ4SfpLKkHw6MT3Z2vawBQZamQfLXyGasB
         x+o6JtQwzE9WBEvbU5I2SUlE10bAywLQUYFd0q9abs+xf0LlMBQkXEAgekuAa3vgEwO9
         IoJDoUo6UEeFbCJyR59yCzKRMQGi4yBuB9mUn/ygC22N/wSZAo9comYfp61Hs1QT8e35
         MK9ffWIJz8c55slHfFeRxqyJR7QU83f8B9weT78oFzOy1/GR13Mkyy45aD4AxCAD/a7T
         xXYF4lVSMw7vbT5hFTaFStTdlTNdsKjd78Uhic8XWQqpH9zTtYMRucsJrq4TVHh7EuyG
         uLAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ByRUQ9Aa8yaRPgJr81XT8URKiwaCeI+zx1SZLfXfEls=;
        b=dxMCr0+MtVIpdKQQTSY/ZV230gPuyjvtjDuvHdB9Fh7sd2uUYsR16vxlKBtBXzYWnp
         DAYj/x+7ktaRw/Ukiy6aXSmks9ySXvAAnhen8Ru4iZn77hTx8je5WnUerkNMIG25R/ek
         4IGYeGv02BdtFSFPwIhLwPmzvEL+90HtzYf3gmB/slAHied3vY+0vnmclGQ+2/gA4MJ9
         E9wouPq1FPQSmAbxhnjudGJJC0fhTZS99n7pRNP3nlF2d9szkxqP4AK71WDTlQ7vI5JX
         MaCWqcEdc4TkPwLu4SVFITKSINqEdrdAlSkqKAtseeX62nZ3PpKHqPCvNefjsdM1ma0A
         4UZQ==
X-Gm-Message-State: APjAAAV8XtAMUFH81QRvM7rzQX+A61OeshOL5sZbPrWdajiTHw0xa8ZN
	YHu6trOmEPtQlcaNhTpt0Tv5VVIEkbdJglKQkYv22pHbFVg=
X-Google-Smtp-Source: APXvYqzZ/bp8LZxGJYy/ZBAjHkkdA+3IygSWlOvgFbAUIjqHeVv9aPvoYiZ+ripvSEmbqIxCfQXVbLxXfvO6VxtT1Is=
X-Received: by 2002:a81:9914:: with SMTP id q20mr76142775ywg.35.1555594384713;
 Thu, 18 Apr 2019 06:33:04 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:32:54 +0800
Message-ID: <CABXRUiQuyKO0DcAkODv6k-e5LLDu-D_8g6KOw4Xr1ZpuDSh2mw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/message/fusion/mptscsih.c kernel
 address dumps to user space

In drivers/message/fusion/mptscsih.c:1701
and drivers/message/fusion/mptscsih.c:1786,
mptscsih_abort will dump the address of SCpnt into dmesg,
which allows local user to read the kernel address via dmesg.

int
mptscsih_abort(struct scsi_cmnd * SCpnt)
{
    ...
    printk(MYIOC_s_INFO_FMT "attempting task abort! (sc=%p)\n",
           ioc->name, SCpnt);
    ...
 out:
    printk(MYIOC_s_INFO_FMT "task abort: %s (rv=%04x) (sc=%p)\n",
        ioc->name, ((retval == SUCCESS) ? "SUCCESS" : "FAILED"), retval,
        SCpnt);
    ...
}

In drivers/message/fusion/mptscsih.c:1819
and drivers/message/fusion/mptscsih.c:1843,
mptscsih_dev_reset will dump the address of SCpnt into dmesg,
which allows local user to read the kernel address via dmesg.

int
mptscsih_dev_reset(struct scsi_cmnd *SCpnt)
{
    ...
    printk(MYIOC_s_INFO_FMT "attempting target reset! (sc=%p)\n",
           ioc->name, SCpnt);
    ...
 out:
    printk (MYIOC_s_INFO_FMT "target reset: %s (sc=%p)\n",
        ioc->name, ((retval == 0) ? "SUCCESS" : "FAILED" ), SCpnt);
    ...
}

In drivers/message/fusion/mptscsih.c:1931
and drivers/message/fusion/mptscsih.c:1943,
mptscsih_host_reset will dump the address of SCpnt into dmesg,
which allows local user to read the kernel address via dmesg.

int
mptscsih_host_reset(struct scsi_cmnd *SCpnt)
{
    ...
    printk(MYIOC_s_INFO_FMT "attempting host reset! (sc=%p)\n",
        ioc->name, SCpnt);
    ...
    printk(MYIOC_s_INFO_FMT "host reset: %s (sc=%p)\n",
        ioc->name, ((retval == 0) ? "SUCCESS" : "FAILED" ), SCpnt);
    ...
}
