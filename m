Received: (qmail 5366 invoked by uid 550); 21 Jun 2023 11:36:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16342 invoked from network); 20 Jun 2023 22:06:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687298787; x=1689890787;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lxrkbEV1+gWdbpBOno5fYTOYcqDL6HEejEadz9TGcj0=;
        b=QgzGNB0mmfqnsPZE/XQU6zCdf9L1RpZ53RIFGxFeE35xlW3R4g9nPtpYxITXuA3QIG
         tXvf5t80Bgl5bO07bhDf0SiCKj3KDYCHgIaJ+4G9qPrN7h/PDRco5OQMbRQqFFGcdEYT
         rkNIW5f6F/PTKjckuD7uRIdd0+fZkqefJRPXJF8PWnwBvLZ+PWF+XBjWcZRm0D6CSxWb
         1crOFEkt72fZtuuWKR00vNARqRMo8w3o2wv///Z6hV8EAP0hveW0DqJaP5e3euWc1T+7
         YqEBHph+Yj1nCORbK0Hfh5NgKtXg18Z5X6UhCg4VgfTkJFjMw7IY5UqwDa8Wc4hGLQAG
         HsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687298787; x=1689890787;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lxrkbEV1+gWdbpBOno5fYTOYcqDL6HEejEadz9TGcj0=;
        b=WuA9G4Q3XL2i2S4m+BvhNfxTlEWtwvODOjQaSUV3gsT4w4Lqv86l6dX6kexA7yQE4g
         dpDUAxyugXr9rvfkgyrxxKB/RCZ2m3T8TOC54L30/m9dYIxbRtsIohx6o3zZrr0wNcJM
         uTDoZ0OAYZd3ijbyf+VWWcmA5lipN2bsLjwGqFZUEEVQmNYHnGUo1yEqJsluNrWdFwP5
         Y2Yr9wKNGYXoeHVWgEwTsJKyhUXng185XpHzh1gxCzv328OwnItg6kIc6Y94c/zyhT1X
         p5oAfiyi3obhaDS64oHVj3Eg5sjcCan/iXM9/F80Oktfy+dJ6hWoWpDTAqN+r4K3dnAo
         22+g==
X-Gm-Message-State: AC+VfDxBzfUiphVKdeNis1YgC/ssRN9SLaHmKizcSTCjBlAwO4lWCelS
	tZbKze/bWVGCzQo7CnJJax3qO7wAQWV2rvvdjfNqFMVje1EIOQ==
X-Google-Smtp-Source: ACHHUZ68C1tnI40kPGWe8Kgbu9Y3Q4tk9cxycP3jZGBFLEBiCE7jiErKiGa1Ijn6IdDAMY2iQtaicO1FRmuYp1n8KvM=
X-Received: by 2002:a2e:3a19:0:b0:2b4:73bc:da89 with SMTP id
 h25-20020a2e3a19000000b002b473bcda89mr5394411lja.12.1687298786609; Tue, 20
 Jun 2023 15:06:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD--HN6u3k6ofV07UPo3Bh=HyNRngUV2yz9OkzD5t9m3=A@mail.gmail.com>
 <180de0a9-351b-a63f-4e2e-26e3a44b7099@oracle.com>
In-Reply-To: <180de0a9-351b-a63f-4e2e-26e3a44b7099@oracle.com>
From: Travis Biehn <tbiehn@gmail.com>
Date: Tue, 20 Jun 2023 17:06:15 -0500
Message-ID: <CAKtE3zecEsfMQKjnAcdVwUCTfXKOZ4_UXV_KvgA=ZL6PG3jZ_A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ce54b905fe96dc88"
Subject: Re: [oss-security] The AI chatgpt writes insecure code

--000000000000ce54b905fe96dc88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 20, 2023 at 16:47 Alan Coopersmith <alan.coopersmith@oracle.com>
wrote:

> On 6/20/23 09:22, Georgi Guninski wrote:
> > chatgpt is an AI language model and it can write code.
> >
> > As expected, it was trained on insecure code and it writes
> > insecure code.
>
> Also as previously reported:
>
> https://www.theregister.com/2023/04/21/chatgpt_insecure_code/
> https://arxiv.org/abs/2304.09655
>
> --
>          -Alan Coopersmith-                 alan.coopersmith@oracle.com
>           Oracle Solaris Engineering - https://blogs.oracle.com/solaris
>
>
ChatGPT will indeed generate =E2=80=98average=E2=80=99 quality code. That=
=E2=80=99s absolutely
ending up on GitHub and in dependency repositories. IMO, the situation
hasn=E2=80=99t changed for us, more code than ever before growing super-lin=
early
and tools that produce a bunch of noise.
On the other side - future coding buddies will be able to use Retrieval
Augmented Generation for policy following to generate high quality code
with more reliability.

-Travis

--=20
Twitter <https://twitter.com/tbiehn> | LinkedIn
<http://www.linkedin.com/in/travisbiehn> | GitHub <http://github.com/tbiehn>
| TravisBiehn.com <http://www.travisbiehn.com>

--000000000000ce54b905fe96dc88--
