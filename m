X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["552" "Wednesday" "13" "January" "2021" "15:42:17" "+0100" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjWQazSpUaRSpyVenSAwJMvev8GvN+_AXm-5RizhYtLnzg@mail.gmail.com>" "19" "[oss-security] CVE-2020-11947 QEMU: heap buffer overflow in iSCSI block driver may lead to information disclosure" nil nil nil "1" "2021011314:42:17" "[oss-security] CVE-2020-11947 QEMU: heap buffer overflow in iSCSI block driver may lead to information disclosure" (number mark "U       mcascell@red Jan 13   19/552   " thread-indent "\"[oss-security] CVE-2020-11947 QEMU: heap buffer overflow in iSCSI block driver may lead to information disclosure\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-11947 QEMU: heap buffer overflow in iSCSI block driver may lead to information disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28439 invoked by uid 550); 13 Jan 2021 14:46:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27834 invoked from network); 13 Jan 2021 14:42:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610548953;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=RdKEPelap3Vxqxa3RtFCZcTN6arG4EVjaXEZ+4ZwJH4=;
	b=PNtKkgcw1iLEByhs1/121GUOZ9fgf9uhTcWCM9wGEyoTduWoIV7UDSimaovQsHUU3Pa7vi
	yHwCzerJnuvarzF5evJnr+lLZEr8kXGA7/3q09e8eqUBMLJdYAGneSPQx3/svQozCeJjtz
	H8qaJ9vhoeCO1rWWLnkqJjrjtYhI1VQ=
X-MC-Unique: 8w8A3aCNNZ6ZdQ1xoygv6w-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RdKEPelap3Vxqxa3RtFCZcTN6arG4EVjaXEZ+4ZwJH4=;
        b=Qn4mKFWh/FL7k/tEL8noIF+pz8vtzG1E4a87PlHG1xHRZm4cBKkG3mEC05ZpLb8gXN
         dDXA9aGWAHC263+8aVZ/eSZ99fa4xd4Qf2rBUcsYNFmKmQqzZsm0DE2mn+IVgrKTg6/3
         bFvVmVLusFyKcKLkLt/4sbupj6KbBzxxNfSwx7yfrdI/vcHe7j/VR655dBy3cCGcsdor
         okT3KEi4xd4m/cPAmC0t2XjbgHneRyVZIPXB+m4ZiPQZu3rmFwNLJwlW2R5pKT4IdH2N
         ICZs3logOphgkElQ9N8a2MrNlMK9tn5jms+Fv/iLahfbP/NFauVfxgfA6wgcvkhHuS4z
         Dl6w==
X-Gm-Message-State: AOAM532D2uiK4wrBdyI/Sz4fr1/tQfN8qucZVwK9iGvQgdFY8Kl7ZD+d
	+BUFSiHv3CEl4UYto/6bn/J67mXTMjx4i4Lp1eDsjSFKXHBgyrVl5CBcAPBvwEK1tUq7/KVtBWF
	FHyQyci8PX9WWXxJWkavm/dPDi7q4p3Drkps1/t9l/3tA
X-Received: by 2002:a17:906:b082:: with SMTP id x2mr1700773ejy.100.1610548949000;
        Wed, 13 Jan 2021 06:42:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJziwD6dN0hu+y9D+cF9ibEe3Adnu9UXGSrUIu/LizTyiLknjOntCqQMY9OCOkKGtZ7k2sZ1920x3RjDalp+ZSw=
X-Received: by 2002:a17:906:b082:: with SMTP id x2mr1700754ejy.100.1610548948702;
 Wed, 13 Jan 2021 06:42:28 -0800 (PST)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Wed, 13 Jan 2021 15:42:17 +0100
Message-ID: <CAA8xKjWQazSpUaRSpyVenSAwJMvev8GvN+_AXm-5RizhYtLnzg@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-11947 QEMU: heap buffer overflow in iSCSI
 block driver may lead to information disclosure

Hello all,

A heap buffer overflow was found in the QEMU block driver for iSCSI
images. This flaw could lead to an out-of-bounds read access and
possible information disclosure from the QEMU process memory to a
malicious guest. The highest threat from this vulnerability is to data
confidentiality.

Upstream fix:
https://git.qemu.org/?p=qemu.git;a=commit;h=ff0507c239a246fd7215b31c5658fc6a3ee1e4c5

CVE-2020-11947 was assigned to this issue by MITRE Corporation.

Best regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

