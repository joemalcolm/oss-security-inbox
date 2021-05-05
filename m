X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["957" "Wednesday" "5" "May" "2021" "19:09:40" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" nil "27" "[oss-security] CVE-2021-3527 QEMU: usb: unbounded stack allocation in usbredir" nil nil nil "5" nil nil (number mark "U       mcascell@red May  5   27/957   " thread-indent "\"[oss-security] CVE-2021-3527 QEMU: usb: unbounded stack allocation in usbredir\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3527 QEMU: usb: unbounded stack allocation in usbredir" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11806 invoked by uid 550); 5 May 2021 17:11:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10198 invoked from network); 5 May 2021 17:10:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620234596;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=EuqnvcKJFnJ04BIlXQbpcZTnGDw9c59uKEJn/kUMhcw=;
	b=TKUNYsaDYUFs3RaMS7iyN7PRfw4Z64yroOI2RCawa+SYHaMLIH4YuSB6lnbJqysCZjOQfo
	GEeOZgx7WuNK6G2est1umezjYhghxO7WbBDS4SZ2YaEE0+QqY8VNaeYVgh7eiVxrtHMQey
	CAW8TJjTYjD/NTW/4HcSkgKVnMGx3xs=
X-MC-Unique: 9tM69AHbNbqF9IZV3r-4hA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=EuqnvcKJFnJ04BIlXQbpcZTnGDw9c59uKEJn/kUMhcw=;
        b=oxWZmDw45yWO2mujv27xsbWIqh+DWYybG/kWkvWVwNw1Xdc7qo19CMarooGmDWvh5j
         trYMiJB/WSatw0YPBUsYL+c+IELLGZTI3S4wZPdbrTKmHygnI5ygJ2IhrWuhiq2Ryezg
         hgwPed8e/DL9CheSzAoKgfxv6wi7ddXl/FjNs1RoKW9rd1xGPGcamJTh+f3YfzvdqCQX
         MNkmMAx0uhm0blpv6Br8EnpafSGC2v7Roz+phcfJ2LIuYrfmHfpzMI/+4kAJiXcicOeP
         rAPFVCYVvINGcuTyzRtN6OjaqSoCsp1boEqCjBctnhMzDI+7/cmM5ov1MNLnVVE4leiR
         zFDQ==
X-Gm-Message-State: AOAM530lyHXm8SQVS6x/10beVGYLn4/NXmHX5oys89Gy6tY94elSExNa
	qXyqODsvTFmzpJorOR+qkvljACC6sUJTskGSQQJdzDQK6uIzegZPvLOhciFVxB5tN6l4qrZ+GMT
	d3j88D7cmFhF0DX76+TRwYHgn9AsOAcSuTtKFAcSFGgaU
X-Received: by 2002:a17:90b:3615:: with SMTP id ml21mr12445709pjb.28.1620234591899;
        Wed, 05 May 2021 10:09:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz1yNEpiOxp0nw/WxOrGyq66RhwVlEiXTx2iYBvml5gF9C0iHdU172zhXKQbUJMVUaMr5s82GuX/kvUf098M9E=
X-Received: by 2002:a17:90b:3615:: with SMTP id ml21mr12445681pjb.28.1620234591544;
 Wed, 05 May 2021 10:09:51 -0700 (PDT)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Wed, 5 May 2021 19:09:40 +0200
Message-ID: <CAA8xKjUSqF7rMsSbUqsU_rr4me+Db+K-b0FH2HkmXkESkCbNrQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Remy Noel <remy.noel@blade-group.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-3527 QEMU: usb: unbounded stack allocation in usbredir

Hello,

A flaw was found in the USB redirector device (usb-redir) of QEMU.
Small USB packets are combined into a single, large transfer request,
to reduce the overhead and improve performance. The combined size of
the bulk transfer is used to dynamically allocate a variable length
array (VLA) on the stack without proper validation. Since the total
size is not bounded, a malicious guest could use this flaw to
influence the array length and cause the QEMU process to perform an
excessive allocation on the stack, resulting in a denial of service.

Note: in addition to usb-redir, the patchset below fixes other places
in the code where stack-allocated VLAs were used (notably, usb/hid and
usb/mtp).

Upstream patchset:
https://lists.nongnu.org/archive/html/qemu-devel/2021-05/msg00564.html

Acknowledgements: Remy Noel (cc'd).
CVE-2021-3527 assigned by Red Hat, Inc.

Best regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

