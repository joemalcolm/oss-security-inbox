X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1097" "Tuesday" "5" "March" "2019" "22:02:49" "+0100" "Jann Horn" "jannhorn@googlemail.com" "<CAG48ez3JJ_+smFw9H8Fv2t2Rv0qNKrgBEp1hsfYL0BF16VWnNg@mail.gmail.com>" "20" "[oss-security] Linux kernel: OOB R/W in SNMP NAT module (CVE-2019-9162); virtual address 0 mappable (CVE-2019-9213)" "^Date:" nil nil "3" "2019030521:02:49" "[oss-security] Linux kernel: OOB R/W in SNMP NAT module (CVE-2019-9162); virtual address 0 mappable (CVE-2019-9213)" (number mark "        jannhorn@goo Mar  5   20/1097  " thread-indent "\"[oss-security] Linux kernel: OOB R/W in SNMP NAT module (CVE-2019-9162); virtual address 0 mappable (CVE-2019-9213)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1564 invoked by uid 550); 6 Mar 2019 10:52:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24167 invoked from network); 5 Mar 2019 21:03:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=6aOa4gXoAMQJS2V1XOFU7ifhARy0Wdq4M+D3GjRoeGY=;
        b=aGZWHDq9qnLkhf/aOax0tNKURNtVZk+wbwYiyRvWIdBx/rn/O9h2NxCj+ypvimlAHj
         jUXFxy5oLGS/JsbhQ+7PBXcAjcSehxc7oanqFIzY17Ws0trt16Y+E6kTrwVByPSQpH4C
         /Xcp/yPuP8dK+tTous7FR+Kh8UjyAKF+d/TkrDYOGst3w38kwy/9IisXs5yO15gcA2Mp
         yF8gMlIMr9e0+V6SzN3iXWCENWSrmmwdyelFMn5CV+lAEAelODyxw3CoRuSgtxYtGAwf
         bgiQMZylVotSchR2JBPsJXuAbA9kxFdRTlB8+CEjgc7YiolLH6eYrBZ+gfkMBKSG4nuv
         +o4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=6aOa4gXoAMQJS2V1XOFU7ifhARy0Wdq4M+D3GjRoeGY=;
        b=ChkJphGZaNJxvGhyHa+dw32Ri5WGC2yz5e9d9L8fqNPABpveU+9cPBHHpzMst44C4D
         r+oENYdBvBXqapo52fOReth5VXYtQFhHvYod2ojl3lM3T+wJNfSN069TVHZbqpC0B+SA
         YhCxou/rvium95RZpHq6uhxmfch43ukcw5NJJpqXYMH3n0yX5gix6OIYFmLJ0TDcxPO3
         cOKcsu1MCs/ABfXN04vlr5J47q1St/x2yJzhJ2WxC3A/RTNBfCU7r9xMx/sZ7C8Tlf98
         8SLVZCbpfaOWdza7MaFBYwhBHpBSSb/2XOB2dR19PZG53JN56tkVT0NoeszcChg2O7La
         YW3Q==
X-Gm-Message-State: APjAAAXODyfEGEun/vLXjOrJBkkzai9UNiiGGCdieH0RazXGGs/1gEoI
	waO9vPKL7p/+DGFT1hNKPDxzPlDK
X-Google-Smtp-Source: APXvYqxfIvqz/FpTFCslnoWmhqKkTPz6Phq4yEcyw98LNfmLJ0cKfOAwKs+36AOBcuZWTaiWVsqGzw==
X-Received: by 2002:aca:e612:: with SMTP id d18mr324488oih.52.1551819796349;
        Tue, 05 Mar 2019 13:03:16 -0800 (PST)
X-Received: by 2002:a9d:66d0:: with SMTP id t16mr2255534otm.35.1551819795132;
 Tue, 05 Mar 2019 13:03:15 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAG48ez3JJ_+smFw9H8Fv2t2Rv0qNKrgBEp1hsfYL0BF16VWnNg@mail.gmail.com>
Message-ID: <CAG48ez3JJ_+smFw9H8Fv2t2Rv0qNKrgBEp1hsfYL0BF16VWnNg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 5 Mar 2019 22:02:49 +0100
From: Jann Horn <jannhorn@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: OOB R/W in SNMP NAT module (CVE-2019-9162); virtual
 address 0 mappable (CVE-2019-9213)
To: oss-security@lists.openwall.com

Two Linux kernel bugs:

out-of-bounds read and write in SNMP NAT module
introduced in commit cc2d58634e0f ("netfilter: nf_nat_snmp_basic: use
asn1 decoder library",
first in 4.16)
https://bugs.chromium.org/p/project-zero/issues/detail?id=1776
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/net?id=c4c07b4d6fa1f11880eab8e076d3d060ef3f55fc
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.103
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.25
[this one's been public for a while, I didn't get around to sending a
mail to oss-security about it]

virtual address 0 is mappable via privileged write() to /proc/*/mem
https://bugs.chromium.org/p/project-zero/issues/detail?id=1792
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0a1d52994d440e21def1c2174932410b4f2a98a1
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.20.14
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.27
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.105
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.9.162
