X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1171" "Monday" "10" "January" "2022" "17:49:47" "+0530" "Rohit Keshri" "rkeshri@redhat.com" nil "43" "[oss-security] CVE-2021-4155 kernel: xfs: raw block device data leak in ioctl(XFS_IOC_ALLOCSP)" nil nil nil "1" nil nil (number mark "U       rkeshri@redh Jan 10   43/1171  " thread-indent "\"[oss-security] CVE-2021-4155 kernel: xfs: raw block device data leak in ioctl(XFS_IOC_ALLOCSP)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-4155 kernel: xfs: raw block device data leak in ioctl(XFS_IOC_ALLOCSP)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30177 invoked by uid 550); 10 Jan 2022 12:28:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26409 invoked from network); 10 Jan 2022 12:20:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641817202;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=bRx4yF2qtYdZbQNgQ0IyWDjROKyuA6FxpKZPftGiZRQ=;
	b=JL2ko4CgpRaF9xE5cR/oRet08QdDAluj3IxOj3i/9pCaCNrho8Z0SP2+0v6UhW1z7qxMh0
	trDGsgdmFOV5JYsDhIZTTutD5HhTfxk4wdPiQqWb0AF5MLzk4KRaP2v7P/toS75H3FqT35
	SeVrAAv959p+oEqk+2CzBFAs1tbnrs4=
X-MC-Unique: _vAKjHzBOb-WVWnDS_XfHA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bRx4yF2qtYdZbQNgQ0IyWDjROKyuA6FxpKZPftGiZRQ=;
        b=XB1Dar9qfzYRzOi9A2UAbgn4OC6bSh8M9pENgxz3xAwUA/IlBrHjvIgjnuJnSuZCxc
         i1O0owpa3XQWuzL4iKDghFf+cyw1S7AtyKBzF/KxikPutmMT3GesR8onGZNFdBU9r25F
         CxQ31CB/drkFqm5N1akYDiiEiCoDSnl6V/PXVRLs7EpnNjWpqSTsVjVrM6bsslBspO6F
         dNI5tUQeGgroJynRBLMdNpplBYZE9tBJGJDgPq1cufDL6ir1DTH47TJ7ia3NsxqhRWYq
         sV6Sa/tQZwoMDWEZ3v3XyhdjZEd4w8lQ67OYyWH8w3Ssuk6ppR+6WpJRuOfb1txQGJCd
         ewoQ==
X-Gm-Message-State: AOAM531y+yNNCtdCPVW7HaIZvZwRuvHg9YQgmR/85FhpPJZulybDWu59
	x4CexoXA2H8KCJ4pJ8fQ00qzGglj6uVpUTha9PCXuRngKjQbn6yHPteDwZX/KYn0drLIAhjp9Jt
	h/npPH+ni9bhsX/vI40IOxF2Apbft0DLueCEt/SGs7M9s
X-Received: by 2002:a2e:a58a:: with SMTP id m10mr53069735ljp.417.1641817198725;
        Mon, 10 Jan 2022 04:19:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwrVltJiK0H1lNoBq+PpV1i/GOF0ITKnVRukLN4jkSCxLNikSWHU0OpqVt8o1e/PJdTB2QdDZLeIcF9AAN39jI=
X-Received: by 2002:a2e:a58a:: with SMTP id m10mr53069722ljp.417.1641817198470;
 Mon, 10 Jan 2022 04:19:58 -0800 (PST)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Mon, 10 Jan 2022 17:49:47 +0530
Message-ID: <CAKx+4-rd1JnV+C-0kxq4NWn1N-BPOxZpE29iYsXk8Y6MqbVkAw@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000e6be6105d5395abf"
Subject: [oss-security] CVE-2021-4155 kernel: xfs: raw block device data leak
 in ioctl(XFS_IOC_ALLOCSP)

--000000000000e6be6105d5395abf
Content-Type: text/plain; charset="UTF-8"

Hello,

A data leak flaw was found in the way XFS_IOC_ALLOCSP IOCTL in the XFS
filesystem allowed for a size increase of files with unaligned size. A
local attacker could use this flaw to leak data on the XFS filesystem
otherwise not accessible to them.

#Description

(Kirill reported)
"the scenario is:

1)truncate() file by unaligned @size;
2)ioctl(XFS_IOC_ALLOCSP) to increase the file size up to 4096.

then xfs_ioc_space()->xfs_vn_setattr_size() never zeros [round_down(@size,
4096), @size]
and this raw block device data leaks away to user."

#Fix
The patch for this issue:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=983d8e60f50806f90534cc5373d0ce867e5aaf79

#CVE
Red Hat has assigned CVE-2021-4155 to this issue.
https://access.redhat.com/security/cve/CVE-2021-4155
https://bugzilla.redhat.com/show_bug.cgi?id=2034813

#Credit
Kirill Tkhai (Virtuozzo Kernel team)

Thanks,
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--000000000000e6be6105d5395abf--

