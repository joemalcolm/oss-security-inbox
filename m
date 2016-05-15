X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1107" "Sunday" "15" "May" "2016" "09:05:03" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSBwUpHD6KVqNnGfRj_7ofzmG0VHxz=xTBfe3vSVNmW0g@mail.gmail.com>" "36" "Re: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions" "^Cc:" nil nil "5" "2016051507:05:03" "[oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions" (number mark "        gustavo.grie May 15   36/1107  " thread-indent "\"Re: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions\"\n") "<87d1otk0an.fsf@prune.linuxpenguins.xyz>" ("<20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>" "<87d1otk0an.fsf@prune.linuxpenguins.xyz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29713 invoked by uid 550); 15 May 2016 07:05:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28671 invoked from network); 15 May 2016 07:05:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=refsnDMmAfFluaembcvEKJa67k5ZWZoSLGe+yhdzjTg=;
        b=GcINyZENI61FFWQvh/GCQu967pgRckWkRDUuF338u9xhtND9EY7u0ks3haAM2g5LrA
         jpB/hV2DpDHMoQ5BWGNM2CWWlyFs6Mo1K4W2Sw0KVtHUmKmGSm7rqP+ltmj1PfMAXSXE
         JjnSLjF29yEqRNvoY98RIZdOSjTwDrA5o183+mvWMUEtvby3E5w5fTlWhz985YS0YLJ5
         C38koszW3lInTi4rjtJ7a6Tq2HCD8U+nvw5PY5hAwLx/SmcdunBoXj77+wIn+yv+Yhyi
         iuUMT9wXe7dy/g2vuzyPQDmtNpxjloxhSj//5DZNq43qMDBjoCnGPLKHCuy+O6j07ygn
         75rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=refsnDMmAfFluaembcvEKJa67k5ZWZoSLGe+yhdzjTg=;
        b=fXI90DjsCbZb10D3+xqgmkIsgeEB2F3Zi43UxNi3XismCg6vfrko5Q8UPyNPEwxA/y
         C5kmcDhyRBCh1CVSma4kLPSDbtqMevAEmJ71rgQpbP6d5ZW8KPChYqUILonkB3YAnKKL
         gM/VyDfYU9cK2YwxF/3bl1M3jOVVlxyOYwLYd+1qS3ytjDpoJOh8bYAC4VB/m8TX6B9B
         /m9dM8PAfcgUxfYr9vX4muBuAEytEzq7nSI2+kMbaLAwqznYQLrS9IgaqWPn7A4N/+vZ
         A4EwYlUXPf27Cc6CCEzBcBVwLI5MIf1WXWrGRX+zpWDDiN7Ku0mlaMjUciecQ2csMJ20
         p7+g==
X-Gm-Message-State: AOPr4FV/LNQbdT1B84nUGBkh2YrXJyFzUp/y6uYrcWsCHzDfdP2/knW26PHEalYElCt7FeEIFf9aEA2lO/Nk+w==
MIME-Version: 1.0
X-Received: by 10.25.162.76 with SMTP id l73mr9547831lfe.45.1463295903415;
 Sun, 15 May 2016 00:05:03 -0700 (PDT)
In-Reply-To: <87d1otk0an.fsf@prune.linuxpenguins.xyz>
References: <20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>
	<87d1otk0an.fsf@prune.linuxpenguins.xyz>
Message-ID: <CACn5sdSBwUpHD6KVqNnGfRj_7ofzmG0VHxz=xTBfe3vSVNmW0g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com, cve-assign@mitre.org
Date: Sun, 15 May 2016 09:05:03 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with
 circular definitions
To: Brian May <brian@linuxpenguins.xyz>

2016-05-11 0:36 GMT+02:00 Brian May <brian@linuxpenguins.xyz>:
> Just did a git bisect against the source. Assuming I got this right, the
> following commits fixed the issue.

Thanks for taking the time to do the git bisect!

>
>>> They affect the following functions:
>>
>>> * rsvg_cairo_pop_discrete_layer - rsvg_cairo_pop_render_stack -
>>> rsvg_cairo_generate_mask: reproducible using circular-1.svg
>>
>> Use CVE-2016-4347.
>
> Fixed in:
>
> commit a51919f7e1ca9c535390a746fbf6e28c8402dc61
> Author: Benjamin Otte <otte@redhat.com>
> Date:   Wed Oct 7 08:45:37 2015 +0200
>
>     rsvg: Add rsvg_acquire_node()
>
>     This function does proper recursion checks when looking up resources
>     from URLs and thereby helps avoiding infinite loops when cyclic
>     references span multiple types of elements.


I think CVE-2016-4347 and CVE-2015-7558 (stack exhaustion due to
cyclic dependency, reported here:
http://www.openwall.com/lists/oss-security/2015/12/21/5) are in fact,
the same issue. This is probably my fault (sorry!).

MITRE: We should reject the the newly assigned one?

Regards,
Gustavo.
