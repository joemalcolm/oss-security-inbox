X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1579" "Saturday" "18" "September" "2021" "14:31:00" "-0500" "Valentina Palmiotti" "chompie@graplsecurity.com" nil "39" "[oss-security] Linux Kernel: Exploitable vulnerability in io_uring" nil nil nil "9" nil nil (number mark "U       chompie@grap Sep 18   39/1579  " thread-indent "\"[oss-security] Linux Kernel: Exploitable vulnerability in io_uring\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux Kernel: Exploitable vulnerability in io_uring" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26304 invoked by uid 550); 18 Sep 2021 19:44:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20183 invoked from network); 18 Sep 2021 19:31:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=graplsecurity-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=MjEeS5nZvhdF4seWZkGslHZC2FQWimvLWP+PZupl0W8=;
        b=qR+dezl/HpL6njPIxWoy1PHhB7BfR7RLTDM9/a8x1jIzrolTjKdNv8uocEw7IPLmSw
         d/miRYg4Oo6xMmkjym0cuQc00Y37CWGNFJVnCUhvBZgdqxppoz1jJZqcJzzR0PKWf+lK
         /OFsfcOV/pVijB6azZj0Y8vVITvi1iOuszNBPAGNX+WdLVwxklbPODjk3fq/n3RvMpL8
         mn++u5ZRutnu7wipFCMYpiTROVviNwToYnPVwCkOInS1sHRRGCGiEkAD2PnvTXLEJKbz
         ub1jzmuk8nXYd50z+Wg3SLOqTxfARx9jKjLhcivYBaGZsRNhisjARxKdt+DOxC264XGy
         lFJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MjEeS5nZvhdF4seWZkGslHZC2FQWimvLWP+PZupl0W8=;
        b=j/okvSObxGK71e7Xyxtqn5pOxzTIbVuaeUPArZHC1H/kfnwvd3gKf5SLxTjlloKPvE
         /I2a5AGPCa1RwirSCjsnFSmbRAWX/NgofgnFfPxe8poVRZFPSikPboDGbpbI/FpU2qTf
         9VgfAvYIdxeEtrV4yAhCQnGGUsiG1YHdjgo5L0enrzL6mruvJuI+c6pPtZgrnF8JYdth
         ef1tHgWYfT4RLl/rcqXZMtCIXEfR8uhOA4pmdh1zpkcxKb9X0kCKrNhN1L/YTTHghWmf
         /PXCNUj9d2d6XNkUbj5fZv3g5eddZIrCJzesKXbYYolyB8EHQrlAUN370Q2JgIyoUf7K
         wTyQ==
X-Gm-Message-State: AOAM5304WXxipVYOZBeEf97fXD80joJKM5Cu+iV5WuCNTSK6c53FjFEe
	fi/CduYt5YdAULOLUz9ioT23aMj/8Aq+w4MqlVkD8xJCbWT7ig==
X-Google-Smtp-Source: ABdhPJxvvLd5v/3Qhx97NNwZ2NLYL/XU+mkWSMUGcEmiMyHn8FFaIKtNuXK1AcG0i0iEd7iKtIOAEJmqzKxoZaSXEug=
X-Received: by 2002:a05:6512:3d12:: with SMTP id d18mr13521228lfv.542.1631993471652;
 Sat, 18 Sep 2021 12:31:11 -0700 (PDT)
MIME-Version: 1.0
From: Valentina Palmiotti <chompie@graplsecurity.com>
Date: Sat, 18 Sep 2021 14:31:00 -0500
Message-ID: <CALoOwW45LdmFC6nmi8H71FVLmaWZh1xTSA74CAZTfN3r4cwZGQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000276ce105cc4a1713"
Subject: [oss-security] Linux Kernel: Exploitable vulnerability in io_uring

--000000000000276ce105cc4a1713
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm writing to disclose a Linux Kernel vulnerability I found in the
io_uring subsystem.

The vulnerability is in fs/io_uring.c at loop_rw_iter. It is a controllable
kernel buffer free.

Most files implement the file op function read_iter. However, if they don't
(such as a procfs file like /proc/<pid>/maps), loop_rw_iter is called to
manually perform the iterative read/write of a file. The pointer
in req->rw.addr is incremented by the size of the read/write after each
segment. In normal cases, req->rw.addr contains a pointer to a userspace
buffer to read/write from. However, a user can use the
IORING_OP_PROVIDE_BUFFERS command to preselect buffers for I/O operations.
If this is the case, req->rw.addr contains a pointer to a kernel buffer
(io_buffer structure). This buffer is later freed in io_put_kbuf after the
read/write request completes.

This gives the ability to free adjacent buffers at a controllable offset.
It is accessible from unprivileged, and straight forward to exploit for
local privilege escalation. I plan to share the specifics for exploitation
in the future.

I disclosed the vulnerability to security () kernel org, and the patch has
been merged into the mainline kernel. It has also been backported into the
affected stable trees:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=16c8d2df7ec0eed31b7d3b61cb13206a7fb930cc

CVE-2021-41073 has been reserved by MITRE for this vulnerability

Best,

Valentina

--000000000000276ce105cc4a1713--
