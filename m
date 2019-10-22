X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1497" "Tuesday" "22" "October" "2019" "09:24:20" "-0400" "Mike Dalessio" "mike.dalessio@gmail.com" "<CAGJbjKaXJTFspSssmXqo8YNkeMddVuHYT3MuBHRozHZGXvO4Bg@mail.gmail.com>" "58" "[oss-security] Re: [CVE-2019-15587] Loofah XSS Vulnerability" nil nil nil "10" "2019102213:24:20" "[oss-security] Re: [CVE-2019-15587] Loofah XSS Vulnerability" (number mark "U       mike.dalessi Oct 22   58/1497  " thread-indent "\"[oss-security] Re: [CVE-2019-15587] Loofah XSS Vulnerability\"\n") "<CAGJbjKasPtcqfRSrsyg=Ae_oM6xknf9V4qyUoFW6aTsL3rLkaw@mail.gmail.com>" ("<CAGJbjKasPtcqfRSrsyg=Ae_oM6xknf9V4qyUoFW6aTsL3rLkaw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: [CVE-2019-15587] Loofah XSS Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23609 invoked by uid 550); 22 Oct 2019 14:06:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30569 invoked from network); 22 Oct 2019 13:24:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=oAiCdYGh0EziheWG1z/xK36Bb6xuXYSlw+Z+k0xBqKA=;
        b=HLmKdMUZZkyhmEqQIlpxpDjDjcWt4aEnK2di6fipxxdO5sH9WH+dbdTBzCvNniO4LX
         CnPOlEKWRacAdoMl9a7FqYJq40dJ2UlxsoPLWuUK1eGaXFZc3NlUXbbb9WoqeHxBucFW
         ubnV6IxENc+JeYOFK1QzLLbsBY02ptKhAlPyULbA6JCjo9fIP3YVNbSECbd0DMM5pVWe
         tC31XcdMY/ckqatQ5rKEg+59/LsZlnvcX+u+5ceYK20BnSg+icPx/MUgigd4IfGMZbBB
         szTIeI5gY/Zow/YzAk+N0NXU+rifQpkapEr8q1KgmVe5FGAm3+25r77wldnDUrT2O5i4
         qxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=oAiCdYGh0EziheWG1z/xK36Bb6xuXYSlw+Z+k0xBqKA=;
        b=f5RDshLRpbrcgsmuxWSSOJhI7HkoK1OZWTRqSyv4PxmOJuvKx+rLnurCVC7CTTz4BV
         Gx3V7HNM8b0T7Yt7BDk+2i0Se3+Y4jIvIDqh7fQ08SIG7WWZBVyBES1ChE9GFuO821ti
         mRzTsTQGXPEj5F0m12WiXWc17MIhv6UanNqf8VxOWlWI8w56EAOg9eExEo92ziewQOdD
         2YnMYZ9k5u4iMJpJ39d4bfORwmwRPL694YdIjrF13k1fbPTLBE1rGXigkNG0KYuQDieo
         pXWBD0UfGbmWv/RcS/MXKaJIxKjiiYcy4b1U5GKReDG7izsUcp5OtRLCsCidtUK2dh+m
         7N3g==
X-Gm-Message-State: APjAAAXYxZH3Fe/febNLvkZ0hZ0WZpmtuHZ0Kac+Y4VxIpC6jKbiP/V7
	OfibFolgjsDrPBV8y8HTI85wD6w6hqZAEsYyZE4=
X-Google-Smtp-Source: APXvYqz9LpzRskv2mkkuQ8ucdE3EEnQpAE5Npjs75jplSUdRhvMBzpAxTS8Q78/o3qiB7qfyVNjNbLXEZx9lekwnExA=
X-Received: by 2002:a9d:67d7:: with SMTP id c23mr2881701otn.0.1571750671788;
 Tue, 22 Oct 2019 06:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAGJbjKasPtcqfRSrsyg=Ae_oM6xknf9V4qyUoFW6aTsL3rLkaw@mail.gmail.com>
In-Reply-To: <CAGJbjKasPtcqfRSrsyg=Ae_oM6xknf9V4qyUoFW6aTsL3rLkaw@mail.gmail.com>
From: Mike Dalessio <mike.dalessio@gmail.com>
Date: Tue, 22 Oct 2019 09:24:20 -0400
Message-ID: <CAGJbjKaXJTFspSssmXqo8YNkeMddVuHYT3MuBHRozHZGXvO4Bg@mail.gmail.com>
To: ruby-security-ann@googlegroups.com, rubyonrails-security@googlegroups.com, 
	oss-security@lists.openwall.com, loofah-talk@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000077b1f805957fb8ce"
Subject: [oss-security] Re: [CVE-2019-15587] Loofah XSS Vulnerability

--00000000000077b1f805957fb8ce
Content-Type: text/plain; charset="UTF-8"

Apologies - the "Affected Versions" section should have read *Loofah <=
v2.3.0*

On Tue, Oct 22, 2019 at 9:15 AM Mike Dalessio <mike.dalessio@gmail.com>
wrote:

> Hello all,
>
> A *medium* severity vulnerability has been identified and patched in
> Loofah v2.3.1, which is a dependency of `rails-html-sanitizer`. This issue
> has been assigned CVE-2019-15587.
>
> The public notice can be found here:
>
>   https://github.com/flavorjones/loofah/issues/171
>
> To save you a click, I've reproduced the contents of the announcement here.
>
> ---
>
>
> *# CVE-2019-15587 - Loofah XSS Vulnerability*
> This issue has been created for public disclosure of an XSS vulnerability
> that was responsibly reported by https://hackerone.com/vxhex
>
> I'd like to thank [HackerOne](https://hackerone.com/loofah) for providing
> a secure, responsible mechanism for reporting, and for providing their
> fantastic service to the Loofah maintainers.
>
>
> *## Severity*
> Loofah maintainers have evaluated this as [Medium (CVSS3 6.4)](
> https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:C/C:N/I:L/A:L
> ).
>
>
>
> *## Description*
> In the Loofah gem, through v2.3.0, unsanitized JavaScript may occur in
> sanitized output when a crafted SVG element is republished.
>
>
>
> *## Affected Versions*
> Loofah < v2.3.0
>
>
>
> *## Mitigation*
> Upgrade to Loofah v2.3.1 or later.
>
>
>

--00000000000077b1f805957fb8ce--
