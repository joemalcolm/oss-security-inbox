Received: (qmail 28409 invoked by uid 550); 21 Oct 2023 21:43:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32302 invoked from network); 21 Oct 2023 19:25:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697916310; x=1698521110; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VCdUkxYK6V6NKWWKOjya1qbh3KQVpOINvIfzlXZ69P0=;
        b=dnqXBUGc1iuRSDP0NBE9/iFpEtvWA1Zcd3oT08VXClGPZuO+mIqD2xhC4xEx+NQ3Fe
         XVxhxC07yFCGcfBajEWvDreum9v8ojEwagPsp9MIo0Ibrk9+Hz/9FIDQAklNiphzuOcb
         7YIafJH41z9QJ81N2cGKmM2ePrlsMMm9T/WQdNwIEOrTAj5600rKrkB0ac0YLXT7A8yy
         XZsrk8W6acH8bRDHl5h1KjHphSdBuhMWAczonjSOPw8wg4HssYAczjOcDMvnX8tb15CO
         23l8ByCDvAyvzsIOqDKLkXsLRBK12Oh5M3FLSIRoWA6fjzqf38rF9/OLK0bUrbhpmbkM
         fbLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697916310; x=1698521110;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VCdUkxYK6V6NKWWKOjya1qbh3KQVpOINvIfzlXZ69P0=;
        b=Fp1uW/ouHBt3fjODyjv4jDQTbiu4HrNrsmr+99Ixx6J+rbsXs6rheYGtVivoYtCfzP
         pCRNY5lqEdoeWjTy7aqv8Ixd7Cl8Yfnz0T9A41kgeq4PsK3LR5avJDwQNncTOT+wVXSr
         WhZfPl5/fK72KtypiMzlpRpwU0sZsowKgCXSQgVa4iX2AKCaYuVKj7p8SS5izMDpB5j3
         8eFr40rPBpCCRv2K5Lb3Z3zgxrG1J64aUXXjUDopZBSrLuaZIlPRdoPdqgvaSvkxNvQH
         dD9BjTDElJT/+WHj9PS4+hBsOFEJqQR2qa32SBAVfhxVkz3I5KIYpRQc0ztb4HeJ6HGN
         WADA==
X-Gm-Message-State: AOJu0YyGPz7ssVaNk4cwVvFcvXVr7bDtJRVjolYoIHoKt8NOD0skDIHp
	Hohh/kE/Bls8SwxOCFOo+3j2YEmpnrytzoVMj4ZjA/H65VURkg==
X-Google-Smtp-Source: AGHT+IHYGvnSJ8dMvKV+FFjSs1THHQ4r5f9Gpju+OwZAEJmG5PrQCZVR2rMncap2DCwMc/2fxaRUOS0aj6wxbHxM4eA=
X-Received: by 2002:a05:6122:16a8:b0:499:696c:7810 with SMTP id
 40-20020a05612216a800b00499696c7810mr5561963vkl.0.1697916309736; Sat, 21 Oct
 2023 12:25:09 -0700 (PDT)
MIME-Version: 1.0
References: <CA+17n5uwjXBDzGGpepNtQSOFQaifnuyodd2EUQxEcCOLH+UUuw@mail.gmail.com>
 <fc7f78ee-8322-4d6b-b07b-923954016c05@treenet.co.nz> <CA+17n5sRt+SzQv+3-W0JugU4S3VV-C7n6a26D4PdQoOciuwwiQ@mail.gmail.com>
In-Reply-To: <CA+17n5sRt+SzQv+3-W0JugU4S3VV-C7n6a26D4PdQoOciuwwiQ@mail.gmail.com>
From: Joshua Rogers <megamansec@gmail.com>
Date: Sat, 21 Oct 2023 21:24:58 +0200
Message-ID: <CA+17n5sr6yGrWws73FYSSrMyfQy+m-JjiGZ9KrEf9OyYunY1Vw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008016a806083ef2a8"
Subject: Re: [oss-security] Squid Caching Proxy Security Audit: 55
 Vulnerabilities, 35 0days.

--0000000000008016a806083ef2a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I've updated the page with the following IDs which may be used for tracking:

strlen(NULL) Crash Using Digest Authentication
        GHSA-254c-93q9-cp53

Assertion Due to 0 ESI 'when' Checking
        GHSA-4g88-277m-q89r

Assertion Using ESI's When Directive
        GHSA-4g88-277m-q89r

Stack Buffer Overflow in Digest Authentication
        GHSA-phqj-m8gv-cq4g

Buffer Underflow in ESI
        GHSA-wgvf-q977-9xjg

Cheers,
Josh

On Fri, Oct 13, 2023 at 8:23=E2=80=AFPM Joshua Rogers <megamansec@gmail.com=
> wrote:

> Hi Amos, oss-security,
>
> I've added GHSA-543m-w2m2-g255 and CVE-2021-46784 for 'Cache Poisoning by
> Large Stored Response Headers (With Bonus XSS)' and 'Assertion in Gopher
> Response Handling' respectively: GHSA-543m-w2m2-g255 and CVE-2021-46784
>
> However, for "Gopher Assertion Crash", GHSA-f5cp-6rh3-284w does not apply.
> "Gopher Assertion Crash" concerns an assertion "assertion failed:
> store.cc:832: "store_status =3D=3D STORE_PENDING"" while GHSA-f5cp-6rh3-2=
84w
> concerns an assertion: "assertion failed: String.cc:172: "canGrowBy(len)""
>
> To the best of my knowledge the former (without a current GHSA or CVE) is
> unfixed.
>
> Cheers,
> Josh
>
> On Fri, Oct 13, 2023 at 3:54=E2=80=AFAM Amos Jeffries <squid3@treenet.co.=
nz>
> wrote:
>
>> Some reference updates.
>>
>>
>> On 11/10/23 20:55, Joshua Rogers wrote:
>> >
>> > The issues are listed below. Due to the sheer size of issues discovere=
d,
>> > technical details are not included in this email. However, breakdowns =
of
>> > the code and proof-of-concepts can be found on GitHub:
>> > https://megamansec.github.io/Squid-Security-Audit/
>> >
>>
>> > Cache Poisoning by Large Stored Response Headers (With Bonus XSS)
>>
>>   ... GHSA-543m-w2m2-g255
>>
>> > Gopher Assertion Crash
>>
>>   ... GHSA-f5cp-6rh3-284w
>>
>> > Assertion in Gopher Response Handling
>>
>>   ... CVE-2021-46784 / GHSA-f5cp-6rh3-284w
>>
>>
>>
>> AYJ
>>
>

--0000000000008016a806083ef2a8--
