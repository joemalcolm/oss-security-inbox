X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["814" "Tuesday" "17" "August" "2021" "14:26:42" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "20" "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil "8" nil nil (number mark "U       carnil@debia Aug 17   20/814   " thread-indent "\"Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24325 invoked by uid 550); 17 Aug 2021 12:26:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24307 invoked from network); 17 Aug 2021 12:26:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=SR8Idf2L3HR3O4MWxx3JymNcOWu/zpZ9D+3PVFVIQik=;
        b=t2VeWmZy4NL9Gf8GjXuff66J6FVTqoJI874Dodl3VyahTFYeNR/yJ11OeZYaZqSb6y
         rs7/f/HOBDNMiHSQydKiDvaKQElg4Cq3aNz60jGIzj0VwFXOeHsJfJ1EFUedW6FgsSu3
         R+Q7v/PTHxGmvW9h1VQaLg21QKwuytZKo2LTjkw19SXc+Fphf9LwtrOre1DpxkXGRi/j
         cQ4k5ELKhnye8hVpTI9ZQcWXW8hnHk3Vj+XjIXkYUDY5PXs2A0WgvPZIBqECynUafvFL
         LPSaBI8wy8INJxJS3AZCna9nCVCKJGenpR/3N+dYvXDTJ83rS9KFutXMHqWAJRrVll7p
         hP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=SR8Idf2L3HR3O4MWxx3JymNcOWu/zpZ9D+3PVFVIQik=;
        b=FhwnPxLmZ5/rv/8h/qCxw8gM/xsR1jmlieeoVpDuv3nezPg+KpzNNeDiJEVyxE5j/p
         cZQ3t30a7BSWlOxMS8SqT+N2x5nDOijKWTf/fNz4dRsoU26xwFRDvQ3M9UW0Kyn37NqU
         aHxnz+ckW1HdJWRbybrWO1yl3TvkawI7+EWZnDuIe+g+4fYNx5pJLAT5l+wgwA0lv6r4
         3aiefoxVCe6SsYMZew8bhiH6hTEb6xaRng1d0okeNkRELVtFODRvcmnoO4BI3PKCYKiG
         pzfxUWk97QMwzfo1Mx8Ph6VI1XznAyesUiyxSvEe0wgo8XzRo1dDMQ34igQif1KH1Suc
         Xvdw==
X-Gm-Message-State: AOAM530jNMz+PQupM5oqCRmtwivGX+TzuZ597OfSfhSsOXJlruZRslCK
	6nsTVnFW1DJCLjZBVyq5f6c=
X-Google-Smtp-Source: ABdhPJxxM+lZiweKHf55d16NiY/F69g7d+OG1Uo45aGbnzQ1xn76bCKCJtv22MEHY4GN/w9WD6LGdA==
X-Received: by 2002:a05:6402:278b:: with SMTP id b11mr3785675ede.339.1629203206337;
        Tue, 17 Aug 2021 05:26:46 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 17 Aug 2021 14:26:42 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Wade Mealing <wmealing@redhat.com>
Message-ID: <YRurAomxEDQrxY+i@eldamar.lan>
References: <CAFcO6XOFPEGiO_HwajTB3zA9d3jyhUwDX742huVhaNtQy0=TfQ@mail.gmail.com>
 <CAFcO6XP_-WSEzDB2E=r90Yk4sXwUjo6fRsY=E+ZoAYunpry=qw@mail.gmail.com>
 <CALJHwhSkYWmBk3u5nBnOZfSskksFPP6k9oFfWGdtDpbr1yVFAA@mail.gmail.com>
 <CAFcO6XOYL=EN3xkkyE72gR_tau+3=BhrgNub3NYtR1isr77MbA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFcO6XOYL=EN3xkkyE72gR_tau+3=BhrgNub3NYtR1isr77MbA@mail.gmail.com>
Subject: Re: [oss-security] Linux kernel: nfc: null ptr dereference in
 llcp_sock_getname

Hi,

On Tue, Aug 17, 2021 at 04:17:38PM +0800, butt3rflyh4ck wrote:
> Hi, MITRE has assigned CVE-2021-38208 to this issue,
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-38208
> 
> The CVE-2021-3587 assigned by Redhat was 'RESERVED' now.
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3587
> 
> There was some confusion here, Maybe CVE-2021-3587 should be 'REJECT'.

I wonder if it would actually be better the other way around, but
leaving the decision to MITRE CNA and Red Hat: Several downstream
Linux distrubutions seem to have already used CVE-2021-3587 in their
advisories, so rejecting CVE-2021-38208 would seem to cause less
turnarounds). But I have a biased view here, at least Debian, Ubuntu,
Slackware, Fedora and Mageia used already accordingly CVE-2021-3587.

Regards,
Salvatore
