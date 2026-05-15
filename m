Received: (qmail 10044 invoked by uid 550); 15 May 2026 19:35:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28131 invoked from network); 15 May 2026 19:28:15 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778873286; cv=none;
        d=google.com; s=arc-20240605;
        b=QWQUUDHvitq4m92HTOV4wZAl7d4SO6Gx2ijcx7o+JlnmEloNSepCUAh4oG+L7c7CYx
         WBeHIUNJxSICyacfhhDpDVMwA2HHW6yqm9+nm49kDlZri5VI83d96OZve4nVhxd+iRMB
         Wyb+/ZB6nJ+hetFSKkGMByXRtwq8K/fVOf0La2UYsILaI3AENe+28+60m18nQ4uHP2zI
         uey1grdJIuvPwparfhTdKjNGEI98V9CeWZCZwOgbbW2dvFkceCe2C64PNrpczDT85kkI
         rPEqJ/15RKuOpEYRqbAgM6+q/A4/4/PLIAFoi+JiqhiI9oq7BFgdYyBEqUV6j/MeYT70
         6VhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=/StW6hE3b/fXneNvW/Glryiyy+MbeozXDANuPF+c6Bs=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=hVygQGF3zb7U2AeWs+v5AWfufwonwB8e2mu5U69pMB1Q+4bWeZY0Zy9+35xogkZGod
         3cWGsEPLKLwHZ1WzWSm5/2W/BlaaxJ1OilSE/2blUIgMgIXaUtYBoFiALQUiT/kcU4PP
         ZBg0sO84aUIWwvkkCcDViw5YA5Cdi0bi0LT32JsRUyEsSpkIdVAszlfd1m9o3P/Om0yd
         g/b+XwuTkgPUUv08nzonJVseHMo6S10gOvnZqI/OkxuvfrYCZ1hDKMvHaeV1pgJInFtF
         yxVaZOf7ZmiWCs4EbOKzApu4Hn3K0mQd8QEWOTQdK5Cn/hUOcn7XQU1znq3EkwH0WS7W
         Tn8g==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778873286; x=1779478086; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/StW6hE3b/fXneNvW/Glryiyy+MbeozXDANuPF+c6Bs=;
        b=P+VLmrBh19jyMFYSHoPB3xm/brUp9PPScWouqI7NPFdHaMJtSeCliYm341jGbpvas4
         AjeueOAzzSCztc8xirqviRsgMaZ1a9kA/8/S+ivGTwWkIufacMgoqmI368/9UmnMuowB
         JcooQPK+Qj7Bqe4Xuc1NbU0/50H/aTgMvsi0a9aM8OXm3aB17PBRVG3k61HgAJWYAOgo
         m4XWcQOU4LBX4p5W1q/hTLDsJCUxndcUZXX1iih4khFJl1GdL3HOHiHiAsw7C7YreX8t
         99kSLqWb/4j1WZ7YWhlIKwQgIxkdgn7JZT5rNfH8rMpDv+KWHxWyFCsyy11NUuApM6IA
         YbpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778873286; x=1779478086;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/StW6hE3b/fXneNvW/Glryiyy+MbeozXDANuPF+c6Bs=;
        b=pHrQ2OofsBiW5VQyUL2lC78Wgqj4UwtGd+1Kq9pWA/gzp0hP8Ad49Sd5ESIT4XBgCv
         +HaP8VJUcv9qiQvxprt+iPOi+xqg28LyWEXN/82CXguyL6ZQGW/NgEHDIRvF75QWo1+M
         5swmDwxJZo1SMYW7hCdexrXYAQpbBOHm8Do4HAEM3rg3JENH+642Zw5dSuhjh3V7UWev
         GLw7bBMCV7RM1yIL3xfmpORftHxr6CujgsRkrQiW+pZN+St4jJFKs9b8n3nDWA87YoZO
         XYhprYDBT6UoU3c3VRQbzeQSnOkKEwZtZMTXyJ6Vi1YVakvmMRVoPdMS39JX6kiVvXV+
         UvQQ==
X-Gm-Message-State: AOJu0YyvgIqmAWkiNPp1GeW1/2ztI4n1nRxKh1WTaC3UWjmIJJlUU78B
	ww8q1313erE1kLPvUC3pki1IBdZw2p+FvZXydn8B/natKTrZq63B/N9JXj7vQwfeuKrPrJoMnl9
	k2lIzgnT/a9I77sb/XO6RriqQ3oFGdvpTpFN/
X-Gm-Gg: Acq92OHpnpOZAj/iWYCIVEm0+NFTRODOBzJ/u2Jga/u1ONK+6HqlP7Qg+i3QtmGZcIt
	G6Q4wg0EuoqR07bH7Mvk8HrEG70rRYdrpoWasU6bEg33Q9B9mlcpFyZaH42eknMRIN6y8rHmxAm
	oT6wo6IeL6O6WZrRkoXtwgnYm/OuVB3E7t6sohYjv3KUaS2IDHATax2vgbMzhIw7Z8gs7bVaYZ5
	l3rrQ0yCn/SEbwkZVNyqbrO+rA5Yx6ujbgluTOUVmh7P/SXoaat2T5u+V6gmSpX2GGK/IHSuHUB
	EGpFxWGVvJjs9nCoFHxP7j+dFT9CM8zYFj+VOHIPytzBVNtyBGBB9HwDvUvPFxSMKiVjVOqwdHZ
	8CpV6SqWqXSwFnHUH/km6opQ=
X-Received: by 2002:a05:6820:62a:b0:696:15bf:ca5f with SMTP id
 006d021491bc7-69c9430100cmr3495147eaf.19.1778873285759; Fri, 15 May 2026
 12:28:05 -0700 (PDT)
MIME-Version: 1.0
From: Cosmin Truta <ctruta@gmail.com>
Date: Fri, 15 May 2026 22:27:54 +0300
X-Gm-Features: AVHnY4KuzYbAQW0RTSjsXwEeD-cR2pWfINH6JwRaO3s5m5fFhFDYDw-ctqIswwI
Message-ID: <CAAoVtZwu1t4kjdLnVcSJ5gjOmpb+DW+Q4_pWiLJ+ag4uevwjFA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] libpng-apng: Chunk-smuggling vulnerability in push-mode APNG parser: CVE-2026-40930

Hello, everyone,

This is an out-of-band notice. Unlike previous libpng announcements,
this one doesn't coincide with a libpng release, and the disclosure
cadence differs from the usual coordinated pattern:

- The fix landed on the libpng18 development branch (commit
  faf0692468) approximately one month before this announcement.
  libpng 1.8.0 is in late beta with no tagged release yet, so
  there is no upstream release version with which to align the
  disclosure. Downstream consumers building directly from the
  libpng18 branch have had the fix available since it landed.
- The vulnerable code originates in the third-party libpng-apng
  patch, which is not under upstream libpng control. The patch
  is applied downstream by Firefox and Thunderbird, as well as
  several Linux distributions (Gentoo and LFS/BLFS among others).
  The libpng-apng maintainer, Daisuke Nishikawa, has since released
  fixed revisions (libpng-1.6.57-apng.patch v2 and
  libpng-1.6.58-apng.patch); downstream consumers should either
  update to those (verifying that both upstream commits are
  included), or backport the upstream commits themselves (see
  "Related fix" below).

=== CVE-2026-40930 ===

Chunk smuggling in the push-mode APNG parser via unconsumed
chunk body

Security advisory:
https://github.com/pnggroup/libpng/security/advisories/GHSA-c4v6-gxrq-6g2x

Fix on libpng18:
https://github.com/pnggroup/libpng/commit/faf06924688b62d7c1654b5ceddedbde66ffadb4

CVSS 3.1: 5.4 (Medium); CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:L/A:L
CWE: CWE-436 (Interpretation Conflict)
Affected (upstream): libpng 1.8.0 development branch (libpng18)
Affected (downstream): libpng-1.6.49-apng.patch through
  libpng-1.6.57-apng.patch (original v1) on SourceForge
Not affected: upstream libpng 1.6.x releases (no APNG support)
Fixed (upstream): libpng18 at commit faf0692468
Fixed (downstream): libpng-1.6.57-apng.patch v2 and
  libpng-1.6.58-apng.patch on SourceForge, released by the
  libpng-apng maintainer
Build-time mitigation: building libpng 1.8 with APNG disabled
  (i.e., without PNG_APNG_SUPPORTED), or building libpng 1.6
  without the libpng-apng patch, removes the vulnerable code.
  No runtime workaround exists for push-mode applications.

Three inter-frame chunk discard paths in the push-mode APNG parser
clear the chunk-header flag without consuming the chunk body and
CRC, allowing attacker-controlled bytes inside a discarded chunk
to be reinterpreted as a fresh chunk header on the next call to
png_process_data.

Impact depends on the application's CRC handling:

- Default configuration: libpng calls png_error on the resulting
  CRC mismatch or APNG sequence-number violation, and the image
  fails to load. Impact is denial of service.
- Relaxed configuration (png_set_crc_action with PNG_CRC_QUIET_USE
  or PNG_CRC_WARN_USE): smuggled bytes reach the APNG sequence
  counter and the zlib decompressor, and are decoded as frame
  pixel data. No code execution: zlib output writes into a
  pre-allocated row buffer. A crafted fake length exceeding the
  carrier chunk body causes cascading desynchronization beyond
  the carrier.

Sequential-mode reading (png_read_info / png_read_row /
png_read_end) is not affected. Only push-mode (png_process_data)
is vulnerable, and the Gecko-based browsers (for example) use it.

=== Related fix ===

A sibling defect in the same push-mode fdAT path was reported
separately in GitHub issue pnggroup/libpng#854 and fixed on the
libpng18 branch in commit 9ec49c2d56. It is distinct from
CVE-2026-40930 and is not covered by the advisory above.
Downstream consumers of libpng-apng should apply both commits to
fully remediate the push-mode fdAT path. Those updating to the
fixed libpng-apng revisions instead should verify that both commits
are included; otherwise, 9ec49c2d56 must be backported separately.

Related fix on libpng18:
https://github.com/pnggroup/libpng/commit/9ec49c2d56cec19107ddc458b648ce224c9697b3

Credits:
- Seung Min Shin (CVE-2026-40930 discovery)
- Ryo Shimada (GitHub issue pnggroup/libpng#854)

---
Cosmin Truta
libpng maintainer
