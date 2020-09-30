X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["929" "Wednesday" "30" "September" "2020" "10:35:56" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhTWAWPjfWD1nLho+zxXneEt_CCbYFROJY=trcDvqsA7uw@mail.gmail.com>" "40" "[oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs." "^Date:" nil nil "9" "2020093000:35:56" "[oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs." (number mark "        wmealing@red Sep 30   40/929   " thread-indent "\"[oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9585 invoked by uid 550); 30 Sep 2020 00:36:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9567 invoked from network); 30 Sep 2020 00:36:23 -0000
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601426172;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=bdC1v5rBQFO6CTvaUvsBvchG+T4CyK+6oFksHtSa/gY=;
	b=Y5lbNHE0FPVrgFcEKxqStMFEZl2BoeW2SRW+/ksGuzoWlcjPLc0LSBlU88i8Trlfg0FQ25
	W1rdzCbR+Q3iXSM/B3KIO0LZcMhwOQkBWxwwFOQjAHRiPipfAqpQrewnpRiSSfJoJPxJPo
	EjPYsKrNlmFc4vltjvjHZB/HP07BYaM=
X-MC-Unique: eKjgv2wPNlW475BD-Q97zg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bdC1v5rBQFO6CTvaUvsBvchG+T4CyK+6oFksHtSa/gY=;
        b=DaT1GwRwktOI5JEtu14NwmORZQfQcpOu+Uec8ICHwBy2lSgo2JNZ1SaS/NHhJGtzlO
         fbolmR63lhRZiOVBlQWJC+I+PqBPZj9vaNORPGZvQL4hHIgeAxWcj95JSwdPdKlrVDP1
         tG06DaBHq8wiZ7KNgfQf0Ngon6BeO6MQOSceJI2CkFKQAIZbCBgP/sCvakKh1o/tZz19
         XvSYZyvsMgWSk5ONPck8u9X7Q3lABwOUBO+3jPYq5D2eKmcfONnmuhxDwtCSZKIGlxmf
         QS14rzrs61uEhOtQFbkTKIJwbOrbHUj+Frt4efiw37EEC6fN8ZsdI16YhT+kWcC6UMei
         WX+A==
X-Gm-Message-State: AOAM532rshf8szlCjzrmx2FG8X0kdRx3phXzH9MM59z05OAYo+qLB2mx
	OxZ9p+2a7FChO0udpn4yeH5Ywmiy+4ys07NfN36O0R8TVHy4OhOl68FjzO55mAXe+0Kek8ucstH
	sdxJSMFrOL7A1UE9XJyplRZO4dzhHmupksrPzqOu6i2Cl
X-Received: by 2002:a5d:49d2:: with SMTP id t18mr6635977wrs.99.1601426167991;
        Tue, 29 Sep 2020 17:36:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwoeW+QL+R2ix8NDgsj0KiQjkkHunknizZS+hcjzVK2UwAk2APaRt2zKcyyAbf/RNTIwluRY4EWclPQedd1O1s=
X-Received: by 2002:a5d:49d2:: with SMTP id t18mr6635959wrs.99.1601426167629;
 Tue, 29 Sep 2020 17:36:07 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALJHwhTWAWPjfWD1nLho+zxXneEt_CCbYFROJY=trcDvqsA7uw@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=wmealing@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000db1fe105b07d15cf"
Date: Wed, 30 Sep 2020 10:35:56 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs.
To: oss-security@lists.openwall.com

--000000000000db1fe105b07d15cf
Content-Type: text/plain; charset="UTF-8"

Gday,

A flaw was found in the Linux kernels implementation of biovec usage.  A
zero-length biovec request issued to the block subsystem could cause the
kernel to enter an infinite loop causing a denial of service. An attacker
with a local account can issue requests to a block device can cause a
denial of service.

This has been assigned CVE-2020-25641,

According to the fix commits "Introduced in":
# git tag --contains 1bdc76aea115 | head -n 1
v4.10

Fixed by:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7e24969022cbd61ddc586f14824fc205661bb124

Thank you.

-- 

Wade Mealing

Product Security - Kernel, RHCE

Red Hat

<https://www.redhat.com>

wmealing@redhat.com
<https://red.ht/sig>
TRIED. TESTED. TRUSTED. <https://redhat.com/trusted>

secalert@redhat.com for urgent response

--000000000000db1fe105b07d15cf--

