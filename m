X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1090" "Monday" "22" "November" "2021" "07:57:25" "+0100" "Marcin Niemiec" "niemiec.marcin@gmail.com" nil "42" "[oss-security] Re: CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable" nil nil nil "11" nil nil (number mark "U       niemiec.marc Nov 22   42/1090  " thread-indent "\"[oss-security] Re: CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28254 invoked by uid 550); 22 Nov 2021 08:46:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18074 invoked from network); 22 Nov 2021 06:57:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l0c/Cyl81DLbvHhgQ4w4UbCqd3eIA64kH0Qsy4gYnAM=;
        b=HLc6F6wnKahMS+FK4cv2urzp6yN9Vc9RxunHV/984k+ASlNg+Hg7wsEzmq47yr0GiZ
         D1g1cR+W8DqKNacBXVjbSBPwcLdzc5cJnnpI4vCQsDSOQMpszLFNur7mdbWsDAFXq6wT
         M6sT7Hp00rSFqypjmFk+S/5Qj3hIJp9Y6THwU4//AIjJyjTqsUUi/BeBU6xzkePCXsn5
         XgpbFCETEmUQogWsT7jvbRTaoziRVc4nRZ76tXWhb9njM6QdmdwsfMzCx3ppit7xOPPD
         V9orwr71eroFrGILJGLCX+MX9ph1ARXQTiau7prv4cUhxSo8nEkZ++Ux3UECqY4NeU+2
         e26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l0c/Cyl81DLbvHhgQ4w4UbCqd3eIA64kH0Qsy4gYnAM=;
        b=BMdV33/kUgPG4OCTpCdh6JP4j6wQqHqVrSqmzyO/7TsTwYLutUbPoDdKsrFt0qIo6B
         2ROZSUnWwvWvJHkx64qmT4czHV3xT2zCskHByiyX2ZWI3JlqX7PmScMVogb7qbpZW7+F
         iiY+0byXciu1AnFQ+7QRIx+g9QinCwsGWDtLDeKyR/Dam2ET4SVuGXyDbwVhitfexr2u
         QVO/aXgOs3z6esO2YNhjWp/eJe3gQ3v092weCcZRrDp8/f1McZ75jmiheD04HN01I/aE
         QqmnNhXhcDk/ireev6P89D45b8VRophUhw+Q5tZTrYYTAeiPPFxTqyVtp9KN8wgXvy05
         pIQA==
X-Gm-Message-State: AOAM532VIbWnvkeJs45UJlGzlhBi+Z75AdyFkHGsNSNSqLXhVWwT1ger
	bbdP1sM0CGfaLF24Y/mB9Sx2y1C5CNSC4G5iyPg=
X-Google-Smtp-Source: ABdhPJzKLsF8whEfdqrQWL//E2ifzJted4scPlyihg+zaFo9zDqIK6t+UHaLyuqFlgQCYfA083XAfm1Seq41gJxQiVs=
X-Received: by 2002:a2e:7319:: with SMTP id o25mr50110643ljc.320.1637564254537;
 Sun, 21 Nov 2021 22:57:34 -0800 (PST)
MIME-Version: 1.0
References: <CAADJU10-Sv+qtmNd8PWgx_jSfgOQ4qW7gNARSNmHP8xQEs5y_Q@mail.gmail.com>
In-Reply-To: <CAADJU10-Sv+qtmNd8PWgx_jSfgOQ4qW7gNARSNmHP8xQEs5y_Q@mail.gmail.com>
From: Marcin Niemiec <niemiec.marcin@gmail.com>
Date: Mon, 22 Nov 2021 07:57:25 +0100
Message-ID: <CAC8fJNZ9WakxS9tLqYtxkj3zQBU+==ZHvNM_-DA=-FiWzvTySw@mail.gmail.com>
To: Zexuan Luo <spacewander@apache.org>
Cc: announce@apache.org, dev@apisix.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b04b2505d15b23a9"
Subject: [oss-security] Re: CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable

--000000000000b04b2505d15b23a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Looks good to me.

It's really awesome that you verified this issue and provided fix so
quickly!

Best,
Marcin

pon., 22 lis 2021 o 07:30 Zexuan Luo <spacewander@apache.org> napisa=C5=82(=
a):

> Severity: moderate
>
> Description:
>
> The uri-block plugin in APISIX uses $request_uri without verification.
> The $request_uri is the full original request URI without
> normalization.
> This makes it possible to construct a URI to bypass the block list on
> some occasions. For instance, when the block list contains
> "^/internal/", a URI like `//internal/` can be used to bypass it.
>
> Some other plugins also have the same issue. And it may affect the
> developer's custom plugin.
>
> This issue is fixed in APISIX 2.10.2.
> Thanks to Marcin Niemiec for reporting the vulnerability.
>
> Mitigation:
>
> 1. Upgrade to APISIX 2.10.2
> 2. Carefully review custom code, find & fix the usage of $request_uri
> without verification.
>

--000000000000b04b2505d15b23a9--
