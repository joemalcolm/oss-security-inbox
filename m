X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["807" "Monday" "17" "April" "2017" "10:35:51" "-0700" "Kenton Varda" "kenton@cloudflare.com" "<CAJouXQntfKK9r8T5HtxHCeVGhdYjwW_Wk_SSa4n-KsbM5qAFZA@mail.gmail.com>" "31" "[oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization" "^Date:" nil nil "4" "2017041717:35:51" "[oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization" (number mark "        kenton@cloud Apr 17   31/807   " thread-indent "\"[oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization\"\n") "<CAJouXQ=FM1XBV3p8Yn_yrhJyLv98hEChuGFgKuLUhFoGXAgsrg@mail.gmail.com>" ("<CAJouXQ=FM1XBV3p8Yn_yrhJyLv98hEChuGFgKuLUhFoGXAgsrg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 2035 invoked by uid 550); 17 Apr 2017 17:57:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19591 invoked from network); 17 Apr 2017 17:36:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudflare.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=DLl/bZDzsyPMv9eKD7gb+Kvyllg+2b0fiLXFYnJD5xE=;
        b=FD4qtIjnAAUZuMNiNoWr1+74U5U6EVen2z9abkvI1cSu+TLiQjnsYKeclQgX3l2jug
         E6UVRMqBIwG4I0Z5iiOjbcx/Faovu0bLZFCEig1fRPMhtVB15mWJyQh39ZM8lc/JxzYz
         Pg6fNOauMqXKvnjEnjhzSudQzBIsawveeGD8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=DLl/bZDzsyPMv9eKD7gb+Kvyllg+2b0fiLXFYnJD5xE=;
        b=Et5+txHFWtqXcT+EzpTGs/dI75vpgatsLivnq40p/OOd1o+5ul0ojeY3Wccsf5tO0V
         CNYaUBJayhhSQcMc/x3P/0jPLTrSDli55/8vhrqyCwj8S8UY1+xZmGqqE48PuJQHeWh1
         ue5RrdGTNFmUfBorMvFOQ+wxGMMNNeEk2x+wD7Z4Uwfo8+aJ/czPCUD/ubI8NDY6hL1d
         BQGSRCpE7CwH6eM8rtAxWCHq76YHBPpKewHAZWdHIObrPCVVphsyOD5g8RnSDnk/glZ5
         43iVD+3Ybwpd+DrKkKtjOo6conv9fC5V9tIqdb+0RiS0p3crpwDt4KE6hx2Kuu8BfZgb
         w5yg==
X-Gm-Message-State: AN3rC/7lEbb5UwfA3bo0a/joR2O1b3nvlYf2Ynx3a2Cb9bJQ2+Kds/1v
	juE/iTbIgdDOY8Q918xZ8esV0Mfd6b2v0c8=
X-Received: by 10.107.48.144 with SMTP id w138mr9800492iow.30.1492450592195;
 Mon, 17 Apr 2017 10:36:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJouXQ=FM1XBV3p8Yn_yrhJyLv98hEChuGFgKuLUhFoGXAgsrg@mail.gmail.com>
References: <CAJouXQ=FM1XBV3p8Yn_yrhJyLv98hEChuGFgKuLUhFoGXAgsrg@mail.gmail.com>
Message-ID: <CAJouXQntfKK9r8T5HtxHCeVGhdYjwW_Wk_SSa4n-KsbM5qAFZA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11444bd464c8a1054d603be0
Date: Mon, 17 Apr 2017 10:35:51 -0700
From: Kenton Varda <kenton@cloudflare.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization
To: Tom Lee <debian@tomlee.co>, oss-security@lists.openwall.com

--001a11444bd464c8a1054d603be0
Content-Type: text/plain; charset=UTF-8

Whoops, apparently I'm supposed to use the web form now. Sorry!

-Kenton

On Mon, Apr 17, 2017 at 10:32 AM, Kenton Varda <kenton@cloudflare.com>
wrote:

> Hi oss-security and cve-assign,
>
> Can you assign a CVE for the following issue?
>
> Full details and fix covered here: https://github.com/sandstorm-i
> o/capnproto/blob/master/security-advisories/2017-04-17-0-
> apple-clang-elides-bounds-check.md
>
> > Discovered by Kenton Varda
>
> > Some bounds checks are elided by Apple's compiler and possibly others,
> leading to a possible attack especially in 32-bit builds.
>
> > Although triggered by a compiler optimization, this is a bug in Cap'n
> Proto, not the compiler.
>
> Thanks,
> -Kenton
>

--001a11444bd464c8a1054d603be0--
