X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["551" "Friday" "23" "June" "2017" "18:04:00" "-0700" "Linus Torvalds" "torvalds@linux-foundation.org" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" "16" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" "^Cc:" nil nil "6" "2017062401:04:00" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" (number mark "        torvalds@lin Jun 23   16/551   " thread-indent "\"[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method\"\n") "<20170624005003.GB27479@grsecurity.net>" ("<20170624005003.GB27479@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9737 invoked by uid 550); 24 Jun 2017 01:41:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15900 invoked from network); 24 Jun 2017 01:04:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=vfQDGYh4iy/VON6For5LIEebMPv7yvIhncIIE0b/E/4=;
        b=GRtmCDQ+Ml+5lFulPH1Tbkr+bm4u7x6fqbY8BLRfLJYEwUuJbJJz7/9ZHgF83rTXyi
         5wZo67iwaBZ63THZW8dLerQUTeaK8n/ogdfHc49rkA+QJnBTTThTYvIU7z7YoWn87B37
         HbSEowVrSSXiTLFAMEvzy8kroDjaZdG7d81XY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=vfQDGYh4iy/VON6For5LIEebMPv7yvIhncIIE0b/E/4=;
        b=LFuIS71sWlJ6OFR70Hw/5qxHZYu9JuW8RVQWbmHSgyPhI6MchGqY8I4D/H3CHJLXvR
         vYJZez0oqHqdPUJanCOUPPiq8KrNRP1ODXDH+5naW79yGyLMJbTu+2vcIPwiZJIQJL4F
         77JeSyxEJqweLe08dYsud8/BvKch29xbB6i1TZ5aAfbDq7jgtod2L2oNAeVbv8+hmR2W
         SqzCCxycjHscF4Dxj4sY34fC1EbA1tSp1xVThDWrXe13ECuv/oXyRTsxgqT2PUWRfG+Q
         2EM9Nms5F2M9q3EY/0x11i+pIo3C7QNnvwmpLDS7Xbvbc8JBN/7jq0McqoN39weRQ99l
         4CqQ==
X-Gm-Message-State: AKS2vOxOrYAHa5lAj5Z72T0i8tCNXqPEmYeW/Xo4/xh2RTlqfv70TaIV
	11xJuUnkTNR92ug2pLKnLv0bkrUTKOa8
X-Received: by 10.202.239.131 with SMTP id n125mr5029369oih.19.1498266241111;
 Fri, 23 Jun 2017 18:04:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170624005003.GB27479@grsecurity.net>
References: <20170624005003.GB27479@grsecurity.net>
Message-ID: <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com, pageexec@freemail.hu
Date: Fri, 23 Jun 2017 18:04:00 -0700
From: Linus Torvalds <torvalds@linux-foundation.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an
 ignored Secure Boot bypass / rootkit method
To: Brad Spengler <spender@grsecurity.net>

On Fri, Jun 23, 2017 at 5:50 PM, Brad Spengler <spender@grsecurity.net> wrote:
>
> BTW, we're happy to go toe-to-toe with you here in public on actual facts
> instead of pathetic ad hominems.

Quite frankly, I'd much rather see *you* actually send in patches that
are acceptable for inclusion, something you've never done.

As it is, other people have tried to clean up parts of the grsecurity
patches, and tried to make them acceptable.

Wouldn't it be nice if you actually tried to make the baseline actually better?

Please.

                Linus
