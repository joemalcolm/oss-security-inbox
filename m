X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1181" "Monday" "24" "June" "2019" "16:44:03" "-0700" "Matthew Fernandez" "matthew.fernandez@gmail.com" "<93CB7010-1297-4AD4-80D6-ABCC920929AF@gmail.com>" "23" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062423:44:03" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        matthew.fern Jun 24   23/1181  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.GSO.2.20.1906241135310.23351@scrappy.simplesystems.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<alpine.GSO.2.20.1906241135310.23351@scrappy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24109 invoked by uid 550); 25 Jun 2019 10:05:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3167 invoked from network); 24 Jun 2019 23:44:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=9R6tyYOkvJas+IyO/8OdghrlCh1A2yeaBK5rZ918Klc=;
        b=p6MJU8O6YC1+Em0OzX/6mtBmsdx6fYI5oE1+YVnj0I6jrjmxA0zFoQA8HJKo09TcHJ
         Lz98F6gdJSuBgjmfydbO7LYR0PdtlDCYTYBQJbQneAB/7BvaP3jmPCCCyRye/670tr9Y
         tMV1mKBhOH5mexsxyBEwO2gyfojJf3+z1DX/HkE0Mn/HuCnDBlwZv8sCY/s1iz8j8ECx
         Q2fKQVqBj7p9WrygyDjShgKzQUvseFEIrWiFlHr/2JS5+oVoG3MMf0lQrbLz7T+lY7YY
         6E1uYmPor0OHfQaka49QCWo1WQtNBfY3UR4Ivk+uAmaC3L7NwSerw+e9eanKOm7taF5t
         eWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=9R6tyYOkvJas+IyO/8OdghrlCh1A2yeaBK5rZ918Klc=;
        b=c3PRLMvccfcwqz5mndXsGjpPFYLLvJNYGgMF31JAaQkP0Xugxe4/XHQret7fsktJ5C
         JLoFO/ZPLMfIvqF77GJqNHPuhtSREcf2vETGYRDUalR91GBOhMX5bzXE6QbgALdTTicy
         VQOuwlJJWte+yuT6J8Wsg+zaFaCo8XQrG9jaD2+P37qrrYl2CR0LHtpI/X5qVODUXkp5
         jTiozC3pSCtPC0BhaS85eJLMzoUIsXmhIoHAQhkCOsLGO+i7aL2q5WILKJ2tiKhAKpkn
         KFjJuplZC9oODIk+TTONWqOB4qL5Zh+0eNT7aE375Dg6yXvnV2SegbETGo9ZVIfoXh1R
         B2vg==
X-Gm-Message-State: APjAAAWFxI8JqUu42HbiZ71sa0cZmUdsgHnB6ElrdKGQb/tISSq3ROCG
	u7h2w0AG6m9zmsEJ+mFm1aTmTwOd
X-Google-Smtp-Source: APXvYqyc6P0WOydEgstjl3TzwSPkQfxuRn71MCygzPURlxkGUVkbLh3dTIrEyI3vK7Atbkzc1bMwyw==
X-Received: by 2002:a17:902:d20a:: with SMTP id t10mr42036494ply.52.1561419844631;
        Mon, 24 Jun 2019 16:44:04 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de>
 <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
 <alpine.GSO.2.20.1906241135310.23351@scrappy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1906241135310.23351@scrappy.simplesystems.org>
Message-Id: <93CB7010-1297-4AD4-80D6-ABCC920929AF@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Date: Mon, 24 Jun 2019 16:44:03 -0700
From: Matthew Fernandez <matthew.fernandez@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com



> On Jun 24, 2019, at 09:42, Bob Friesenhahn <bfriesen@simple.dallas.tx.us>=
 wrote:
>=20
> On Mon, 24 Jun 2019, Stuart D. Gathman wrote:
>>=20
>> Question: is fuzzing useful for languages like Java/python?  Obviously,
>> you eventually reach a native code module in both cases, but fuzzing the=
 entire virtual machine is cumbersome.  Maybe native code libraries
>> for "safe" languages should include fuzzing as part of testing.
>=20
> There is nothing about languages like Java and Python which necessarily m=
akes them safe.  Access outside of memory bounds is just one issue which of=
ten afflicts C/C++.  Java and Python can easily do something wrong such as =
use all available resources or never finish. In the case of Python, Python =
can easily make arbitrary calls into C code under control of the script.

With something like ctypes? I took Stuart=E2=80=99s point to be about fuzzi=
ng the language VM (e.g. CPython), rather than fuzzing extensions written i=
n C. Fuzzing the FFI into native code seems like a reasonable idea for exte=
nsion maintainers, but this is much less cumbersome than the VM fuzzing tha=
t Stuart=E2=80=99s comment seemed to be getting at.=
