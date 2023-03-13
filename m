Received: (qmail 22358 invoked by uid 550); 13 Mar 2023 13:03:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13339 invoked from network); 13 Mar 2023 11:10:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=yonsei-ac-kr.20210112.gappssmtp.com; s=20210112; t=1678705844;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R+6iYidoCgHWyXEN12Fq8ZPKmWdGaocCaECf9jaeV4U=;
        b=GIAtzAOcL/Hts/nWjRJwhzFqfOrbGa+ghuKEPJmxWjB2lThAN3OgV6qHY3YvfbQFyS
         XBnavhzrbCN/Ivx7BXoViQOtlkAAu90BZaNMeq8wAFJ9LXVXBFldF9GQpmvs9l0JIlQ8
         Z2kVYt3XT63xT2bZQZCmdBVG7P5RPPPpv1XU1pkaf9e1lFFWXGfxPLd9nkeFwOSOK1rF
         5gQXUD6jdApjJH2JVqD1qIbY7+op2k+ApEMZWy6Hsum68u33YnZxlbNy36GQtiKbhuM1
         R/nT9f1SGbFe9fYlFysSLPfs2CHiZckwPjDxyznbUy5YA6IjsjDsCnX356lFnRiZRSTv
         bu7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678705844;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R+6iYidoCgHWyXEN12Fq8ZPKmWdGaocCaECf9jaeV4U=;
        b=8OZO0wVtxY/g1GA0m5iDnRJ+G/wGNgY3/CWCvgk/LTW7zCotARbtCTmCuYl+OPh2/e
         VXJEvK7c1NdnwGdJb7n9HxbaxVrL6atDEYjs57To37he8yWzRg8nqc1PJ6SXc/uPrqGH
         wgNR0ksHjYy2s2hYwVIgMuGNajBrmguobEqH+bHyR/1wpMQz6MD8/BHmWu6oSXQUwVw7
         SMdqUVFKWxiCqAyaSTqk3hRlZIMjZQ1cQSkSd9PsFfLpLZDby9x63JoLT+wjFBjRpquT
         7kK39Se/+MnUJ9mEonKefuWH6NGOa95lN8YekEyCvtFuvj9kLCIAeVstv4hSfrjUccta
         KeOQ==
X-Gm-Message-State: AO0yUKVM0sIZcX6ceDMQRiwM+cpToNgWer2wHoZs6UNI3zKoiJuNNxpM
	93GxXGl211wNG+jYRFYA8anub/w8+pNYtSqwSk6yTxq6YekFAxWbF9Ut13I=
X-Google-Smtp-Source: AK7set+tazLpRKqLzfkTeQNCxD57mJATJcjBwGRjwpxGjQC3HO3MfH3TrCLVGdUPD/EuPpXnJpc/X8wUf99k1H7hsM0=
X-Received: by 2002:a81:c543:0:b0:536:4194:e6eb with SMTP id
 o3-20020a81c543000000b005364194e6ebmr21764746ywj.0.1678705843911; Mon, 13 Mar
 2023 04:10:43 -0700 (PDT)
MIME-Version: 1.0
From: Jisoo Jang <jisoo.jang@yonsei.ac.kr>
Date: Mon, 13 Mar 2023 20:10:33 +0900
Message-ID: <CABz=zMLL=m9dgAThaqT5i89TpArTO6o+4v=YQAHCzegm0MubQQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Dokyung Song <dokyungs@yonsei.ac.kr>, Minsuk Kang <linuxlovemin@yonsei.ac.kr>
Content-Type: multipart/alternative; boundary="00000000000082508e05f6c62992"
Subject: [oss-security] A USB-accessible slab-out-of-bounds read in Linux kernel driver

--00000000000082508e05f6c62992
Content-Type: text/plain; charset="UTF-8"

=== Description ===

A slab-out-of-bounds read bug was found in the Broadcom Full MAC Wi-Fi
driver (e.g., brcmfmac.ko in the linux-modules-extra package in Ubuntu),

The bug occurs in kmemdup() called from brcmf_get_assoc_ies(), when
assoc_info->req_len, data from a URB provided by a USB device, is bigger
than the size of buffer which is defined as WL_EXTRA_BUF_MAX.

The driver duplicates the data of cfg->extra_buf to conn_info->req_ie as
much as assoc_info->req_le, which could exceed the size of the buffer.

The data passes through cfg80211_connect_done(),
__cfg80211_connect_result(); in the end, it reaches
nl80211_send_connect_result() that will form netlink messages with the data
read outside the bounds of the buffer.

This data, which may contain sensitive information in the kernel, could be
sent to a userspace socket by __netlink_sendskb() during this multicasting
process.

=== Fix ===

A patch was reported to the linux wireless mailing list and successfully
reviewed by the maintainer.

(
https://lore.kernel.org/linux-wireless/20230309104457.22628-1-jisoo.jang@yonsei.ac.kr/T/#u
)

--00000000000082508e05f6c62992--
