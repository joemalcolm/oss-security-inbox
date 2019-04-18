X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1810" "Thursday" "18" "April" "2019" "21:33:42" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiRFD7o9UqERpn4JLZLf1caSkgCoNaGeh3d2vG2hevSzGg@mail.gmail.com>" "49" "[oss-security] Linux kernel < 4.14.111 drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c kernel address dumps to user space" nil nil nil "4" "2019041813:33:42" "[oss-security] Linux kernel < 4.14.111 drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   49/1810  " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13577 invoked by uid 550); 18 Apr 2019 16:37:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23869 invoked from network); 18 Apr 2019 13:34:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qKR1xb1aTsPxBlh+ujV0rFwY/DYsNgA4JjEqvgr+PIk=;
        b=DPa7judVTz5Nr46iA6KPOB/tS/VAOn7sOWNx1QjXBvxjPrOWsBfjn7E6avAFeLYyyz
         R1QByZ+T9yXBEORXI+UNNTZTUiAV+SCBzKGQ/II96QkS5eLrze9+x9R+2Jq3+BTB+1k0
         hjxW7P80ZMjN+CGkI6k95j/KcBl+cXESK8bfvgT+BKBT/zdj8lY5oYyUmznUWyRIteMm
         MDquGjt5tuKAYbaXDW5S6aVmw9wbKvUEmKcghtfo8BmtzGl5NE69MWRMi+TEMLplOjTb
         2J7WUU8VaS/ccnXQi4wFNINQRqFMdLbffLkwEJfo3o5pRhKBw3ZCkFqJDrO6/midycld
         3/sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qKR1xb1aTsPxBlh+ujV0rFwY/DYsNgA4JjEqvgr+PIk=;
        b=UWrDrqQv7vDCzvLFLc36fgyBAXm/BMIwl0BKaagEmMrdrC/zlr2FLsfvcpj9dAF8F4
         76gD8jCivmyEtu9K3G5bg6Yn1PINYwB0roEeqJmV/JoOnywp9FS9tjj5ftp5eeewapye
         rg0x4hXXkOC5dS5AuWA3CH0Dx9YtAbYftNo4uvLOZ07SsB5Bz2U+1FTlhIHa2UmA7PAY
         hRyBk88CwhL8MZTzAgZ1U+9ZqcVTbLiz7rBqUATNr9e0aOtJ44cWSGCCA4ikAbt6Um4z
         FYwRSkcnROOpQMQKTeW9anGpevz1hJRir/YjslHpQlXLQmXkUgTCkVwOmb4RYKJK8DEA
         Iyug==
X-Gm-Message-State: APjAAAXS0Ah/LKY9r/R/c5w9ynLO/1cxAh6+3Xk3OlSVGRkTuHX2jbdB
	cWNDjFo0qD3TwZ2aE82YxOdVn06tKzGM3IogKmUa9r/LIqc=
X-Google-Smtp-Source: APXvYqzTj/BMNTpYv3ovbdK+kiJ7CHHvxzH5DC3KDZ59BOutRZWnGHw2KTi14ogefGz86KyH9FJOgbA60QaduZaAKOo=
X-Received: by 2002:a25:c652:: with SMTP id k79mr60391407ybf.63.1555594433131;
 Thu, 18 Apr 2019 06:33:53 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:33:42 +0800
Message-ID: <CABXRUiRFD7o9UqERpn4JLZLf1caSkgCoNaGeh3d2vG2hevSzGg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c
 kernel address dumps to user space

In drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c:65
and drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c:77,
nfp_net_debugfs_rx_q_read will dump the address of
rx_rings->rxds and frag to debugfs, which allows local user
to read the kernel address via debugfs.

static int nfp_net_debugfs_rx_q_read(struct seq_file *file, void *data)
{
    seq_printf(file, "RX[%02d,%02d]: cnt=%u dma=%pad host=%p   H_RD=%u
H_WR=%u FL_RD=%u FL_WR=%u\n",
           rx_ring->idx, rx_ring->fl_qcidx,
           rx_ring->cnt, &rx_ring->dma, rx_ring->rxds,
           rx_ring->rd_p, rx_ring->wr_p, fl_rd_p, fl_wr_p);
    ...
        if (frag)
            seq_printf(file, " frag=%p", frag);
    ...
}

In drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c:148
and drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c:164
and drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c:167,
nfp_net_debugfs_tx_q_read will dump the address of
rx_rings->rxds and skb->head and frag to debugfs, which allows local user
to read the kernel address via debugfs.

static int nfp_net_debugfs_tx_q_read(struct seq_file *file, void *data)
{
    ...
    seq_printf(file, "TX[%02d,%02d%s]: cnt=%u dma=%pad host=%p
H_RD=%u H_WR=%u D_RD=%u D_WR=%u\n",
           tx_ring->idx, tx_ring->qcidx,
           tx_ring == r_vec->tx_ring ? "" : "xdp",
           tx_ring->cnt, &tx_ring->dma, tx_ring->txds,
           tx_ring->rd_p, tx_ring->wr_p, d_rd_p, d_wr_p);

    ...
        if (tx_ring == r_vec->tx_ring) {
            struct sk_buff *skb = READ_ONCE(tx_ring->txbufs[i].skb);

            if (skb)
                seq_printf(file, " skb->head=%p skb->data=%p",
                       skb->head, skb->data);
        } else {
            seq_printf(file, " frag=%p",
                   READ_ONCE(tx_ring->txbufs[i].frag));
        }
    ...
}
