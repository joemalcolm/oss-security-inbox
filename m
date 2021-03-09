X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["915" "Tuesday" "9" "March" "2021" "09:56:16" "+0100" "Mauro Matteo Cascella" "mcascell@redhat.com" nil "28" "[oss-security] CVE-2021-3409 QEMU: sdhci: incomplete fix for CVE-2020-17380/CVE-2020-25085" nil nil nil "3" nil nil (number mark "U       mcascell@red Mar  9   28/915   " thread-indent "\"[oss-security] CVE-2021-3409 QEMU: sdhci: incomplete fix for CVE-2020-17380/CVE-2020-25085\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3409 QEMU: sdhci: incomplete fix for CVE-2020-17380/CVE-2020-25085" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3793 invoked by uid 550); 9 Mar 2021 12:23:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26308 invoked from network); 9 Mar 2021 08:56:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615280191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=jalneQFjaecpZepmmx5aQFAuJOLSqrRkAJozzVIDpEA=;
	b=SsNFQK8H/ENsCP9FNXhyGFlx3zDVSPEvikkUgHgMuOehL0Y747jgBbxtE2Lfk9+Q2hXOup
	D2ZBGws5m3/RYGwpUG54P4DCDfWekeP2xf5i3XKQ2a4W8OK/W+lGcrqws6mXeen9rmLxLN
	LC10Tnwxt0yh/cWA0XNm2DeVREaqxOA=
X-MC-Unique: AkslYEPONBSugrzgUChDHg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jalneQFjaecpZepmmx5aQFAuJOLSqrRkAJozzVIDpEA=;
        b=OFjNQkQLMLDDFYsWZI6GQPmkd89uCKEKuj4e4ZcuRtIlDlQO2mHdrldFgEt56ZSCgK
         Me09ONlDDxCQltAgThHqevNaFnnnPCUQQz4auDNr3h0uxWTQHyqFImTm2ap193q44WHb
         QyMpCnexvw5gKxskpFYMtM7H7UxKzi/wppJ8YLOcL7oHXrB7O6jVkVT5ILbjSPl0JZDn
         ojng2bkovF/gJRVKVeXcJ+ntxWiPlx2KHPWZZ0gb/K7b8sD1V0QmZjEgZYR3TDAnfRuq
         o2IoviU7Akbcms4u3mzk/z6NODHFx32yj78Zc2HEIXz1XFbZxXfkYP/ZawjFFWsdWAnj
         QblQ==
X-Gm-Message-State: AOAM533AV5lrwGJcMarfU/2vYaj+ckEw3d2gxh1jV+G/MJk2Q8eMRZ0u
	ulZ1un7ldPXtt7X+grYIKa7dNuGywYzTgANDy1a8K/lv0PdxCMIrfXoVTggd1i5tPnlyOj9NVld
	SczPfxXXe0mCQw6WUyjIg/kqjP9cuxKbEfCrFmg77tYRa
X-Received: by 2002:a63:2321:: with SMTP id j33mr24063995pgj.120.1615280187515;
        Tue, 09 Mar 2021 00:56:27 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyI+Hb36VEbm7j1t4p1ggyFyBPfCFINVej9Y12Lfy5YmEUt6/2/vhutCgKsVc7Teh14UYmVVdSLu3sLpE4CaDA=
X-Received: by 2002:a63:2321:: with SMTP id j33mr24063975pgj.120.1615280187153;
 Tue, 09 Mar 2021 00:56:27 -0800 (PST)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Tue, 9 Mar 2021 09:56:16 +0100
Message-ID: <CAA8xKjUvFqcwS8YymfmUqipHXLae2TT81Sgg2_yZ+TcW1rqBsA@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-3409 QEMU: sdhci: incomplete fix for CVE-2020-17380/CVE-2020-25085

Hello,

QEMU upstream commit [1] was supposed to fix CVE-2020-17380 and
CVE-2020-25085, both involving a heap buffer overflow in the SDHCI
controller emulation code. In fact, commit [1] turned out to be
incomplete, in that it was still possible to reproduce the same
issue(s) with specially crafted input, inducing a bogus transfer and
subsequent out-of-bounds read/write access in sdhci_do_adma() or
sdhci_sdma_transfer_multi_blocks().

A new series has been proposed (not merged yet) to address those
issues, and CVE-2021-3409 was assigned to facilitate
tracking/backporting of the new patch.

Old patch:
[1] https://git.qemu.org/?p=qemu.git;a=commit;h=dfba99f17feb6d4a129da19d38df1bcd8579d1c3

New patch series:
https://lists.nongnu.org/archive/html/qemu-devel/2021-03/msg00949.html

CVE-2021-3409 assigned by Red Hat, Inc.

Best regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

