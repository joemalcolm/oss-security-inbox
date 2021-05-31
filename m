X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1262" "Monday" "31" "May" "2021" "18:40:04" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" nil "37" "[oss-security] QEMU: security issues in vhost-user-gpu" nil nil nil "5" nil nil (number mark "U       mcascell@red May 31   37/1262  " thread-indent "\"[oss-security] QEMU: security issues in vhost-user-gpu\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] QEMU: security issues in vhost-user-gpu" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23791 invoked by uid 550); 31 May 2021 16:40:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23773 invoked from network); 31 May 2021 16:40:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622479219;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=fkHLk5tWSgC0iPtXUOM7SX/+yeb7kamtGeKq8mm8fog=;
	b=PLpxpeTQKA1dg6V3xd1TR8MMOajLKDwCRHLgP2ayK4h8TbowvRFtp3z/lqmQVzOJswc20G
	yjOedip8IjZLP9YPR5TqAGzXFBGSdg11GRyQJCFO21glfFJcnSstd8vDHgQFgA1smcjprg
	Xc9i6aXjDx+FsPDrTxVoEklpod68LX0=
X-MC-Unique: 0_BGLqGmNMmgc3ZyyI4btg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=fkHLk5tWSgC0iPtXUOM7SX/+yeb7kamtGeKq8mm8fog=;
        b=i/deKXtL9Sug59768W6um2h3Vt0spXVBZszXHfBZZYPcND1PThDKXHQHSJRyPUsSWf
         a/W/htjCLWTznj6XpyG+Ki2rKQ295icTaC/d7SKxh14VGu/f8dJBEfaqi+Ep6wWAewFD
         +DUBKS9LWFip1TQVhBTJRLRMvWAgwAICJX6n1DIEb6exDpS0WL1ZcR/MK0KnMZ6dDN4w
         6S6rNQLYYFo4NqDXYGRG3F+mHG1waSGT+MxfVCVsAkXw95XDjK/zerIs+ASErcnvbXuD
         +ZiL7QM0eQKgyL3C3XkMOBc7o74YoLQOapbNGCnbflxiz5bG9YY96I9u2gS4d4bMWgD2
         cEWQ==
X-Gm-Message-State: AOAM53339CBKa1vsbvCDMZCaV7i1KjpL2OlmfqwqFU2+KIA8E++OgDQx
	odSPUxtcu627shpii2fBYH+So5ejFS/PUfmS13P+h7RH14OhTFkmQew79/E3ke1iLWpqXeFEOj5
	cfJTJiXHgtL/Qd0dRUfKoPkeY2U2R4mUfGelKv/0/2/eb
X-Received: by 2002:a17:902:c951:b029:106:513f:58ff with SMTP id i17-20020a170902c951b0290106513f58ffmr2590279pla.37.1622479215302;
        Mon, 31 May 2021 09:40:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyZohLNr3TWOs2iyuivAyG51w1xc6+6LkKfl0b3Rc+DhiuIjsANv56MyccTs/f5xbCDoCyBi8HhJKelJ+BTr0M=
X-Received: by 2002:a17:902:c951:b029:106:513f:58ff with SMTP id
 i17-20020a170902c951b0290106513f58ffmr2590262pla.37.1622479215001; Mon, 31
 May 2021 09:40:15 -0700 (PDT)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Mon, 31 May 2021 18:40:04 +0200
Message-ID: <CAA8xKjVo8bEb+3B7GbdeHnkG8iScT4Ctt53NoQCMAB5Tqmog=Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Li Qiang <liq3ea@gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] QEMU: security issues in vhost-user-gpu

Hello,

Multiple security issues were identified in the virtio vhost-user GPU
device (vhost-user-gpu) of QEMU. A malicious guest could use these
flaws to leak memory from the host system or potentially crash the
QEMU process on the host, resulting in a denial of service condition.

Patch series:
https://lists.nongnu.org/archive/html/qemu-devel/2021-05/msg04536.html

The following CVEs have been assigned by Red Hat, Inc.

* CVE-2021-3544 - combined CVE for multiple memory leaks
   Upstream commits:
   https://gitlab.com/qemu-project/qemu/-/commit/86dd8fac
   https://gitlab.com/qemu-project/qemu/-/commit/b9f79858
   https://gitlab.com/qemu-project/qemu/-/commit/b7afebcf
   https://gitlab.com/qemu-project/qemu/-/commit/f6091d86
   https://gitlab.com/qemu-project/qemu/-/commit/63736af5

* CVE-2021-3545 - information disclosure due to uninitialized memory read
   Upstream commit:
   https://gitlab.com/qemu-project/qemu/-/commit/121841b2

* CVE-2021-3546 - oob write while processing VIRTIO_GPU_CMD_GET_CAPSET
   Upstream commit:
   https://gitlab.com/qemu-project/qemu/-/commit/9f22893a

Acknowledgements: Li Qiang of Tianchen Security Lab (Ant Group).

Thank  you,
Best regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

