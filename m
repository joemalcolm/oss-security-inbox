X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["649" "Wednesday" "16" "December" "2020" "18:05:58" "+0100" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjXKseHt=cdka4K5+hQCXTD88=uyKxYJ-UQW6+ZoczTp2A@mail.gmail.com>" "21" "[oss-security] CVE-2020-27821 QEMU: heap buffer overflow in msix_table_mmio_write() in hw/pci/msix.c" nil nil nil "12" "2020121617:05:58" "[oss-security] CVE-2020-27821 QEMU: heap buffer overflow in msix_table_mmio_write() in hw/pci/msix.c" (number mark "U       mcascell@red Dec 16   21/649   " thread-indent "\"[oss-security] CVE-2020-27821 QEMU: heap buffer overflow in msix_table_mmio_write() in hw/pci/msix.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-27821 QEMU: heap buffer overflow in msix_table_mmio_write() in hw/pci/msix.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5243 invoked by uid 550); 16 Dec 2020 19:41:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30418 invoked from network); 16 Dec 2020 17:06:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608138374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=njZVqXMYIOq6dE1ml283FXbkSC6mvDd8HhTcnoBFKic=;
	b=YmfgkIt/5wNwT869aHi6CiT8qNFUTniRqj7e36lj5RDSRtOi5r3D6/+wGZqh2UGV5NGXHC
	xEB11nkA8FyfBg22j5wOp8HG/vmefiq+kspen1e8wvp81w3+EqDyd+/1prZQ8sMDEbW8z6
	WGpAMA3/1CmMCie2mbKI17wswfmJ3gk=
X-MC-Unique: 2vJVhJgFM-GvVuQeefycdw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=njZVqXMYIOq6dE1ml283FXbkSC6mvDd8HhTcnoBFKic=;
        b=szC88SqhFAsiTWbaTYzDqwegp/KPnEBIyDq8sIqLaiKgGx5NYDwFaanv0wyVH38oJj
         3al1/VtqfzmjN9eKusGK0X2+n4oPdE8dH24sxYjRW+3eLxAsuiao+JTUMeBSZXINTwkd
         WSdTpCdRD8twpMftA/3V49ZpYlTAB9EA7t2a5htVxRGklKGyITqHhYYerV4piwyU6sG9
         91qizoazaxmFyKMKKY3zcJm7X9Cyja9l6r/KL9ym61/mRWHHNb+vEhGLXDuPDKkOQ3YH
         8k01VnIU/WkAGWhOEWvDCGTtUrgHrPztxC0B8KU83AmyI8qUD2jRcen1hFqxKzpk4tMG
         OiZQ==
X-Gm-Message-State: AOAM5313QdX8Mx5agQ1s4SaStpsEMEERC8EGe5ds7QTT2EVcdgWvO24U
	HkeX1gS7ITNlE6q4kWc6LmazF1p2ZwbKbkuDINq6oQU946vFleAGNFWTFfVdRTbbQ/rkMUqYbCy
	HxrubUsZzoHn39RFo+egOLaiMaqgT2AcsLd8PMUJf6lNO
X-Received: by 2002:a17:906:2818:: with SMTP id r24mr30575688ejc.100.1608138369289;
        Wed, 16 Dec 2020 09:06:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxWtlA87Hd8nqAVWA9noV5zhsw1x0JmgjMbCSE+hnGXQhlkh7JAbg1HvAB5/83/iSXyWm/BbA83UGmSd0YrlVw=
X-Received: by 2002:a17:906:2818:: with SMTP id r24mr30575672ejc.100.1608138369118;
 Wed, 16 Dec 2020 09:06:09 -0800 (PST)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Wed, 16 Dec 2020 18:05:58 +0100
Message-ID: <CAA8xKjXKseHt=cdka4K5+hQCXTD88=uyKxYJ-UQW6+ZoczTp2A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Alexander Bulekov <alxndr@bu.edu>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-27821 QEMU: heap buffer overflow in
 msix_table_mmio_write() in hw/pci/msix.c

Hello,

A flaw was found in the memory management API of QEMU during the
initialization of a memory region cache. This flaw could lead to an
out-of-bounds access of the Message Signalled Interrupt (MSI-X) table
while performing MMIO operations. A privileged guest user may abuse
this issue to crash the QEMU process on the host, resulting in a
denial of service.

Upstream fix:
https://git.qemu.org/?p=qemu.git;a=commit;h=4bfb024bc76973d40a359476dc0291f46e435442

This issue was reported by Alexander Bulekov (cc'd).
CVE-2020-27821 was assigned by Red Hat Inc.

Best regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

