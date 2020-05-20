X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["462" "Wednesday" "20" "May" "2020" "11:54:06" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD9TP+wyFuUaPpeA1pMv=yLcTUdw1JXmgXxS_WjDChj40A@mail.gmail.com>" "16" "Re: [oss-security] Remote Code Execution in qmail (CVE-2005-1513)" "^Date:" nil nil "5" "2020052008:54:06" "[oss-security] Remote Code Execution in qmail (CVE-2005-1513)" (number mark "U       gguninski@gm May 20   16/462   " thread-indent "\"Re: [oss-security] Remote Code Execution in qmail (CVE-2005-1513)\"\n") "<20200519170506.GC22032@localhost.localdomain>" ("<20200519170506.GC22032@localhost.localdomain>") nil nil nil nil nil nil nil "Re: [oss-security] Remote Code Execution in qmail (CVE-2005-1513)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3286 invoked by uid 550); 20 May 2020 09:56:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3108 invoked from network); 20 May 2020 08:54:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=AvDnl+N+7X5zD6FOAc3jNz1MkO5zuAeJ7g5l+k43Pnk=;
        b=qqEDyMYA5cuRgdlu8TTIM7p3Ux7o6zZhVoiKjeF55Wqxbu0TyX2eSUOLotrpsDa4A6
         ymP2xdGKqjoYWoeK5sbkccM0nh3EH8zzf54WgoQc8sSU6ogL/YnQXH+bz6ROGEamZLmL
         xZE+j5iEaR3LSqQKm0IbSCk+If77TfzBHjiBcc142L522iAkd+p5yCzmQN2bgufwQea5
         uc4b/y0jBL+FbHRlG1UxUko37YX0SybDXCfnZBE8J6+jixv8pr0PiiY6z7/0rcN7SPvf
         UA+sR1nOnBgGvqXAKh50pLIGFKbSxv+HdUwOLC7TERyRwMf0+JT5Lt5pJCBzBoKrW8Ee
         +LXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=AvDnl+N+7X5zD6FOAc3jNz1MkO5zuAeJ7g5l+k43Pnk=;
        b=NBpXz29t3bhnDwgcq4SUM690TEnqUJibdJH1L7maz/vJApdtabnxgg8RfzkvKrKB7L
         ECUI7k9R0MQ0iTTDcnUdk+9xVgXTot/d4Pn64sAvN340vCTDdyhcy9IfFox/SoNzsuGh
         OILsi8BN7MMkh1WMBfYIyoTwbfdCFAqJ3hEAxV2SWsGr0YVbpYQ+hGWtw8LXc2pqR08b
         gZc+wcFXcbcLPSMU4uE1VDowuV+9+9TjiHeodOmP+d4vN1UvegfSoLQelyMl8Is2BKIV
         qV+VVfRDVHD2QttKn74mPI+z15FAy4oK1zLjO9ioNZTi/rsGBrjXNvlCekK7hemcaXTH
         enfQ==
X-Gm-Message-State: AOAM530VlYH0vqCjzt6I7/u2Yo40uHgHyWJ4vuGKYzURaO1s+UEqFJlo
	rxgOU7o9VGiX/rs/szwyLuTpPDn+c9+sFN5opHLMY0kN
X-Google-Smtp-Source: ABdhPJwDNRcovGHylLBwoggH412CJHPm1zL1GjLU4/SO0uFueFOAZATQqo6GtQK5Be9Y6pPwN0b5TPPo6ycTxNYrH2U=
X-Received: by 2002:adf:82b6:: with SMTP id 51mr3237238wrc.102.1589964858009;
 Wed, 20 May 2020 01:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200519170506.GC22032@localhost.localdomain>
In-Reply-To: <20200519170506.GC22032@localhost.localdomain>
Message-ID: <CAGUWgD9TP+wyFuUaPpeA1pMv=yLcTUdw1JXmgXxS_WjDChj40A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 20 May 2020 11:54:06 +0300
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Remote Code Execution in qmail (CVE-2005-1513)
To: oss-security@lists.openwall.com

On Tue, May 19, 2020 at 8:17 PM Qualys Security Advisory <qsa@qualys.com> wrote:
>
>
> In May 2005, Georgi Guninski published "64 bit qmail fun", three
> vulnerabilities in qmail (CVE-2005-1513, CVE-2005-1514, CVE-2005-1515):
>
>     http://www.guninski.com/where_do_you_want_billg_to_go_today_4.html
>

I should have chosen better meme in an URL.

Did djb award you monetary bounty?:
https://cr.yp.to/qmail/guarantee.html

-- 
https://j.ludost.net/resumegg.pdf
