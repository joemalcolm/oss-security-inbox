X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1618" "Tuesday" "1" "December" "2020" "01:50:50" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" "<CAFcO6XMCxbHjiHFWUoFW5jcwfOrgz3atyW_MfHaQ4Akv6XF4jw@mail.gmail.com>" "56" "[oss-security] CVE-2020-27815 Linux kernel: jfs: array-index-out-of-bounds in dbAdjTree" nil nil nil "12" "2020113017:50:50" "[oss-security] CVE-2020-27815 Linux kernel: jfs: array-index-out-of-bounds in dbAdjTree" (number mark "U       butterflyhua Dec  1   56/1618  " thread-indent "\"[oss-security] CVE-2020-27815 Linux kernel: jfs: array-index-out-of-bounds in dbAdjTree\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-27815 Linux kernel: jfs: array-index-out-of-bounds in dbAdjTree" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9587 invoked by uid 550); 30 Nov 2020 18:08:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15929 invoked from network); 30 Nov 2020 17:51:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=8mQt8vNmnwwV9e4zhvkB18ZNgD0hm0pKbdxy6jwYpmk=;
        b=K4C4hcPsnoy7+0JgB5PmDNGvHblPcvJ3d926wkUnl6X86TFc7DyQUjrz++lTSP6fbd
         y8tWBefKM5oRAxpkDpoGh4iFxQBzTCYgMTRP+2v5s3H29oPlf4XS4AuZYNFmicOkK1c6
         3TlB5UqhFzzNzh1JaKpIKbv0XbxPzT/kuld25PLBelvFHEUJEkLYIwq6Boy8Q3P9PWl4
         ni+zoTGFVq8MPrtsAROJ+DQ8kCDV0Uiilj2TaWgtFxXN7GfhGlEG+Il7t0QLcFTJ03Fr
         LFq5AgKMmchc7jZuukGew2GDlnmFYf9Cg10A6VCdtDaIn+w5AOIRFFkJotL4FVSqJSgK
         KP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8mQt8vNmnwwV9e4zhvkB18ZNgD0hm0pKbdxy6jwYpmk=;
        b=No9iNgBIWfTNUZ5CmbS2yPIGRHXhcv3QhY00D00DIOvZRnMzTgwgYRb+QGMSbGFQno
         KY6kLxqmB4TA/r+r71c5Y8Rmcfyk+UfAJSrGEwQL+QkKcuyQ3liaOsCZq/oFNRVoyhPh
         BeoLLasKstkw7S5qGIPSX5etfMUD/cQ4aM6nBmhSejq37x2cthkLaQOZmm6CLX8ozIN6
         ackTSaiP0b2+/reaiz6E3aJtzaQ2KVNiHV3VVwoguOoeTpYcvfTJnZqFKAx8RTrXDHZ1
         kFdNSFcQzTYfprxIx6cMv0Jczb5iYqqsdrPT2rTtGfF6nPd5CjCxaYVnV+/qB1BlCtx0
         ZmRQ==
X-Gm-Message-State: AOAM53076wpGPfnxr1YjXJOu2hrfIx9+JmUJJnRiD8mdloHxB/ne4u/j
	cnfQvu46HI0H3egE8M696sgoK3jB/wjGVTBVg7TTUA2utC7ruw==
X-Google-Smtp-Source: ABdhPJxVN36EWruSbhfaGhFIAGYXz7D1wcYeEXOQ36UwL9vRHyEsxRh+3uKkldyESXsYN257LFqD6Proz2c9E65cnog=
X-Received: by 2002:a25:ac92:: with SMTP id x18mr39147222ybi.484.1606758660244;
 Mon, 30 Nov 2020 09:51:00 -0800 (PST)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Tue, 1 Dec 2020 01:50:50 +0800
Message-ID: <CAFcO6XMCxbHjiHFWUoFW5jcwfOrgz3atyW_MfHaQ4Akv6XF4jw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-27815 Linux kernel: jfs: array-index-out-of-bounds
 in dbAdjTree

Hello,

I report an array-index-out-of-bounds bugs in fs/jfs/jfs_dmap.c in
dbAdjTree and reproduce it in Linux kernel 5.9.6 version.

Description:

In the Linux kernel through 5.9.6, there is a
array-index-out-of-bounds in fs/jfs/jfs_dmap.c in dbAdjTree and it may
cause out of bounds read and Denial of Service.

Root Cause:

the dmtree_t is that
 typedef union dmtree {
 struct dmaptree t1;
 struct dmapctl t2;
} dmtree_t;

 the dmaptree is that
  struct dmaptree {
  __le32 nleafs; /* 4: number of tree leafs */
  __le32 l2nleafs; /* 4: l2 number of tree leafs */
  __le32 leafidx; /* 4: index of first tree leaf */
  __le32 height; /* 4: height of the tree */
  s8 budmin; /* 1: min l2 tree leaf value to combine */
  s8 stree[TREESIZE]; /* TREESIZE: tree */
  u8 pad[2]; /* 2: pad to word boundary */
 };the TREESIZE is totally 341.

the dmapctl is that:
struct dmapctl {
__le32 nleafs; /* 4: number of tree leafs */
__le32 l2nleafs; /* 4: l2 number of tree leafs */
__le32 leafidx; /* 4: index of the first tree leaf */
__le32 height; /* 4: height of tree */
s8 budmin; /* 1: minimum l2 tree leaf value */
s8 stree[CTLTREESIZE]; /* CTLTREESIZE: dmapctl tree */
u8 pad[2714]; /* 2714: pad to 4096 */
}; /* - 4096 - */
the CTLTREESIZE is totally 1365.
The dmt_stree was used in dbAdjTree. Since dmt_stree can refer to the
stree in both structures dmaptree and dmapctl. the stree size is not
consistent, may it cause index out of range.

CVE assigned :
CVE-2020-27815

Patch:
It's in linux-next now, not available in upstream.

Credit:
This issue was discovered by the ADLab of venustech.

Regards.
 butt3rflyh4ck.
