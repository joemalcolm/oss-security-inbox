X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1220" "Wednesday" "25" "August" "2021" "10:49:04" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "36" "[oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug in btrfs_rm_device in fs/btrfs/volumes.c" nil nil nil "8" nil nil (number mark "U       butterflyhua Aug 25   36/1220  " thread-indent "\"[oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug in btrfs_rm_device in fs/btrfs/volumes.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug in btrfs_rm_device in fs/btrfs/volumes.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27865 invoked by uid 550); 25 Aug 2021 08:15:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1043 invoked from network); 25 Aug 2021 02:49:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=V04UcMDq90anfFIOtyfOqKKd3rkIbEnJYzjflWOco9U=;
        b=Zl9J13/1spBx7W2rEroebZoaaPYmkFCqeMboYP9I7N8HiNd+wXacsUPHB6e3T54xyT
         3c86OxEUaFEhuHzwQKzvQzh+iYxn4QDax+EFFijJvisHDdePlu6G8qqhBEFk9WnGp4QX
         8QIGc0O6vyboMJxCQpjtBnsZv+tseOXNs702WGlDwld5cbqbWYlRk3bjmCKI4mZ157Q0
         fGAH/F3XSnc7JTFBHRpdepKE5TPdmhe7CUUyh2TpaZXt1fYPl/yxjyxcQsespVcjHkWu
         xBJQJ39M8U1ON9tpqsTr87wzIiMtzl5DKtGWjm2zIDtGPdtqjlsVsLQHQnmxV4ShRI34
         xgNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=V04UcMDq90anfFIOtyfOqKKd3rkIbEnJYzjflWOco9U=;
        b=YaBg5buxxpzIPW6Zd9GOu7GWYFzbq1roPTbSYpeipGFQBEMwgnYpD2w+lTB2ONci94
         f5JjXg+DmRDlRlwVi00aeH2x4Fru1gZFd8hopC4sgIIiMsl4y7OgIdiMIiE2UqMfnjpH
         BMNqppuDY9iBl+i1x6Le7dh/AfbI6+dD3W/CTSoomw2l7Xno09BrhC7mipbroaTPkMLw
         Y5zJQJj2nbVNC2vUT4YrnY/e4Zk5XZjpBKBLrlV64kktzg0DcnztxkKMXirK+MoL1zva
         dwhdVELMHsBQ/meWu7pltXxMGGqf5r8fvM4sfzvCs7WydA+LjKjPbujdEpZj5H6R8u6j
         X+YQ==
X-Gm-Message-State: AOAM533ekRP+dab+WNd92kvxJ0qcqv/pv3VsglZE6++KbNzVXM1GjqGA
	85owW2QFtQvABsgmiR7+Rs7deHzO+yJzhidbuVVArDhKYRQMKg==
X-Google-Smtp-Source: ABdhPJwSQYxpMq8+f+/kut1u+1pwet01L6jq9vmm9Vs0ly0zQesVWIAWOxqXsaS18wUD2XlSry78qiTurkCbb3eetis=
X-Received: by 2002:a25:2a90:: with SMTP id q138mr5563940ybq.379.1629859755598;
 Tue, 24 Aug 2021 19:49:15 -0700 (PDT)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Wed, 25 Aug 2021 10:49:04 +0800
Message-ID: <CAFcO6XP=t-BCX=NP=B6qH5WVQ1jc=pOS24d0d=6MS2dm66A_mQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug in
 btrfs_rm_device in fs/btrfs/volumes.c

Hello, there is a null pointer dereference bug in the btrfs_rm_device
function in fs/btrfs/volumes.c in linux-5.14.0-rc4+ and reproduce too.
Fortunately, triggering the bug requires =E2=80=98CAP_SYS_ADMIN=E2=80=99.

#Root Cause
When a user invokes a BTRFS_IOC_RM_DEV_V2 ioctl to remove a non-exist
volume device,
it would call btrfs_ioctl_rm_dev_v2 function to implement. And
btrfs_ioctl_rm_dev_v2 would call btrfs_rm_device,
if the id of the volume device is illegal, it would trigger a
null-ptr-deref bug to cause DoS.

# Analyse
https://lore.kernel.org/linux-btrfs/CAFcO6XO5TC5sEo-C9JGC75JkNAzkOSSLA3a=3D=
bwQqXFFbRTZ7Gw@mail.gmail.com/T/#md4b850f33616b7364f86e6fed144abc925f3669c

#Fix
the patch for this issue, not available upstream now.
https://lore.kernel.org/linux-btrfs/20210806102415.304717-1-wqu@suse.com/T/=
#u


#Timeline
*2021/8/6 - Vulnerability reported to maintainer and CC to
linux-btrfs@vger.kernel.org.
*2021/8/6 - Vulnerability confirmed and patched.
*2021/8/10 - Vulnerability reported to secalert@redhat.com.
*2021/8/25 - Opened on oss-security@lists.openwall.com.

#Credit
the issue is reported by Active Defense Lab of Venustech.

Regards,
 butt3rflyh4ck.
--=20
Active Defense Lab of Venustech
