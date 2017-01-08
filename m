X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["406" "Sunday" "8" "January" "2017" "18:52:40" "+0100" "Martin Carpenter" "martin.carpenter@gmail.com" "<1483897960.5179.72.camel@juliet.mcarpenter.org>" "14" "Re: [oss-security] Re: Firejail local root exploit" "^Date:" nil nil "1" "2017010817:52:40" "[oss-security] Re: Firejail local root exploit" (number mark "        martin.carpe Jan  8   14/406   " thread-indent "\"Re: [oss-security] Re: Firejail local root exploit\"\n") "<20170108152351.GA25328@grsecurity.net>" ("<730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>" "<f47526d9-157e-1600-8f64-d737db07753c@web.de>" "<1483795275.8979.125.camel@juliet.mcarpenter.org>" "<1483876318.5179.50.camel@juliet.mcarpenter.org>" "<20170108152351.GA25328@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3301 invoked by uid 550); 8 Jan 2017 21:10:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12053 invoked from network); 8 Jan 2017 17:52:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=SJSp8mcCyW6BZhUyQRteVJL/wtODLXVNtVQOcVN4pjc=;
        b=q1u39rKxFm6/P9KUsMmlsveiX7NWLQGCapvHesycCiBb7OqHMbKb0lddYNBl/HyC8F
         YSQPCsfm83HGCS2Rc+lZm8KXo8xe+HcOwfhiyQ8ry/OTh9XQrjckGTZzegmjIuzgJXu7
         EsXLfYvbC4B7kYqgjfHyzXuxEg8EUvpjbWRPQQiQ41NjuGdL1pRs5N8E2Dya9slMOyEE
         +S4V5sEuwJudhV8KDvQFf2tfW73/vdCt5fmKVry6QQP1v9Ld6Tn2ZG6mW9gx9X2pLxKC
         ytmf3+MjEPVbKx6QpNM20ZK9FEZSSaSWq/K+rWoXb2XFeShWpMknQIUOWtEAOxJSvWC1
         Ny1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SJSp8mcCyW6BZhUyQRteVJL/wtODLXVNtVQOcVN4pjc=;
        b=FW+1kprVZiTUICt7UKMejgZVYQa4ZsN3sIkw0C901IP0w9lMZwUOf9xgMDcTPyrXAY
         4XGNVILYwmm/IUTQJN3BcVfum9BVEZpfZqMNpZ1yVOGgzCqZ9C3OsbezJYSXz3NyU6VG
         0xpndZjFrHFYPnfRCzFSekocM0odj07L6SR04F3DcFnHPpGrdRHCSIXsrZvm00ZWyh9M
         AeSkaJxpXDy8IzRuLyNMGJZ1FQdk9gavCCi9LHNSU3rVMLeFBvQxe0hFvU3V4h+vo4lw
         /nMbpKP7RmfZurv6FaKfTmtNapNlT/vgKpGNLKimXZMkBzm/9duUa4oJ32Jj2dswW3x3
         B8Ag==
X-Gm-Message-State: AIkVDXKBDPx1n0BUgoShSLKCfc6tYwQw7ZaM428OStSZ2HXVPqOwqg2DHU7cr58+y3y2DQ==
X-Received: by 10.194.75.227 with SMTP id f3mr61302534wjw.19.1483897962504;
        Sun, 08 Jan 2017 09:52:42 -0800 (PST)
Message-ID: <1483897960.5179.72.camel@juliet.mcarpenter.org>
In-Reply-To: <20170108152351.GA25328@grsecurity.net>
References: <730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>
	 <f47526d9-157e-1600-8f64-d737db07753c@web.de>
	 <1483795275.8979.125.camel@juliet.mcarpenter.org>
	 <1483876318.5179.50.camel@juliet.mcarpenter.org>
	 <20170108152351.GA25328@grsecurity.net>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Sun, 08 Jan 2017 18:52:40 +0100
From: Martin Carpenter <martin.carpenter@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Firejail local root exploit
To: oss-security@lists.openwall.com

On Sun, 2017-01-08 at 10:23 -0500, Brad Spengler wrote:
> You're missing an important part here: checking to see whether your binary is running
> with privilege in the first place. 

Aha. Good. The more I thought it over the more awful it seemed, so
that's a relief. Thanks!


> Nothing to see here, but thanks for scaring everyone on a Sunday morning.

Heh, my pleasure :) An epiphany on Epiphany, ha.



