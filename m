X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["785" "Monday" "29" "March" "2021" "00:00:30" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "24" "[oss-security] Linux kernel: f2fs: out-of-bounds memory access bug" nil nil nil "3" nil nil (number mark "U       butterflyhua Mar 29   24/785   " thread-indent "\"[oss-security] Linux kernel: f2fs: out-of-bounds memory access bug\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: f2fs: out-of-bounds memory access bug" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1068 invoked by uid 550); 28 Mar 2021 16:20:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18103 invoked from network); 28 Mar 2021 16:00:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=cUQp+i7wmm3IjhbxfaVKwNd+Ihp/8HQ9GMpbF3MDNtU=;
        b=NL0mKMo4QKHF7B2O4TPMm72uGp9hMP4aEXmLp95fXfL6mctCPPOWOZ6G0iB+EnwKpm
         sqtGnu+LlYAA9B7YS8lCkQqHYY+oUtwkRC2V/eNvYg/mfKHO9nkKke/krqVISoP/tnfA
         yygkuHqeuMinH3/qTLb/MHyA+iqV6Rdt2P9biwxUjrU2lTxalCHD63Ydwmi1VsEkl1Vi
         8+3XFmuvqN9ilq4zQ3Ky2sYBDBfXhY14H51Cl/4eNmTHbmstj9mqKKXfZE2+ZeY5cLFi
         AeymmZt7Mj82Vo14Ii6yQSVa8aHPWozR9Dp61BAh2O4ly5wCKPqjSgNcmd1xcm6hY3IY
         lqxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=cUQp+i7wmm3IjhbxfaVKwNd+Ihp/8HQ9GMpbF3MDNtU=;
        b=im6l5ttTJQfRu2vmaTxS7Qo5isYPvhbRgKK3LeRG7m4onq11q4C0E3pF+Zqcl3kuJM
         nPLcpi946TPNclGsYcj4Y1bJ/JoUJji1jW/TLYz8LyBcJDeChhGGSjW0R5xP1jzv7L5C
         b4/kdM1WkaUqzpdn+ss6O6PdLVjPLS6YiF0GpSF+xRanTi+nrx2FhocMg3VUhND5ewrl
         mnfHcw+N1VfkSERnVv1AZLVbTxilUJr8pNIuNdEMOpSEqNNDL+awjJhJWQAjGfzj1j1u
         GaZNdaui2alZ9+DQCmksgtg6HgWdRDsthDMWcY41N7Oqy5Gn92J6ThT8HxFtYZIDLYYG
         fwhg==
X-Gm-Message-State: AOAM532bF7CkH9R6CEIDBQgfTENtMa4HkO2rt5rMI20R9mhuAcYt+Q7B
	WLy9yQtnASEpShT4l6XDX3wWO5h8nNVXA5Hf4sHiWuQgNHMV6w==
X-Google-Smtp-Source: ABdhPJwXO37Yzcathb8cr+BTCnJfTc+8QrLQ0+HolYSwFrKFfcCypyH5vtrf5mo1X2gSbO+eqJoPI8UhPhubykueapk=
X-Received: by 2002:a05:6902:6b3:: with SMTP id j19mr33247677ybt.267.1616947240866;
 Sun, 28 Mar 2021 09:00:40 -0700 (PDT)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Mon, 29 Mar 2021 00:00:30 +0800
Message-ID: <CAFcO6XO2k=X2H24tg_GTgoTQMLv=0ajAyuyeK0YKgvqiM5vPWg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: f2fs: out-of-bounds memory access bug

Hi,

I reported an out of bounds memory access bug in get_next_net_page()
in fs/f2fs/node.c and reproduce in 5.12.0-rc3. Now the patch is out
and tested it in 5.12.0-rc4.

Root Cause:
 the f2fs_flush_nat_entries()  function is called during the
checkpointing process,
when it flush dirty nats in nat entry sets, it will call
__flush_nat_entry_set(), but before call it,the legality of nids is
not correctly tested. If the nids is out of range, may access
out-of-bounds memory.

Some details and Patch for this issue:
https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg2520013.html
Now the patch is not available in upstream, CVE is not assigned.

Now announced on oss-security@lists.openwl.com.

This issue was discovered by the ADLab of venustech.

Regards,
 butt3rflyh4ck.
