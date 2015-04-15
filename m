X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["389" "Wednesday" "15" "April" "2015" "12:28:40" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJSMc841k5u-ospUMU80C7uD2eZjt7LZs5m43GUDZBaLA@mail.gmail.com>" "18" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041519:28:40" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 15   18/389   " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<20150415205641.652c8667@pc1.fritz.box>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" "<20150415205641.652c8667@pc1.fritz.box>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22217 invoked by uid 550); 15 Apr 2015 19:29:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22196 invoked from network); 15 Apr 2015 19:29:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type:content-transfer-encoding;
        bh=JiECebZxAbKwvWoXX6WC0r5+SyPt8Yn3yanf2u5DUTU=;
        b=jsrCVxXM58RsrmcaoGss9fc7Q600eA5OFVEAXYiNt0zsiI4YY5W346ex6LIQbsG4s9
         BDI6zi/N/tX1Ve060zgImJYV1D+wVzI9ScEYZhVVmJ2tePUQLLghDZNqimNe/IDBh7QJ
         xUxv01zX31X1AsyUkI50ummDSB1vBRAw/P0l5dVXs6sJrI4sUwpYEG1sgUcZ7TB7LlBO
         ZUOklFdQrnDMxlFn2PrXWvMnwYAUzbB/1jGjBuIrF5ZTkmZ1kYjMgnvRm01YTKijEhdp
         GWYxipX1NelSdvcHoUunTYP9mG5TG7HKKxvaKE+TrD11up3YtHptclMC2MjGBIkzcB5/
         AKGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type:content-transfer-encoding;
        bh=JiECebZxAbKwvWoXX6WC0r5+SyPt8Yn3yanf2u5DUTU=;
        b=IlfBKwjcKliCPt81t+ustNDhhL3D8Mq501yg9p+pHTzyoDmA9kTuLKwt3aYERDDB6l
         yNQKxAefkT0Xt4LQzvWLWee08l5a6/ezvnlVr+G8aL7yDebepjTu8g6a5JlTXdrdYZCw
         0BUf1aakl5F2DbPaB0L+0nJXYm3ReeQPi1TUgruubBJvU65nebKUX1vaKPGiwV+UJp2J
         q4cSOiPO6jdXKAusR3A//WQ6bfs4sl4U5P/BdBOCAO7Xnuzj/7sxL9tYf/0neNyLEbWv
         xfNP7PWQ/lX24YPkGNv3ZZ5ZZ1K5VolhUu8D/m8M93ZULZMzU9porgetI8nnOKb53fPO
         UScw==
X-Gm-Message-State: ALoCoQlLPtCk+qTgg/JP6XC3MsetGq0P4aKP4+CGIGqV7ZJmP4PvgkcTNmyOp3pnJ2yIYLawAICz
X-Received: by 10.229.219.68 with SMTP id ht4mr6577551qcb.10.1429126141127;
 Wed, 15 Apr 2015 12:29:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150415205641.652c8667@pc1.fritz.box>
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
 <20150415205641.652c8667@pc1.fritz.box>
Message-ID: <CAJ_zFkJSMc841k5u-ospUMU80C7uD2eZjt7LZs5m43GUDZBaLA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Apr 2015 12:28:40 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On Wed, Apr 15, 2015 at 11:56 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
> On Tue, 14 Apr 2015 06:30:41 -0700
> Tavis Ormandy <taviso@google.com> wrote:
>
>> WORKAROUND
>>
>> I highly recommend setting `sysctl -w kern.core_pattern=3Dcore`.
>
> Typo, this must be
> sysctl -w kernel.core_pattern=3Dcore
>
> (kernel instead of kern)
>
> right?

Oops, thanks Hanno. You're correct.

Tavis.
