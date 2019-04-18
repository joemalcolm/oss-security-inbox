X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1588" "Thursday" "18" "April" "2019" "21:33:19" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiTEQs=qocLyQuGSXaAkk_tkA+=dQO=6EyhqfGeU3Pm_dg@mail.gmail.com>" "47" "[oss-security] Linux kernel < 4.14.111 drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c kernel address dumps to user space" nil nil nil "4" "2019041813:33:19" "[oss-security] Linux kernel < 4.14.111 drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   47/1588  " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13512 invoked by uid 550); 18 Apr 2019 16:36:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23603 invoked from network); 18 Apr 2019 13:33:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=GI8nmLuxDPm1sPNnOCKArldJiHl2HialwTubMJD0Lvo=;
        b=hDlWxkh3B1qcAYaZN83bo8JtILYTiJQWbMIn4heCKkhEDmQ5MAkSiEbmoYrkxb8kJX
         zUnJ6C3SnJNxN7OV5VyJeUe1f3/kzZ9AZ1CNFSzy+mWDYJ/AZvNu6x1ec/bjJZNT3Rp3
         yQj94C3xdFc+VKApgDva3zldAzpKjP0Z7nihFpaaxw/D9fNWtLta6kNRjsEQ4HHmtuwj
         g4ppIoqgEG324L3Fu9ve6j29XP7M2oNuh5Z9sf7Yeoy3w6qiQpcifvrTLuySYzWeqEd5
         NMBpzjfjmQvLhpBAoGrjTZusTADEBJdi6EX7uTBjev74c4Cf3Bu2Y+PhQ6rgMfBFIzjs
         rbUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GI8nmLuxDPm1sPNnOCKArldJiHl2HialwTubMJD0Lvo=;
        b=dQTP2ld4gPf6LoHeiIxqVwuK/Vt9vDsYnkrAVuliNWcJSAwcGKIeHi5mt1OPsw/as5
         EyMAhA9rpyBuFhUxWtrYFgk91NuNb2XwP1ljOtH9LrjQ6i3MWGK9KyNa/TDuD9wzLWKb
         POHwQQDkXjBTt3mMVgOB9RbFzjBaLUAdFDwmdsjcHmtmc2GyUnNo4rCOST2nmA3uZI+4
         Pi0zw11qaSqMGIoFxw49435HUjzk2PC5sQoucmQUceV8Da5nMid6qZAKP5F99Sf77OFY
         GiEopFyOyojPAvxTUOeEi9mPyIP4qYBJwhk0LCB2GivKTJbt8IrLAaamM/tebMrJ+MER
         77UQ==
X-Gm-Message-State: APjAAAWBCZYgHl6o3c4alIPCN/yVIHqTjoWGlTaGJXguViIj8TGnzF9a
	31CgwxWJ6bsSR4f15zTv90LyzeNnioLuyhXlIAFq4CjgeDg=
X-Google-Smtp-Source: APXvYqzBgCx9zXRtnqvJNNlm/3mpxcgGN+JC7F3rKn0udvkpqU6bEpNfpF0NQF8qLIuoh6TFwDmq9dXOZWDJKnSnrD4=
X-Received: by 2002:a81:69d5:: with SMTP id e204mr75755077ywc.267.1555594410243;
 Thu, 18 Apr 2019 06:33:30 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:33:19 +0800
Message-ID: <CABXRUiTEQs=qocLyQuGSXaAkk_tkA+=dQO=6EyhqfGeU3Pm_dg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c
 kernel address dumps to user space

In drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c:320
ppm_destory will dump the address of ppm into dmesg,
which allows local user to read the kernel address via dmesg.
static void ppm_destroy(struct kref *kref)
{
    ...
    pr_info("ippm: kref 0, destroy %s ppm 0x%p.\n",
        ppm->ndev->name, ppm);
    ...
}

In drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c:396
and drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c:458
and drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c:468,
cxgbi_ppm_init will dump the address of ppm into dmesg,
which allows local user to read the kernel address via dmesg.
int cxgbi_ppm_init(void **ppm_pp, struct net_device *ndev,
           struct pci_dev *pdev, void *lldev,
           struct cxgbi_tag_format *tformat,
           unsigned int ppmax,
           unsigned int llimit,
           unsigned int start,
           unsigned int reserve_factor)
{
    ...
    if (ppm) {
        pr_info("ippm: %s, ppm 0x%p,0x%p already initialized, %u/%u.\n",
            ndev->name, ppm_pp, ppm, ppm->ppmax, ppmax);
        kref_get(&ppm->refcnt);
        return 1;
    }
    ...
    if (*ppm_pp) {
        ...
        pr_info("ippm: %s, ppm 0x%p,0x%p already initialized, %u/%u.\n",
            ndev->name, ppm_pp, *ppm_pp, ppm->ppmax, ppmax);

        kref_get(&ppm->refcnt);
        return 1;
    }
    ...
    pr_info("ippm %s: ppm 0x%p, 0x%p, base %u/%u, pg %lu,%u, rsvd %u,%u.\n",
        ndev->name, ppm_pp, ppm, ppm->base_idx, ppm->ppmax, PAGE_SIZE,
        ppm->tformat.pgsz_idx_dflt, ppm->pool_rsvd,
        ppm->pool_index_max);
    ...
}
