X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1031" "Friday" "29" "January" "2021" "02:10:20" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" "<CAFcO6XMDdVx8uoM8-dJf=AP5t+Tva-J2sOE+gV4F11dvU99yrg@mail.gmail.com>" "31" "[oss-security] Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq" nil nil nil "1" "2021012818:10:20" "[oss-security] Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq" (number mark "U       butterflyhua Jan 29   31/1031  " thread-indent "\"[oss-security] Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27771 invoked by uid 550); 28 Jan 2021 19:24:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3769 invoked from network); 28 Jan 2021 18:10:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=hX2CAqsEtXAODysRG3788NbNc6Etsf6f0QhQJQdOTuY=;
        b=qyEPbsNDlfKXx4RknC4P2ofLnS4faoliICgw3CDIMyfqRw2lDAtvaCLmzlwlu5Xhaw
         buo5HkPNHAbGqvGrpe0GHoJ9iVhIeJPqRPJwnOzhC6iswBzxNz2pzNE7z9VY8s+9sXTL
         oK1PpjZ/rLbuzo7R7BwTFdxz5HvHv8Yq4pfYxERSEb+if+b+oVAiS4kZI89JO7zU4sjQ
         rFXwdi5rAe6Dj+9YEGiRWhk6NDiiVkRulzjSPdu9ByxaUvd6mNwKMFx/Mz+wsEHYpbjd
         uZAKkVJ4/9AXUTVke/QNVDfBNuZfTfY3u52RA15juinruudJsvE5zowxKyX/dwZS+RaS
         CVgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hX2CAqsEtXAODysRG3788NbNc6Etsf6f0QhQJQdOTuY=;
        b=cv5ZtaDqPVxK1uXDhhoCTVFqPkKZ+MmHEvA543YClB1RkzKJ0/qhdmFTrFSBdw3l9s
         J40KIyfBW/+SPgVCrPmpuIZtIClU3d5IgH5zOE6vcJwceZV6LVZx2cpbuVTwNBQ6jyFI
         HeBfc3FmL53/E/uk+z/DO6gclz0W9KH1Tk379XN/vIjmEK4+cyoSPum6K25hGGT5r00s
         k54RrI1+/e5h5acKaz16qFAP5U7RKehx5JWchWaIJQrkWm/7CnmdQvOt662RHlKaR5B0
         vxA+zOp9ATW/Lp5aLYWG7tpNOdUv3EfuDvJgSF7f2j7eY7UsArb8bK2O3ZalE14CpVnS
         yqsA==
X-Gm-Message-State: AOAM5311pEmteL9jTP/mRenXBuCDyBf82a4e/7fzo3pYwZiQc9ix2aPj
	sybUV+LUE0DmDTeRc/BFvV1YvudoFU0gG7OnnAtGR+KUt1A=
X-Google-Smtp-Source: ABdhPJxG4xlkwCj45RNi2pXJZe8FISsct918c50LCkkvstyE4AU/WeCIjwvAAYyg8KxJNMfQ2rZrw+g6M7StfZMB2qI=
X-Received: by 2002:a25:3bd2:: with SMTP id i201mr615854yba.302.1611857431060;
 Thu, 28 Jan 2021 10:10:31 -0800 (PST)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Fri, 29 Jan 2021 02:10:20 +0800
Message-ID: <CAFcO6XMDdVx8uoM8-dJf=AP5t+Tva-J2sOE+gV4F11dvU99yrg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq

Hi, I reported a use-after-free Read bug in ndb_queue_rq() in
drivers/block/nbd.c and reproduced in linux-5.11.0-rc4+ too.

Root Cause:

There is a race condition in nbd ioctl.
NBD_SET_SIZE_BLOCKS ioctl will call nbd_size_set(), it will change the
block size.
NBD_SET_SOCK ioctl will call nbd_add_socket() and it will invoke
krealloc() to update a block, free and realloc a new one.
But nbd_queue_rq() is in runtime. and calls nbd_handle_cmd(), there
will use config->sock. there accesses to config->socks without any locking.

Patch for this issue:
https://lore.kernel.org/linux-block/24dff677353e2e30a71d8b66c4dffdbdf77c4dbd.1611595239.git.josef@toxicpanda.com/

CVE assigned:
not assigned.

Timeline:
*2021/1/25  - Vulnerability reported to security@kernel.org.
*2020/1/26  - Vulnerability confirmed and patched.
*2020/1/28 - Vulnerability reported to linux-distros@vs.openwall.org.
*2021/1/29 - Opened on oss-security@lists.openwall.com.

Credit:
This issue was discovered by the ADLab of venustech.


Regards,
 butt3rflyh4ck.
