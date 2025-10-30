Received: (qmail 3352 invoked by uid 550); 30 Oct 2025 06:15:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3304 invoked from network); 30 Oct 2025 06:15:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761804903; x=1762409703; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P3T6sjOY2TF+p1mlVDk/e8U6xCFjeuJA7Cz4LrZODsU=;
        b=URyzEDHMh3dJscaoGxHO0aN0rqfpNkGwOHncMXQDOjWQoArxetnwjwOArc7CJMOnws
         r/I4Qd/VcMBESj2Dp72OECEBby0WqyxLsMJqSXr5e8yuRddWVNKSOkx9RQenCK1B11my
         ZME/Wv3z22EeKRBvvLvKDfOcNTpdeOJFdPxgdRYPLu4qkMzj2/eIsANdeXrCiVsETqY5
         SE/XwDVuKCtBegMvtz5Sp59imqjAyEyEy5n1TXOAgiBk33nRJD+3lxRYmOomodM8/+X7
         Y0O2kKWuiVEP12CxDicRDPX4HGeDJ7QpfBHs6h4drxMW/VNgwD2ZASl7LZ3Pj4AyAWX1
         +2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761804903; x=1762409703;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=P3T6sjOY2TF+p1mlVDk/e8U6xCFjeuJA7Cz4LrZODsU=;
        b=DDm3PEyLFy/6gk32upMh6/c5IaX6F0R/+ybQAzN7IXZI91NnW4rCXiKJsYo9AnFSFZ
         +MKlc3nMVb0LTl1apulrNqscpotGE6AIjMlgyRaNr6CZpVHdj+p+CEy8lLm4YXe3uid8
         mGMY9wQyT1+ioreABtA3ckHG9jjQp8SqUPdgyCCxUYKCDBwm8C5EegIHK0aBLDgUyamB
         31vaHOEAmlqPJTtSOUnDtlGH7X+hWPl+losPXnQiSN2cMCKAW+jCyJkMvW5xTiFf93xO
         5dIFF72NSXC6YZCNkG2/dPTRfX1JzNqGYOpftmiwCUu6s5W8iixL4Z2Hf5/yEu6EHNYk
         3Z3w==
X-Gm-Message-State: AOJu0Yz+wrIaV6FwRlFvJFttUnfLukHPbSz52wdPjtFBrah2ko9SDst8
	DtLsxxrm5c2+kPQvtBpxsFSm+W7lu2p8AKKdU+Kz0yX1cCWs1qiOnIPXyoUm1Nyt
X-Gm-Gg: ASbGncvOryJNQvzS0Brfvpl0nJVirAy7QD4bEX6l15mOvRlyGGcAB+Af5cB5nG9yb98
	OMdDeeSQR7MgwNH23gydz2R8+Y1sbl6Z47JHJHANSr65jjxn7iOwCNvgf4EneuSuSA6UP586ygd
	qpQOwV6+zVVV8DqlGRY/gQnffslmJc3zShS//8pmSJ2p/ls+zvOrdEV0xuzJLIJB8D7mdNMfEA6
	KoMNsGnxKCimdNVVPgCeJw+XeW1XCtsajjPboqNs2LtDNusOQm9DW0O1zyUsyMNeU8ffEl0iIOk
	Kvhxpg3vKHNHx3MJsemCFOzvv8B8mlAqYxtFLbl5bRDVDiRXfmL9ByWeEuUorz0tAp9Wz8v3yzb
	yjwp1R5rJBWv+Ug/yjDdQgfij0omanNVJTPc+6IVySrVyfmFIGD/qkBO+uBfueKqa/JWIi+HgTn
	Pn4Vsgv/mY4Wq+2ESUlViDh2Dor/61Obs5Ug==
X-Google-Smtp-Source: AGHT+IHwmvbqHwilmoYSHp6MDbmzKW1tIAgN4ZMjjZY3CZrF1Tq1IBdkwTZSDdPfS1FY+Fwtmi8Efg==
X-Received: by 2002:a17:907:3e12:b0:b6d:6a35:999d with SMTP id a640c23a62f3a-b703d382cf5mr632512066b.27.1761804903289;
        Wed, 29 Oct 2025 23:15:03 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 30 Oct 2025 07:15:01 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aQMCZWK1xr3-3DeO@eldamar.lan>
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
 <aP-rxft9ra58z9EZ@yuggoth.org>
 <CA+qj4S-=TtjPN5Us5tva1TUo7a2MJKzpXweiQCM=QLMwcq5Xjw@mail.gmail.com>
 <6c9a4094-6af3-4aa3-940d-0d19505da3b1@pipping.org>
 <aP_L7mY0OXB2iDmk@symphytum.spacehopper.org>
 <9eefb12f-5de8-4638-a4e8-b0c309e81cec@pipping.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9eefb12f-5de8-4638-a4e8-b0c309e81cec@pipping.org>
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Hi,

On Mon, Oct 27, 2025 at 09:40:35PM +0100, Sebastian Pipping wrote:
> Hello Stuart,
> 
> 
> On 10/27/25 20:45, Stuart Henderson wrote:
> > On 2025/10/27 19:51, Sebastian Pipping wrote:
> > > Also, fixes without a CVE will not be backported downstream.
> > 
> > That depends on the downstream.
> 
> I'm happy to learn which downstreams backport security issues
> without a CVE, in practice. Do you have an example or two?

Another very recent example is
https://lists.debian.org/debian-security-announce/2025/msg00200.html

It is about:
https://discuss.tryton.org/t/security-release-for-issue-14290/8895
https://foss.heptapod.net/tryton/tryton/-/issues/14290

While it would be nice that a identifier exists for this issue (has
not yet happend), this was not blocking doing an update.

Regards,
Salvatore
