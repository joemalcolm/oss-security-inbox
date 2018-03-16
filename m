X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["887" "Friday" "16" "March" "2018" "18:12:23" "+0100" "Julien Cristau" "jcristau@mozilla.com" "<CALf+9VTETE6Xm3vfDtZQdJ=52n67wdtHsdusMBcOG8TbZ+QmBA@mail.gmail.com>" "30" "[oss-security] Fwd: Firefox 52.7.2 (Fwd: Linux ARM ESR-52 builds need additional patch!)" nil nil nil "3" "2018031617:12:23" "[oss-security] Fwd: Firefox 52.7.2 (Fwd: Linux ARM ESR-52 builds need additional patch!)" (number mark "U       jcristau@moz Mar 16   30/887   " thread-indent "\"[oss-security] Fwd: Firefox 52.7.2 (Fwd: Linux ARM ESR-52 builds need additional patch!)\"\n") "<CALf+9VS_sf7rx3g9PcL-+82YfVYhUFEOjmdVkmNxAyHFstV+gQ@mail.gmail.com>" ("<CALf+9VS_sf7rx3g9PcL-+82YfVYhUFEOjmdVkmNxAyHFstV+gQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32101 invoked by uid 550); 16 Mar 2018 17:22:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22289 invoked from network); 16 Mar 2018 17:12:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mozilla.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ZS7JFPQ+84EbVmjXpugmDUU+ES6gc4wmRZnVtbjRB9E=;
        b=C1o47XTwu2vAm1X5vuEtfw8rQkXalg47zYutrpj/uPc37Ct6IDe91En633nqOgSyEI
         oiA4l00Cd7XjSbUh92iQVhbAffkwfd6l5jV7R0vObdmHN0jmdQ16k9W46wyanGhz8Hmq
         weBnAKBPkTB8MC2DHLx9bu8ak6A0myRYJmo1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ZS7JFPQ+84EbVmjXpugmDUU+ES6gc4wmRZnVtbjRB9E=;
        b=ZfOS7MCk68jJJelMKlF5ZXumi8N88ejnWfdzlA1uyMUOjZ/HMOVc9hM5j5/zl6jhsn
         ARZaXghge1XfCFOGxpRymxyWiMY2+rK+FJqTwAB+hQfs6UDlYSlREa91RS25OCUHv1sR
         gHjxeotaAjuMNZHBB5P8o1/u2LI74EWRJ0E/kAnoMlRP93A7ckok8KgeJ6UAxKOGu9J1
         oivMEuk4RY3aagCE5IYQF/kIKa1k42QnCDThs2kxmfNvWCAPiIABVm2ArOGwjtwobXsp
         GZWwBj7vc/zdpSy/KPLI4UiuCHMVNOIOUDjcDsNmoEJt4UQE78YbKtyvCqwOEQJpef7a
         SJhQ==
X-Gm-Message-State: AElRT7GKtzvXL7u/LfqgFNyV7d6/tJ0lbkoo7G5i6P/IdEIMfq8IX4A5
	P9f8U0zlyCQIt6XklI8bYTWWb5TIkJdZaWPjPNzVd2+9
X-Google-Smtp-Source: AG47ELv/nLeyEWNNB2IsqxxTRs3pvadjkVVp88hrB10nSgmqLEIr6LFd5CEpf//ks29XfuV7oi2FcsPYkuiE9C847nw=
X-Received: by 10.46.42.67 with SMTP id q64mr1952105ljq.133.1521220344174;
 Fri, 16 Mar 2018 10:12:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALf+9VS_sf7rx3g9PcL-+82YfVYhUFEOjmdVkmNxAyHFstV+gQ@mail.gmail.com>
References: <CALf+9VS_sf7rx3g9PcL-+82YfVYhUFEOjmdVkmNxAyHFstV+gQ@mail.gmail.com>
From: Julien Cristau <jcristau@mozilla.com>
Date: Fri, 16 Mar 2018 18:12:23 +0100
Message-ID: <CALf+9VTETE6Xm3vfDtZQdJ=52n67wdtHsdusMBcOG8TbZ+QmBA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="f403043a1c103db04005678ab6b8"
Subject: [oss-security] Fwd: Firefox 52.7.2 (Fwd: Linux ARM ESR-52 builds need additional patch!)

--f403043a1c103db04005678ab6b8
Content-Type: text/plain; charset="UTF-8"

Forwarding this heads-up from Dan for distros shipping Firefox on ARM

---------- Forwarded message ----------
From: Daniel Veditz
Date: Fri, Mar 16, 2018 at 5:58 PM
Subject: Linux ARM ESR-52 builds need additional patch!
To: Security Group


To those of you who build Linux-ARM distributions it's important to note
that you'll need one patch past the ESR 52.7.2 release tag to pick up
the libtremor fix.

On 59.0.1 this patch is included in the _BUILD2 and _RELEASE tags, but
because we didn't have an ARM build for ESR there was no _BUILD2
tagging. You will want to build with
https://hg.mozilla.org/releases/mozilla-esr52/rev/5cd5586a2f48

Please spread the word amongst the linux distro community.

-Dan Veditz
_______________________________________________

Cheers,
Julien

--f403043a1c103db04005678ab6b8--
