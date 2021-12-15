X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2132" "Wednesday" "15" "December" "2021" "06:39:13" "-0500" "Jeffrey Walton" "noloader@gmail.com" nil "50" "Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack" nil nil nil "12" nil nil (number mark "U       noloader@gma Dec 15   50/2132  " thread-indent "\"Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22469 invoked by uid 550); 15 Dec 2021 11:47:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19883 invoked from network); 15 Dec 2021 11:39:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=WOHujkt4wLpL/VtsCb6yELjmY8BNPBjcDXz4cWQVXgI=;
        b=IWl7vwhGk3VdZwL27rb+c+0SjlSHG0vX/jbSTu5bL956kDCvMZV2zKSjS+7ZFi9Vbm
         N4BqorLZY+4lr/wy+XUzvXaR1At3nK7kH0QSw+buz0aY5BFy6h+K2QkoiupyqUW4RdJZ
         spwHg7tMrfQgmwFtDHJKlSLCkhWmkmb0aBGuCwggqWKoJ/sUAvNRAryvVnXWsahYBiOQ
         dVqI7nxCiu0ssaTXJOW0MKhS7mtDfTMwwHBQbQWFXyeXSJHfPtV5bEEKloxtRp3iRY6c
         25/1Qld2zqHot6674j6SK0WnMPCilOk1QmW1WFpfSZ0ID7ULKNVwibXUhGu3R/5T73nG
         /kUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:content-transfer-encoding;
        bh=WOHujkt4wLpL/VtsCb6yELjmY8BNPBjcDXz4cWQVXgI=;
        b=sV+ONwI8HvyqwEeidOG+2kW5J/+HLPMft2iZN1nNUktibqNT80EzyrXngS5VoXW8gE
         5va8bTabKsgB+58gbqvLSnUjoOCXFZ/AYtPfMsbgoi66f/ELaG9pb/jjx5QMlp2RIWzm
         udS7EdvMXKcETyE72qDSgRBhqbu0nlbITlfqzASBmx16v3lyKfhvxoJUbkPBTIzQ5cXx
         AofjeknYT7of8LqhFn4OZTJU+Wpj9MIIF03707bQAMpwjEE6M24y6TT/+d+6Dp9Elv+Q
         bKGg0nuo270yBn/Hh/BJj3VujSuymzb86UEcDo++hBLR5kz5KM+rGwQtRdnbNWtA1esd
         prNA==
X-Gm-Message-State: AOAM5309rWzHgTdyg1/3+MbLTatQqHuShkqccSaiXIPea/9QBoFxK471
	z77JGXf4d8q4QE9jyAeMEfzQL/Iy/48sb+GOHRy4pK7cSk+3ZA==
X-Google-Smtp-Source: ABdhPJxllJqh/+06t3F2qC2FzUXKvrI4wRaOOtMv6lxWnYmdcSKsBmbiXdRt8uk2eCCzkL4vcmeKsfznTv4pn5vlOg0=
X-Received: by 2002:a05:6a00:21c9:b0:4a7:f071:eb73 with SMTP id
 t9-20020a056a0021c900b004a7f071eb73mr8684119pfj.23.1639568365151; Wed, 15 Dec
 2021 03:39:25 -0800 (PST)
MIME-Version: 1.0
References: <b1b3fb6f-a394-ede3-0c3c-ea2c11018062@apache.org>
In-Reply-To: <b1b3fb6f-a394-ede3-0c3c-ea2c11018062@apache.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 15 Dec 2021 06:39:13 -0500
Message-ID: <CAH8yC8=R7+DwZ19C0c3D_r=BL2Bde7rVQd11RcLKGSkdn0EVqw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context
 Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack

Hi Ron,

> It was found that the fix to address CVE-2021-44228 in
> Apache Log4j 2.15.0 was incomplete in certain non-default
> configurations. This could allows [DoS]...

Is there any information on the non-default configuration that triggers the=
 DoS?

What I am trying to understand is, if we clear the first CVE through,
say, envar LOG4J_FORMAT_MSG_NO_LOOKUPS=3Dtrue or
-Dlog4j2.formatMsgNoLookups=3Dtrue, then where does the vulnerability
lie for the second CVE? What configuration change needs to be done to
reduce risk on the second CVE after the first CVE has been mitigated?

The reason I ask is, we don't have the option of updating to v2.16 (or
v2.15) on some machines and programs, so we are trying to reduce and
manage the risk.

Jeff

On Tue, Dec 14, 2021 at 12:10 PM Ron Grabowski <rgrabowski@apache.org> wrot=
e:
>
> Severity: moderate (CVSS: 3.7 AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L)
>
> Description:
>
> It was found that the fix to address CVE-2021-44228 in Apache Log4j 2.15.=
0 was incomplete in certain non-default configurations. This could allows a=
ttackers with control over Thread Context Map (MDC) input data when the log=
ging configuration uses a non-default Pattern Layout with either a Context =
Lookup (for example, $${ctx:loginId}) or a Thread Context Map pattern (%X, =
%mdc, or %MDC) to craft malicious input data using a JNDI Lookup pattern re=
sulting in a denial of service (DOS) attack. Log4j 2.15.0 restricts JNDI LD=
AP lookups to localhost by default. Note that previous mitigations involvin=
g configuration such as to set the system property `log4j2.noFormatMsgLooku=
p` to `true` do NOT mitigate this specific vulnerability.
>
> Log4j 2.16.0 fixes this issue by removing support for message lookup patt=
erns and disabling JNDI functionality by default.
>
> This issue can be mitigated in prior releases (<2.16.0) by removing the J=
ndiLookup class from the classpath (example: zip -q -d log4j-core-*.jar org=
/apache/logging/log4j/core/lookup/JndiLookup.class).
>
> References:
>
> https://logging.apache.org/log4j/2.x/security.html
> https://www.cve.org/CVERecord?id=3DCVE-2021-44228
