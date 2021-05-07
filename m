X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["670" "Friday" "7" "May" "2021" "16:07:04" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" nil "19" "Re: [oss-security] CVE-2021-3527 QEMU: usb: unbounded stack allocation in usbredir" nil nil nil "5" nil nil (number mark "U       mcascell@red May  7   19/670   " thread-indent "\"Re: [oss-security] CVE-2021-3527 QEMU: usb: unbounded stack allocation in usbredir\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3527 QEMU: usb: unbounded stack allocation in usbredir" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9815 invoked by uid 550); 7 May 2021 14:07:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9793 invoked from network); 7 May 2021 14:07:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620396439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lFbEkWvg6EvTPZ3WcXtFj4l85txLKXX0Q9cSIgQFLMg=;
	b=f7UnqSf3CvMTAD6v26p7UHQK93pzXoKbHuMIj8Y6D2scoX5Ro99b/Cp+LIckZaEbmMfbSp
	q0O2GCytmKt32weOsbB+zmcoqw6QgSxH5J5+seUUJuYwZZkrkuNjGwvcZQVFpJwDUk6U/g
	VIvGa/Q/KPQS1mx13w8PBK5drItSwiE=
X-MC-Unique: eYttQDPwMcaLc0_Er4BNyQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lFbEkWvg6EvTPZ3WcXtFj4l85txLKXX0Q9cSIgQFLMg=;
        b=mxMP2+T5tFWC90xulOHy4lx9f+D3h9nBbuPxD0pKU/Y9LmU/vFsy8boyhdn0AhyIIi
         wg/5ruDSHULBEjCXOHlAfmDwCnkSnJnodQA+kK/yBLG6VseMVRKRnAzbdma5MWLaGQa0
         xkIrnRxg5tKBM/+LA9bZnCA/NV6SLRpK8oaw+7kqO8YCwVzw+hRX7BveFgkJdaBZoY7S
         zJJ3CtraxgAP5+KwHpKmnoi5b+ueIp9IxQDTIoNkBXJA/dCeonqUVG6M+L1KGcwcb2aQ
         K8182lbA20BJ9aSGoFDxa4b9f6nQF7wilNiMrh8Ayt+k7g0z5qs3gN1a9aT76rMCktQi
         Sz/w==
X-Gm-Message-State: AOAM530r83/dn2IGwCETUI2hYzjudAuQuzqq2M1axl6Qj3BHVyckY9BR
	mqjpxq3VdOCHPypE8Y9owK4/MaFtwP+ZglqB3r0sH9UALvmu2iiOgBZ0xfKm8C3zwyCaqvFmci5
	/K2vQOglyhHC7UXHNOysP8kllLjgPblP+zD6epixXQ/CW
X-Received: by 2002:a63:4f50:: with SMTP id p16mr10112091pgl.40.1620396435451;
        Fri, 07 May 2021 07:07:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwgfsK/HMKcEmjHuerp6KSrmxBpvfqkU2DZTGLoea7HErRO9423Vkt45Eg4ZJHMO6VFzRpfOOWpj6Zv+VKLBNg=
X-Received: by 2002:a63:4f50:: with SMTP id p16mr10112061pgl.40.1620396435148;
 Fri, 07 May 2021 07:07:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAA8xKjUSqF7rMsSbUqsU_rr4me+Db+K-b0FH2HkmXkESkCbNrQ@mail.gmail.com>
In-Reply-To: <CAA8xKjUSqF7rMsSbUqsU_rr4me+Db+K-b0FH2HkmXkESkCbNrQ@mail.gmail.com>
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Fri, 7 May 2021 16:07:04 +0200
Message-ID: <CAA8xKjWKrn+JxskDdH1ULYUSFDvqTZ-doGTd=e_vrSSc8PD-EA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Remy Noel <remy.noel@blade-group.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2021-3527 QEMU: usb: unbounded stack
 allocation in usbredir

On Wed, May 5, 2021 at 7:09 PM Mauro Matteo Cascella
<mcascell@redhat.com> wrote:
>
> Upstream patchset:
> https://lists.nongnu.org/archive/html/qemu-devel/2021-05/msg00564.html

Note that the xhci patch was dropped [1] and a new USB patchset has
been proposed without it [2]. As discussed upstream, this could leave
room for unbound allocation on the heap, although more difficult to
exploit by the guest to crash the QEMU process on the host.

[1] https://lists.nongnu.org/archive/html/qemu-devel/2021-05/msg01372.html
[2] https://lists.nongnu.org/archive/html/qemu-devel/2021-05/msg01373.html

-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

