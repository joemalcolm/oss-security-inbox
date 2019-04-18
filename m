X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2159" "Thursday" "18" "April" "2019" "21:35:40" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiT_PGoMJTkeEUeUguZWC0sZQoBPe+URKY9p7KuRsT2sXA@mail.gmail.com>" "72" "[oss-security] Linux kernel < 4.14.111 drivers/scsi/cxgbi/cxgb4i/cxgb4i.c kernel address dumps to user space" nil nil nil "4" "2019041813:35:40" "[oss-security] Linux kernel < 4.14.111 drivers/scsi/cxgbi/cxgb4i/cxgb4i.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   72/2159  " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/scsi/cxgbi/cxgb4i/cxgb4i.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/scsi/cxgbi/cxgb4i/cxgb4i.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15492 invoked by uid 550); 18 Apr 2019 16:37:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26427 invoked from network); 18 Apr 2019 13:36:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=EsIarMYf0O0IOr6UHfozT/ar72WPyfu+4TSO00ZFMVQ=;
        b=FibSTlUpSlk8HMTaNlqfUx1oTIBfAsYO+Y+3wln5bNOy0BwnHoFEwX6JTLlNcoLgQy
         sdalQC3EacZbzo64lRKrR3pENfU9asoyPec4o+5JimT9J1Noa4y5tNpenxqmLD5Gy2j5
         0FfBHPpUui4k100BoUp5EF0ZShRjOKQU8BFKX/rnQ7WwEx26D5N/4O7IatUnzbxrqywm
         XMEyw+z1xK5ADPupL9mNg7x/1CoSjQNIXW68dax5cU2QQufuligeT7oCP5NEt0woYeQF
         VF+Tm8vwR3aCDwLgZ5De2PyXhbh1RTr++ldIelH6MNeBgRaM6/tXmskk+veZVNf7SIru
         CqgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=EsIarMYf0O0IOr6UHfozT/ar72WPyfu+4TSO00ZFMVQ=;
        b=lVzhO3tsDT6/6jFzZk8J+TT1x40igmipkFJty5ubJeb6QPoCfeittJTQgDCUFw8PUz
         SWgYlxNVv0pOEZfXAjmYIwSGXnd6KEISYlJCvuf5uzRkx1XVf/SijPKPFhegmS3qlLgT
         5/x1WFetdR7eZ3hxgn5p4EMKPLYQHos27BlPFnkSsgiALXJbtsTmOhc63WM1A5ji/k5S
         xX7GdlZl2YR9SC31jT+80heeJ0s6ba0V3kBi4kqbSKE+QC1giHB3nsGggsk8Hp+4F05r
         nubdWCV0lJJaVboZYiFB+tmwTFcTAd/JYEOZF50UAYkj6kzetGbzVfIpPfUOhTmws2xx
         CpXw==
X-Gm-Message-State: APjAAAUzLknElD+V36NRPIIC84KOIS521sNu9AcehI1YGDh0D4TADcZ3
	Z6SPmHnJv8zTmKN1rmwJk8Ugx6ujjb6KSS6UTKURIi9AE4w=
X-Google-Smtp-Source: APXvYqz5EoQ0C/XA9wePm9lI8O1Y9eX4sintOdFDPzKqTnmDr8OeIDGrxZbgx+AO8wYZ0YLGuAGM4R94z4IxxtD0aOw=
X-Received: by 2002:a5b:18b:: with SMTP id r11mr46792065ybl.449.1555594551518;
 Thu, 18 Apr 2019 06:35:51 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:35:40 +0800
Message-ID: <CABXRUiT_PGoMJTkeEUeUguZWC0sZQoBPe+URKY9p7KuRsT2sXA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/scsi/cxgbi/cxgb4i/cxgb4i.c kernel
 address dumps to user space

In drivers/scsi/cxgbi/cxgb4i/cxgb4i.c:299,
send_act_open_req will dump the address of csk to dmesg
which allows local user to read kernel address via dmesg.

static void send_act_open_req(struct cxgbi_sock *csk, struct sk_buff *skb,
                struct l2t_entry *e)
{
    ...
    pr_info_ipaddr("t%d csk 0x%p,%u,0x%lx,%u, rss_qid %u.\n",
               (&csk->saddr), (&csk->daddr),
               CHELSIO_CHIP_VERSION(lldi->adapter_type), csk,
               csk->state, csk->flags, csk->atid, csk->rss_qid);
    ...
}


In drivers/scsi/cxgbi/cxgb4i/cxgb4i.c:1792,
cxgb4i_ofld_init will dump the address of cdev to dmesg
which allows local user to read kernel address via dmesg.

static int cxgb4i_ofld_init(struct cxgbi_device *cdev)
{
    ...
    pr_info("cdev 0x%p, offload up, added.\n", cdev);
    ...
}

In drivers/scsi/cxgbi/cxgb4i/cxgb4i.c:2047,
t4_uld_add will dump the address of cdev to dmesg
which allows local user to read kernel address via dmesg.

static void *t4_uld_add(const struct cxgb4_lld_info *lldi)
{
    ...
    pr_info("cdev 0x%p,%s, pfvf %u.\n",
        cdev, lldi->ports[0]->name, cdev->pfvf);
    ...
}

In drivers/scsi/cxgbi/cxgb4i/cxgb4i.c:2129
and drivers/scsi/cxgbi/cxgb4i/cxgb4i.c:2132
and drivers/scsi/cxgbi/cxgb4i/cxgb4i.c:2136
and drivers/scsi/cxgbi/cxgb4i/cxgb4i.c:2139
and drivers/scsi/cxgbi/cxgb4i/cxgb4i.c:2143,
t4_uld_state_change will dump the address of cdev to dmesg
which allows local user to read kernel address via dmesg.

static int t4_uld_state_change(void *handle, enum cxgb4_state state)
{
    struct cxgbi_device *cdev = handle;

    switch (state) {
    case CXGB4_STATE_UP:
        pr_info("cdev 0x%p, UP.\n", cdev);
        break;
    case CXGB4_STATE_START_RECOVERY:
        pr_info("cdev 0x%p, RECOVERY.\n", cdev);
        /* close all connections */
        break;
    case CXGB4_STATE_DOWN:
        pr_info("cdev 0x%p, DOWN.\n", cdev);
        break;
    case CXGB4_STATE_DETACH:
        pr_info("cdev 0x%p, DETACH.\n", cdev);
        cxgbi_device_unregister(cdev);
        break;
    default:
        pr_info("cdev 0x%p, unknown state %d.\n", cdev, state);
        break;
    }
    return 0;
}
