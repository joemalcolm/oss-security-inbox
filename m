X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1157" "Thursday" "18" "April" "2019" "21:34:30" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiRed3B0GU-BeiUGMnkKd9X5=KGg7VCEPL=xTxrY46nHrQ@mail.gmail.com>" "37" "[oss-security] Linux kernel < 4.14.111 drivers/scsi/cxgbi/cxgb3i/cxgb3i.c kernel address dumps to user space" nil nil nil "4" "2019041813:34:30" "[oss-security] Linux kernel < 4.14.111 drivers/scsi/cxgbi/cxgb3i/cxgb3i.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   37/1157  " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/scsi/cxgbi/cxgb3i/cxgb3i.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/scsi/cxgbi/cxgb3i/cxgb3i.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14229 invoked by uid 550); 18 Apr 2019 16:37:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24456 invoked from network); 18 Apr 2019 13:34:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=bWZauVnaQJd2q5+4Wf1btmiIo3yOGILYcvWrLK2II9w=;
        b=q/zbYzQ2UhBykNDsObtN68CB79+bOoq+X8wPhBuZ7hH4dz6O7jzUUeMh6ZcDyF/SMN
         ODpEiiwwMEeWgauim2FILqz7tmWhTC+iRO8WQxSqAPgeeKUtwyMzYpxoDWL0DuwKGPsU
         icFG7JsNgaqguqzM6mbWvj4vDGa0kPIb9YuJlSQIB00ZmemSrTP8i+QkNH/4U+sXI3bx
         CP76FqBCcczmr6bKHTbmUw587aH0+v9Vq2eeA357e7oUVSBiIQ9u6k8PcX//AQRV18hx
         1LWwPoWHW5p0OyAbKYbxYvJwyE+cJz8b+m+yE8qm5VP71/CV9wCHIootHYvhM6XsOHk7
         hDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bWZauVnaQJd2q5+4Wf1btmiIo3yOGILYcvWrLK2II9w=;
        b=QrkDEV3YYnft0Lbut0fLKmBJy6q3kxalnu3o7HukHhvZCRbb9wO5Hdfs6hGvwzXe93
         nqWBkhaagSPH77K/rcVL3LUMkJrOCZVQcYqa8JNq5RZF4zOS0Wy6O+/EgvlaPKn9L1tz
         p9LX5vkOxZSbUa/pJ7/gf8xG4ePOY0EtdPI6SetdpyV+VF+s+X0a4NSxXGFkVdq8g5mY
         XegyszFQZbQ2DE7MJopbKJUnCyx94Y67NCVVKAbaAyWcleVqNJfmk7jK7DccfPSalbRv
         cvPFM1EpqSBjwdLQ2NrKkTWPDIWY+zPFdhjg0mwH/ntJWQkt9ShC1RqeVAWNtYMV7tjK
         y+Fw==
X-Gm-Message-State: APjAAAWe0MT+Dey8bpaxLVzMtb5gU0YvWxbGrJN3O5C72pLRwEjS/nkQ
	nKU36dwJxvruh7fKNQP1DmvGFufiomecUWBPwTYSWlmBkAE=
X-Google-Smtp-Source: APXvYqx5oHYxvVKFvIxckTHc+9lvwUJt+VqHbo7hR+tU1A91jlz1LL/bHL1uvDPKh5WB6aVPvSvBljmuz1bYKcF/qHE=
X-Received: by 2002:a81:9914:: with SMTP id q20mr76151178ywg.35.1555594481338;
 Thu, 18 Apr 2019 06:34:41 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:34:30 +0800
Message-ID: <CABXRUiRed3B0GU-BeiUGMnkKd9X5=KGg7VCEPL=xTxrY46nHrQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/scsi/cxgbi/cxgb3i/cxgb3i.c kernel
 address dumps to user space

In drivers/scsi/cxgbi/cxgb3i/cxgb3i.c:576,
do_act_open_rpl will dump the address of csk to dmesg
which allows local user to read kernel address via dmesg.

static int do_act_open_rpl(struct t3cdev *tdev, struct sk_buff *skb, void *ctx)
{
    ...
    pr_info("csk 0x%p,%u,0x%lx,%u, status %u, %pI4:%u-%pI4:%u.\n",
        csk, csk->state, csk->flags, csk->atid, rpl->status,
        &csk->saddr.sin_addr.s_addr, ntohs(csk->saddr.sin_port),
        &csk->daddr.sin_addr.s_addr, ntohs(csk->daddr.sin_port));
    ...
}

In drivers/scsi/cxgbi/cxgb3i/cxgb3i.c:1064,
cxgb3i_ofld_init will dump the address of cdev to dmesg
which allows local user to read kernel address via dmesg.

static int cxgb3i_ofld_init(struct cxgbi_device *cdev)
{
    ...
    pr_info("cdev 0x%p, offload up, added.\n", cdev);
    ...
}

In drivers/scsi/cxgbi/cxgb3i/cxgb3i.c:1343,
cxgb3i_dev_open will dump the address of cdev to dmesg
which allows local user to read kernel address via dmesg.

static void cxgb3i_dev_open(struct t3cdev *t3dev)
{
    ...
    pr_info("cdev 0x%p, f 0x%x, t3dev 0x%p open, err %d.\n",
        cdev, cdev ? cdev->flags : 0, t3dev, err);
    return;
    ...
}
