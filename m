Received: (qmail 21791 invoked by uid 550); 21 Mar 2026 02:42:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21756 invoked from network); 21 Mar 2026 02:42:15 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1774060926; cv=none;
        d=google.com; s=arc-20240605;
        b=ijqp1XQF1HCBEXMMkE9FV9rytjrpSAR0e//M6JNPRLFvpWeEcrAhe8vlPTJxl6npYA
         xxMsTLQN4pH4p3PnppeiQeVF8sMs5rb0+hToaWcbsyB/MCzqDRnwnM5p8juXXrBlnEYq
         2KQyLbg72uZEQOu8y13Xmov+M+u4+pfqnnQ410mO256/sceTevtM6PePINZjbOqjBrTc
         VLC5wRsgzIfCsxwKQFH8GoGkyy8eSlUARgjEf2O4reMlbzNX64lkqaeSiaAb61MhgPq0
         U4hoGuSpzq31JfWgmmk4Tey1AkpsSe+ZcWvRHG3jxQxiTPrnD7PXz6Pqd69StgQa325Y
         fxKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0f+sBuP2wNE3kFY0ggcg6mx2nZ+wFLjJ6YYvHX2fICk=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=VqRMSASLu2r12uC/+PiGsot2XM39ibewSU9BCx3KG+yg2AYnZcUcyoaFriTCXPCZ3l
         2mvf50Hli3UI7gxFxnwIrIHAJmKsO0EoXSmBkg+xEwz7gxB4JP4bktNAFhpnLN0fOYmd
         Ocrn0k+kdV4RIalE6uYshLzq16E1TSlHNmJbGG1OpbCb2oqGOMjBMfyb0OSjajDqZq9Q
         9WYluZDScgC32+6SI3Yc9A1D04z5vcRbbeeoxacbOiZr9Vy0erM/8qjHSgdq9BRymZWL
         Z85N9+6BrxNG9epz+fjD106Lnx1SKXAR29FwtnhgwiiDWf5kY0GOgpN315vTDRL3a7yd
         FEWA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774060926; x=1774665726; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0f+sBuP2wNE3kFY0ggcg6mx2nZ+wFLjJ6YYvHX2fICk=;
        b=DbM06SZe0E5T75rKlPWZx0HQX9mnrDirJj597O9vGFZRhwa9uSnXzd9iZQndiWI+nL
         3zYI4svwTFe3KePdOIuSRflhq4zuuE7idyIY+G5PuaVh5wJ5h8e/FUTksd02EFxBiv9d
         Q8TR0guEtcRBU0X6vu4J6m+/EJAJJAG2MYy1oNDtbWW0/L6tBVDLdN9KD/woHbVc4xFK
         PJjh6r9tkhYP9+kYh5gUbmvJScy8V1RNg83NVwOCuRrGxws/WI4F3k1P8J2K2eRmhbRc
         1gE3TJcJbVnIjhLplNdCR8BFM2zKpzoKDJSS4jiMe52vLAwind2UaIPdP7ygucuOZBF6
         xO9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774060926; x=1774665726;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0f+sBuP2wNE3kFY0ggcg6mx2nZ+wFLjJ6YYvHX2fICk=;
        b=ApgDd1C7I7R4yLUqpYXC41+TJv4tDMZEbtPm09lMIPgsP7Ruper7gnARyzK6I3CNbF
         a4614/TOpEzynN/3bEb3/FmT5g5QQELmWWf7hAdB3xiPn8lQuM3DWu3Mxhh2q8KAciVf
         RFe9k8ePbBT0Ubocjd6pWQBZ0Ij/NzR35DD4zojHOWsGxl0P4HgGk1ZV4RipHHYxpvqM
         tgrRrkAiyT81krzgaF1yz+z8Jic1ObE7o6grQjdX7MksziWUPZTuoTBkJ4/bMk34tGZe
         kHs29OMl8PJgcqWxGKdXa6TkZ/ExvSjnFvFox0WdhQ1cqh2tXk/CkjwrbKGvQQk+26mh
         slgg==
X-Gm-Message-State: AOJu0YzUISocyJbDMWPwt+pQcarvesAgEtk+5ITfbP7DPirA+FVBk+yH
	fPy+5c8rHPqQ7hcbBCz7zDE75okidew0ANy2HfdSY4HdvwdX/A/CMHUfp4Ht3DiW2VO35VdnBMt
	yIpOEpbIBZMrm1XE/Us4M080RkUrjiMSbbw==
X-Gm-Gg: ATEYQzzmzR5oHNiOUN5iMtU2EfU51T52a/ZA7BNCZ+6G5TIb84kFszV5Qiqqjx9PGn5
	6+L4o+uvHbx0kkAkJgmdlZgM6b63fbHmwlducO4+J9Ha4VDT5brrc+D4YoZ3DuwKpByPPMmazz+
	7eECc1ECyI0iurw8xW84M8jkHwHBKKSFltc62y1y7qaUJe1U8aXVB1lHxGMTXxB5jr4UICE6/qJ
	7BBoy+WiW1A4XErXE4BJRUu9GdkJHFJtrwks29z5j/WsPEB4SXk0qtXgCL5AUTwtws6+X/khUNo
	FLsGHGICFmqfTNv3bXbxBAQL/ALdPr6Mly7bEd3/eyvpfsUppEVoWQef2g==
X-Received: by 2002:a53:ca41:0:b0:64e:9eee:4ef with SMTP id
 956f58d0204a3-64eaa7eb839mr4237651d50.46.1774060926290; Fri, 20 Mar 2026
 19:42:06 -0700 (PDT)
MIME-Version: 1.0
References: <6db25e1f-792b-4655-871b-82812dc0fd6f@oracle.com>
In-Reply-To: <6db25e1f-792b-4655-871b-82812dc0fd6f@oracle.com>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Fri, 20 Mar 2026 22:41:53 -0400
X-Gm-Features: AaiRm5152rY5lLwlMyNqoJoZNsJ0RkBBYPmFHiD-ZE6oPfq4TCWVyaeJL265VL0
Message-ID: <CAFRnB2Wop+HKvf4BbF_n8QNga2A1Ux0QTu-k9pXNcx01g2r3BQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] pyOpenSSL 26.0.0 released with two CVE fixes

If there are questions about either of these, I'm happy to answer.

(Both of these require misbehaving Python code, so it's unlikely that
either of them are exploitable IMO.)

Alex

On Fri, Mar 20, 2026 at 10:01=E2=80=AFPM Alan Coopersmith
<alan.coopersmith@oracle.com> wrote:
>
> https://www.pyopenssl.org/en/latest/changelog.html lists among the changes
> in pyOpenSSL 26.0.0:
>
> > * Properly raise an error if a DTLS cookie callback returned a cookie l=
onger
> >   than DTLS1_COOKIE_LENGTH bytes. Previously this would result in a
> >   buffer-overflow. Credit to dark_haxor for reporting the issue.
> >   CVE-2026-27459
> >
> > * Context.set_tlsext_servername_callback now handles exceptions raised =
in
> >   the callback by calling sys.excepthook and returning a fatal TLS aler=
t.
> >   Previously, exceptions were silently swallowed and the handshake would
> >   proceed as if the callback had succeeded.
> >   Credit to Leury Castillo for reporting this issue.
> >   CVE-2026-27448
>
> These are also listed at:
>
> https://github.com/pyca/pyopenssl/security/advisories/GHSA-5pwr-322w-8jr4
> https://github.com/pyca/pyopenssl/security/advisories/GHSA-vp96-hxj8-p424
>
> but with not much more detail provided.
>
> --
>          -Alan Coopersmith-                 alan.coopersmith@oracle.com
>           Oracle Solaris Engineering - https://blogs.oracle.com/solaris
>


--=20
All that is necessary for evil to succeed is for good people to do nothing.
