X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1334" "Thursday" "18" "April" "2019" "21:32:29" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiTydpUuYpR7F8D0-CivT3afc2p0-Dd1j7TC2doOP_qNCA@mail.gmail.com>" "42" "[oss-security] Linux kernel < 4.14.111 drivers/message/fusion/mptbase.c kernel address dumps to user space" nil nil nil "4" "2019041813:32:29" "[oss-security] Linux kernel < 4.14.111 drivers/message/fusion/mptbase.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   42/1334  " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/message/fusion/mptbase.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/message/fusion/mptbase.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13475 invoked by uid 550); 18 Apr 2019 16:36:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21923 invoked from network); 18 Apr 2019 13:32:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=vcLPZPFfXOr1ZGiORPTK9WnVW5ckNtAXL9kPZBAn6r4=;
        b=kuDAYN2CJYk+iPklkI4YBn8gNj7ODA8OHwI7OSLZ0SR1jjvQoPzrE3zLo6/nyk46rb
         /UdkK+yZQ0QObTyFHR1axZsTBPzzR94CEUkzHR7v4gOsYkTlelo0TMlZ0GJpUjGtOaPC
         KsCMPortYtYtsROjPFl6o13rL2phncXhBVBZQQNKrgGmel4lHPRfIy7AD8y7wr82hwNb
         YxfphrIujZUvJdLKyn6kSMX9TRV25wI6aXlSV7hBlqoliJgwBBY1VOF2h3TkWy+6qU8u
         9QVEp6CmA1L7Tp4B9Qi9iAN6gYUTNrKuJJkjfIeishHcFCQN0xRRbcxtxKE5nWR9TvS6
         fCNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vcLPZPFfXOr1ZGiORPTK9WnVW5ckNtAXL9kPZBAn6r4=;
        b=OuanFu1smNH01jtOiBaGP6anJO2vpzgSLwMv/0kF3Ixl5HNm9L21PZyVS2cVuI3pRK
         9QcPV+hXUZ53sRgkYzpHz2f4iTXdyPmjm40J/5AGBtIG3ExZ+c+Vw2JpEr1rHPqbu7Zz
         dDA9/o6wWRSTVCfmtU4btJymo4vhEbqZw8r9ZVfFe6B/zdmnFZXa3FtI738+0A1RrVJO
         nhjY/as/4UxcxLBp1kiNX3dONM3uCtRtpf1N2miD67XTjuZrasLbQZCXE7cA9dL2OWyN
         NPq8p+9094zSX1kicmpq9pL644GmML2sXEaMy7KfJtxrr2FinIXT00LyiG6gatOY99HB
         XzVg==
X-Gm-Message-State: APjAAAW+jAEN0Gppb59K0BdeWO1lJ7VsCzcH1reuXOtzRN/TOF2fEg/r
	lTLDXGwAXEA1ojar0PKXJ9vAdgzprdqRv3Y37wULhoK2klw=
X-Google-Smtp-Source: APXvYqxtLh1LZOzdFm1QpEnMSvEMLSCaS/3sLhH3T31KM4ZSVXbIqi0Uaj6eZykysne18jg1xT21+o5F5z4GKlaDGoM=
X-Received: by 2002:a25:8741:: with SMTP id e1mr59425263ybn.293.1555594360185;
 Thu, 18 Apr 2019 06:32:40 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:32:29 +0800
Message-ID: <CABXRUiTydpUuYpR7F8D0-CivT3afc2p0-Dd1j7TC2doOP_qNCA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/message/fusion/mptbase.c kernel
 address dumps to user space

In drivers/message/fusion/mptbase.c:2150,
mpt_suspend will dump the address of dev into dmesg,
the address of pdev is printed to user space.
int
mpt_suspend(struct pci_dev *pdev, pm_message_t state)
{
    ...
    printk(MYIOC_s_INFO_FMT "pci-suspend: pdev=0x%p, slot=%s, Entering "
        "operating state [D%d]\n", ioc->name, pdev, pci_name(pdev),
        device_state);
    ...
}

In drivers/message/fusion/mptbase.c:2191,
mpt_resume will dump the address of dev into dmesg,
the address of pdev is printed to user space.
int
mpt_resume(struct pci_dev *pdev)
{
    ...
    printk(MYIOC_s_INFO_FMT "pci-resume: pdev=0x%p, slot=%s, Previous "
        "operating state [D%d]\n", ioc->name, pdev, pci_name(pdev),
        device_state);
    ...
}

In drivers/message/fusion/mptbase.c:6749
and drivers/message/fusion/mptbase.c:6762,
mpt_iocinfo_proc_show will dump the address of req_frames/alloc into procfs,
which allows local user to read the kernel address via /proc/mpt/info

static int mpt_iocinfo_proc_show(struct seq_file *m, void *v)
{
    ...
    seq_printf(m, "  RequestFrames @ 0x%p (Dma @ 0x%p)\n",
                    (void *)ioc->req_frames, (void
*)(ulong)ioc->req_frames_dma);
    ...
    seq_printf(m, "  Frames   @ 0x%p (Dma @ 0x%p)\n",
                    (void *)ioc->alloc, (void *)(ulong)ioc->alloc_dma);
    ...
}
