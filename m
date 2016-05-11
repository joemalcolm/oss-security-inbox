X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["715" "Wednesday" "11" "May" "2016" "17:18:46" "+0100" "Ben Laurie" "benl@google.com" "<CABrd9SSJXuqwq6dm6dTKpXGcGy7inV7Ya2PU6JXw4ft_qFXijQ@mail.gmail.com>" "14" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016051116:18:46" "[oss-security] broken RSA keys" (number mark "        benl@google. May 11   14/715   " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160505112350.66f699b5@pc1>" ("<20160504124248.GA15148@openwall.com>" "<20160505112350.66f699b5@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9827 invoked by uid 550); 11 May 2016 16:18:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9806 invoked from network); 11 May 2016 16:18:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-transfer-encoding;
        bh=es0C6P1/aQPKoGfTS4hUW+Z/YAoa28TYUKS7zJKeJd8=;
        b=nvBNjw+IYPImwmb6krRTqijhdXaCXdKXlkT3DrsAUqxDSRVuWy9WIlf7GH2hj4SFmz
         d+sN420T1QMrLJZoGSWdcNbL3hgfXxmh0W2/WJLAiw5c9WTwPCkUPYsSfFFN5qfj2qwc
         zvgxHyuob/yA8IcvJEaXNCr/Ba33v9Pphz22DjvVMEnvdg/QRE2/ZG1bteCA/3FD12My
         fZPFp4ycJrJirxxhG8nF1sQBvXhdO9QOyAyx/u8c5xZTKUysgvOR/LzJGjFVIyyRp8B5
         P1fswpsk6L/3zNmw2bty7CSEI/5gAmgs+LaNZlJkXc0KMZAtJ2xdTT0JqCsziXNlIiAo
         UJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-transfer-encoding;
        bh=es0C6P1/aQPKoGfTS4hUW+Z/YAoa28TYUKS7zJKeJd8=;
        b=juHIE0k+YAsYzkeEMmy6s5aFTQr2shI9rr06gwAiKBq9akV6Ayjmnqv+LoYNe0LsvM
         NaZI+/WW/IPxV6W/u6zdZMYQuRdufiHxGv2+p+zMGSe8YA4kVBE27n4Tb0vPaacoixo/
         4yO1whbDTdnNJ93HevebKTB8RG+ISDZ8jyPh4d3UyTNOZyoA+LK2u0jSFbTRGIldAVIv
         Qag9Y9+vSQAzbpFseJDNHObRtf5qkZE1j8C1x7u7ik3EnSmdcdbwDDZyXdZew9jWpuzP
         H2GQ262FxhuR4tPLTpnI6D1dtfYcKshsqkv4GJ73utgZmzakmeDXHrMRiyCImh2FEdZN
         zNhg==
X-Gm-Message-State: AOPr4FUiKXfn5WDevbXgFVEC9kH6zN5ymj4NipxL6KAC+q10xXJHO/6cXfTe4j8RzmzbuqaH3a4Co0fkkY9T8dHw
MIME-Version: 1.0
X-Received: by 10.107.26.85 with SMTP id a82mr4226673ioa.13.1462983526410;
 Wed, 11 May 2016 09:18:46 -0700 (PDT)
In-Reply-To: <20160505112350.66f699b5@pc1>
References: <20160504124248.GA15148@openwall.com>
	<20160505112350.66f699b5@pc1>
Message-ID: <CABrd9SSJXuqwq6dm6dTKpXGcGy7inV7Ya2PU6JXw4ft_qFXijQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 11 May 2016 17:18:46 +0100
From: Ben Laurie <benl@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

On 5 May 2016 at 10:23, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
> As a background: What we're talking about is a so-called batch-gcd
> attack, developed by DJB. Arjen Lenstra and Nadia Heninger were as far
> as I know the first ones to use this on publicly available keysets in
> order to find vulnerable keys.

FWIW, it was actually me and Mathias Bauer in 2004 (which may also
pre-date DJB's development, I don't know - certainly we didn't get the
idea from him, it was Mathias'). We looked at the PGP keyserver data,
but we didn't find anything very interesting, which is probably why
most people don't know it.

To be entirely fair, we did pairwise GCDs, which comes to the same
thing, but less efficiently...
