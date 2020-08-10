X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1243" "Monday" "10" "August" "2020" "11:57:02" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjXJ7DjJ7jAfR6hrbUOOfi7p8sCZSSdt9Hs7bj=Ez03eWA@mail.gmail.com>" "30" "Re: [oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c" nil nil nil "8" "2020081009:57:02" "[oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c" (number mark "U       mcascell@red Aug 10   30/1243  " thread-indent "\"Re: [oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c\"\n") "<c177c453-0c5f-2bae-473b-881013cf8731@msgid.tls.msk.ru>" ("<CAA8xKjW4-RaRBBR6FC+CzNrAaafKMPGAC9Hkufg=6ODoAkCcCQ@mail.gmail.com>" "<c177c453-0c5f-2bae-473b-881013cf8731@msgid.tls.msk.ru>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1209 invoked by uid 550); 10 Aug 2020 12:27:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21852 invoked from network); 10 Aug 2020 09:57:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597053437;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=laaqJl8fPAQOjMoLdfF0U1habRxVAL2xPYSivxGmfw4=;
	b=Jq9bY2kLBtekDfXOwxd4vtkdNzuI/+wcOJBvKAhgtvNHvrUXewwN3PDrwLXzSuofxi/bqN
	0UVUwzmOkPJYiV/F+DrGk2MR1kySbh15k4AIyrTazS1b5sNBMWYOsurshaIRfhb7QnWAZQ
	AC/vw35K/9/IECtuWkLXcUhU9/pCVFA=
X-MC-Unique: vvwys_ySPlCVoijC5pKYgQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=laaqJl8fPAQOjMoLdfF0U1habRxVAL2xPYSivxGmfw4=;
        b=bgt5fOpWIB4nHbIDVfeyDzsVx0KvlTDl4SBtzDxNTKiAvG/I8guFSqjSeoENrS6cPh
         naPN/36zmhObVTNFkwC9KF4HYIlyCwnxgoaUuS16kZxj9cXPadDCnYPygE2RitJCBIeo
         KqYxZejLpMW3T2Bil0PXvtYP/L95usKMc8maDenuuNKiGL2uUe2H6nEkDwNqHntI3c5T
         Df7KjDP1frm1V0Gh9qTb/QmMD1bMu8l0ubJwYWgxkSidn9a6Tw0lddn49CcEpCAnDd2Z
         rPjr83dKnWHPn1utxSXGLaC8qq8ID1NRoS/T0InmpvlHBan6SNnCQMeGdl1bvM6aKfzN
         lUZg==
X-Gm-Message-State: AOAM531WXqEl71pnKVjIrMftpe5tZI50gQJSakPBU0Cg1x+fM3LJaQAJ
	bRZ03H68vBcc0ppB5Km+pWMEP2fPMlhp1+uT1K9nuKFnnS/K3i2D79tbBNDRr6TxDtl7FEt+Vlk
	MCziHJPv8fXz6YomaOglKeABdvRbodn1o69EE4zHHGv99
X-Received: by 2002:a50:9b12:: with SMTP id o18mr20477600edi.367.1597053433489;
        Mon, 10 Aug 2020 02:57:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzb5UPxPhHQSxPggVioDVRfAU4Hr8xW4PcjynzFQtrxCI2uNNgkrwJYsIRqeUrw8YNXJQf5hAFImCMXj5oCPMs=
X-Received: by 2002:a50:9b12:: with SMTP id o18mr20477588edi.367.1597053433301;
 Mon, 10 Aug 2020 02:57:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAA8xKjW4-RaRBBR6FC+CzNrAaafKMPGAC9Hkufg=6ODoAkCcCQ@mail.gmail.com>
 <c177c453-0c5f-2bae-473b-881013cf8731@msgid.tls.msk.ru>
In-Reply-To: <c177c453-0c5f-2bae-473b-881013cf8731@msgid.tls.msk.ru>
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Mon, 10 Aug 2020 11:57:02 +0200
Message-ID: <CAA8xKjXJ7DjJ7jAfR6hrbUOOfi7p8sCZSSdt9Hs7bj=Ez03eWA@mail.gmail.com>
To: Michael Tokarev <mjt@tls.msk.ru>
Cc: oss-security@lists.openwall.com, Alexander Bulekov <alxndr@bu.edu>, 
	ziming zhang <ezrakiez@gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2020-16092 QEMU: reachable assertion failure
 in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c

Hi Michael,

On Mon, Aug 10, 2020 at 11:23 AM Michael Tokarev <mjt@tls.msk.ru> wrote:
>
> Hmm. Is it really worth the effort to treat these things as security
> issues? There are so many ways to crash a machine (be it virtual or
> hardware), there are definitely countless ways to crash things from
> within privileged code.. what's the security impact of a hardware
> issue when, say, a driver code in the OS does a stupid thing and
> the hardware locks up?
>

I see your point. Our general assumption is to *not* consider assert()
failures CVE worthy if they can only be triggered by privileged users
[1]. In this case specifically, given the assertion failure occurs
while sending packets from the guest, we assumed it may be possible
for an unprivileged guest user to cause a DoS scenario (e.g., by
sending malicious/malformed network packets). In accordance with QEMU
maintainers, we therefore decided to provide a fix for this bug. But
again, I agree these kinds of issues tend to be questionable, so we
typically proceed on a case-by-case basis.

[1] https://lists.nongnu.org/archive/html/qemu-devel/2019-07/msg03869.html

Thanks,

-- 
Mauro Matteo Cascella, Red Hat Product Security
6F78 E20B 5935 928C F0A8  1A9D 4E55 23B8 BB34 10B0

