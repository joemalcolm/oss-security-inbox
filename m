X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["467" "Sunday" "22" "July" "2018" "08:20:13" "-0400" "Iris Morelle" "shadowm2006@gmail.com" "<1892896.1vvHKffLvn@hanacore>" "16" "[oss-security] Re: CVE request: Wesnoth arbitrary code execution/sandbox escape" nil nil nil "7" "2018072212:20:13" "[oss-security] Re: CVE request: Wesnoth arbitrary code execution/sandbox escape" (number mark "U       shadowm2006@ Jul 22   16/467   " thread-indent "\"[oss-security] Re: CVE request: Wesnoth arbitrary code execution/sandbox escape\"\n") "<2222700.WJvhPnAmYh@hanacore>" ("<2222700.WJvhPnAmYh@hanacore>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9935 invoked by uid 550); 22 Jul 2018 15:23:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1842 invoked from network); 22 Jul 2018 12:20:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=kq2mJjfYR0d2ZoE1ygOJmbQLEZ5BEogVgsHsVRHriPs=;
        b=vIKQu7TvT29hIjguNAq+xhtwvQ4iA+xiULG3Z4lNfBnFa9UlD1sYq4hcfLgWdYFlpY
         Pa3jtWwruotH8ZQx1erZ/Kj3rNLy5c+yEVG/FeVJwPMe+8kyltKPdoC8Vy74tnoAwcSC
         IDp6MHrVVh3mqri/noHMKDQSUmLRwz05s+6Ni3Nm7U11f7sW/MZrxb+ewifq0HjZiltX
         4qU1KTjGDbMfv1nctAQ4TCL+AJtQwB+B5S3fM7M/4nptF7KH6ayBCfQqEEQ4QyyJ6mkY
         +l/V20y/CP9HieeQKOVIxPh3lZJy37R0s8mV1Nt88K7bnA03KoCSbYeUQrQNaYZfqegC
         G61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kq2mJjfYR0d2ZoE1ygOJmbQLEZ5BEogVgsHsVRHriPs=;
        b=TqWOOKFFnQ2ljeYNiFcs3rIShKN0h/7PSvENQpEATee/bYTscumUylS3x94+zy8mOy
         AtGF6cS8vJF5vJtu0sNlbHTYNxE6WXpnj3eox65AMkYva2AsZA42F9tX4QrrOqUpYII+
         fRY6XOHfqINykvPYNzMHPoUN2Lw0ty2ieKEeXYog+LLYukota0RAOkvgYFT9HIB3/8Rh
         NckB/bEjm6xX6h4y2asQkW1qeBF07ekzS0HMQs7N+0F1ysXHGAY7GUiEyNd79Zd9jr9b
         rORlLq5v5bXj+HWz84+n3tXXjmsweWaDIlITPrb7d+Dz+qiQUXMFLQrRA0qhu//Q/Poj
         jhfQ==
X-Gm-Message-State: AOUpUlFek3mO0HRR6YdPbFXCdG/bkPA/stSMSjVFfWooFrVpGKgpYvoP
	B3OZIzDu8i4ye36VNUoRJ15Oow5l
X-Google-Smtp-Source: AAOMgpegFsA1vK2Ct3K0qCOhznsGNLZJ67YrL6QP8wPWRr9SLEIpW2i1RclpbLWW9Yb6KWYbanTscQ==
X-Received: by 2002:a37:7f02:: with SMTP id a2-v6mr7879119qkd.138.1532262016344;
        Sun, 22 Jul 2018 05:20:16 -0700 (PDT)
From: Iris Morelle <shadowm2006@gmail.com>
To: oss-security@lists.openwall.com
Date: Sun, 22 Jul 2018 08:20:13 -0400
Message-ID: <1892896.1vvHKffLvn@hanacore>
In-Reply-To: <2222700.WJvhPnAmYh@hanacore>
References: <2222700.WJvhPnAmYh@hanacore>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] Re: CVE request: Wesnoth arbitrary code execution/sandbox escape

On Thursday, July 19, 2018 9:13:42 PM -04 you wrote:
> Hello,
> 
> We've found an issue in our software, "The Battle for Wesnoth", which allows
> arbitrary code execution by exploiting a vulnerability within the Lua
> scripting language engine which allows escaping existing sandbox measures
> in place and executing untrusted bytecode.

This has been assigned CVE-2018-1999023. The fix is shipped in the newly-
released version 1.14.4.

-- 
Regards
  Iris Morelle


