Received: (qmail 1734 invoked by uid 550); 12 May 2026 17:53:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16106 invoked from network); 12 May 2026 17:45:01 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778607892; cv=none;
        d=google.com; s=arc-20240605;
        b=UHHcRZ8wWFa7pyj358Nc/o5EtOmwHx6BY0q1v2i16g5i4hCiUTJG0G1nAeVB9k07O1
         /hGBwbQVhJNxnwEmcgn8uJPZWTAIk58l5Ik5zao3q5uCVnrf7bdY0CIXBgp8gkf5euP1
         TxRC/qNC8O4Nn+hnJMCt0DWx1wF+a4DU+ajwzuSa1dNixOTXqBN7zNm+BTnjU/Ryjfml
         FwjB7i5f/nkwvR2FMRFTsyHyugwYM8fg7hiUYoXBYGQOHuyjTzV5hl6mepQK/wIz3C4y
         6X1Ltat44xCjPx3Kb786oBslXw+TvjLFFnillPa6I12sKUONjySgSHVNsLnCGegmle/q
         1Btg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=He34g7EKoIhtT5DqKcaPg1xUM6bj4XkfT9Hu/38ouMM=;
        fh=rxgFuEFYYhL06fHm1vQdhE2eGin8+oowWiWcxZ33+4s=;
        b=iRdSTM4iCrAsW5gcz5eDV8AwGprC9XnvXzjjITAluGqOSO7amMKvzpj+uYh+xi+crE
         IxdxBNkKHxGzI2gU19Lu9ewuEkF/RFT3/xzm+C0ZUPP/H5+2D1MynDzBmokfQxLhfFbW
         ecOAedmxrse0QLiCqCUfIDbhXWoIaGuXBB4baKk/Js5U4UyunjpugszfbgUEhGE3TVTr
         WJnwdzwdLnkRY84l8pgX+kvZGqZ0fCnRYwZrhEuA2o15avLB60/9vHO34U9/7fHhC+AH
         TJL7xYWi/adu4UalnzJg4M3RMVENfkwEOa5PsCR+1bJJS5Ay8XWOFGIqaEEMbgbYgGnp
         MtOQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ilia.ws; s=google; t=1778607892; x=1779212692; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=He34g7EKoIhtT5DqKcaPg1xUM6bj4XkfT9Hu/38ouMM=;
        b=IeyI5d4wFQ9cVQ23QQd74YAGb2AySdSLD1Poxd5xfGDA32tdthOH/c8BBCdF0oNVnb
         8FHD8Vc61dehUm1bJcwARBTa7GSev7306cfbhseOg8rTHjBVmXGJj+KMp5k+nyByAETM
         0JyDU8ywf6xV00edTkhOQAAJ0Pvg56/bUQlQkY8j8xIfAJStrt3VJdiIrLfz21hg4FN0
         /zjnrjCyADUxcXPODBnrhdkWmViMyIpaBEQDFRIJwMSvXprubSKd6JjDPxdGMfD1sai2
         XVGCc0wJm5U8Qx6jKMbAH/GeIT7VwdQzOUSHljRPh7rtkOlmt//QpeVNcJ0TQk+bcZWG
         17ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778607892; x=1779212692;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=He34g7EKoIhtT5DqKcaPg1xUM6bj4XkfT9Hu/38ouMM=;
        b=Kc8j/LvdOAGlLxy1Jt00WPnkvAAAEEToJKX6uwwfR8B7I913N6HX3bhOLqI0l9/f17
         nxzCsm9UYEcsL1PgTwtSB0xMDq6sC9BeQYaOHOk1zqBRUnxDsxm2G9j9vqqqC91FHt38
         2Y4xNhigWq4qeo21GU6zLxizMzmKTv2mnJQ2U73femfXzpeE8l90AM8FOvDdT5hO6TKr
         8Ko7+lnjIrbWKmQQYklq1GLqLf+THMDXdlwxhWfdseyQVI1Eh4BmNvvq4Z4FsaNlq+zZ
         6ezLre/QPVSW6pA0UFHLdoe1POD+0CsSzRxiILnwhG6HsrYKR6RvGBZmVELila1dRe+B
         atRQ==
X-Gm-Message-State: AOJu0YzBQ0bbaUQqpQpEWjvtFYNS9LxCRXge9MRUzMUgSxEyIo7hwNrG
	U0Wk7xT3H8A1jpkLRDUp73hjo533hPqtQ+6WTNNmcY/1+7lJVbH75ul8BKHmNJtQM4TIsTaq3uF
	paVeyAELFLJ5sRZK4Rnb0uBUf1ZNYSl1WCl2JSc34
X-Gm-Gg: Acq92OHgzMhoNeV2tIYbxoUvlv18PPD1tCmh/WjxaNDjotqPBoDOzycryC3U03sX8XM
	CbCk5zF5IJ7KbBaISQoTPLLNTTaW1Keyu29phiMuLYbEk3ws/KnnFcUnOnRqxd+2yjibxZU5f0V
	D1w1v1NTY5VBSeoSeoiaDhLnDZcVeEmVKSjc+gAJdB78UrObHCUVNtGP1J3LamwYbNNdpH7fid9
	MZfCnI2T6L+mENAIFC4oL+Pe00dtAu6Qq0bljh7mnBKQqk18FQ8sUFv9aQIuNS7/Nbn38HoUFrJ
	wBOT59JrGmUUxkgOmca43riAg4gaT1ndGC66WY4Z4xcGAyB5DsKSM3N8hA36NEj6cDQH
X-Received: by 2002:a05:600c:3510:b0:48a:568f:ae6b with SMTP id
 5b1f17b1804b1-48e8fe500c4mr53435815e9.7.1778607892035; Tue, 12 May 2026
 10:44:52 -0700 (PDT)
MIME-Version: 1.0
References: <958c7edc-400f-44e9-aac4-78161e999db4@pipping.org>
 <20260510074756.GA17210@openwall.com> <c67530db-c586-4921-bc3f-67a12e389eb1@pipping.org>
In-Reply-To: <c67530db-c586-4921-bc3f-67a12e389eb1@pipping.org>
From: Ilia <ilia@ilia.ws>
Date: Tue, 12 May 2026 13:44:40 -0400
X-Gm-Features: AVHnY4LFt-J2BvxjH-Rfz8UKVhOuaJtt6KeNfvNCBtbASbqSHFbyPrx-zNRWBgY
Message-ID: <CALkpNnQHhjgua8=6iH+L+5hB1AgcLeJTV9Js_9uQ4OJA5Sd+qQ@mail.gmail.com>
To: Sebastian Pipping <sebastian@pipping.org>
Cc: oss-security@lists.openwall.com, solar@openwall.com
Content-Type: multipart/alternative; boundary="000000000000998c0d0651a26b1b"
Subject: Re: [oss-security] uriparser 1.0.2 fixes CVE-2026-44927 and CVE-2026-44928

--000000000000998c0d0651a26b1b
Content-Type: text/plain; charset="UTF-8"

>
> > CVE-2026-44927: In uriparser before 1.0.2, there is pointer difference
> > truncation to int in various places.
>
> From my perspective CVE-2026-44927 is a low-severity security issue that
would be hard to exploit in reality since it requires an actual 2gb+ input
to even trigger. For example, in the context of PHP (which uses the lib)
you'd hit the memory limit long before this even triggers. Therefore, this
is "Low" severity from my perspective. Given the input size, it definitely
doesn't have a remote vector.

>
> CVE-2026-44928: In uriparser before 1.0.2, the function family EqualsUri
> can misclassify two unequal URIs as equal.

I'd say this is more nuanced: Low-Medium since this could theoretically be
abused to bypass certain restrictions that rely on URI comparison. It would
really depend on the consumer; in most cases I think something like this:

CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N
  - AV:N - exploitable via any URI that flows into the consumer; remote
attacker control of the compared string is the common shape.
  - AC:L - trivial; PoC is sub-16-byte ASCII (file:/etc/passwd vs
file:etc/passwd).
  - PR:N / UI:N - anonymous, no user interaction.
  - C:N / I:L / A:N - integrity-only impact at the library layer; equality
returns wrong answer. No direct C or A.

However, it could go higher depending on use-case, for example, C:L when
the consumer uses uriEqualsUriA for cache-key dedup or signature replay
protection, equality bypass can leak data scoped to the wrong key.

In some extreme (unlikely cases) it could even push to C:H/I:H when the
consumer uses uriEqualsUriA to gate access to file: / data: URIs (allowlist
check, sandbox boundary). file:/etc/passwd vs file:etc/passwd resolve to
different files, but compare equally; this suggests an arbitrary-file-read
bypass.

But that's a stretch, and I wouldn't classify it as such, though it has
chaining potential.

Bottom line, I think somewhere in the 3.1 to 5 range seems reasonable.

-- 
Ilia Alshanetsky
Technologist, CTO, Entrepreneur
E: ilia@ilia.ws
T: @iliaa
B: http://ilia.ws

--000000000000998c0d0651a26b1b--
