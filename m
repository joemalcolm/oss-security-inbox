Received: (qmail 23720 invoked by uid 550); 16 Apr 2026 00:32:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18086 invoked from network); 16 Apr 2026 00:21:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776298904; x=1776903704; darn=lists.openwall.com;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9/oTnOniZSBDMvaYEQIK+fmmhbtLdsco7LFulC3PYS8=;
        b=BRBaPN17ZdVB9OvWoA88srsSt+TPPj9b8ZCBjuyG+FNoIF84q1FGkpurq5AGOa4osO
         FQBZ6U3MSpJ6uR9+Q9AjPZ44pK/k1oHw0nhKb5mbCjYylev0wkiyohW94Yx7yAp/f6JJ
         wkJuf4nMjfXdG56ie6KbTn4N1rRhFyV37FBRGmF8zQwdY3UiQQeEgrRquGD8D+gVeNMo
         yeCFxKuRRwh1X/NX3Uvdx1vI4dQX60uid8leDjBv899IZPxFZxVd2Wk2NVvx1ZyBdZln
         qHR8pNLxSKZNahJ3Map5A9aIctMnIJ5xXwJa5lfrJfzJlYpKqWKapAKPTtMync0F0b+Z
         tOzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776298904; x=1776903704;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:to:from:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9/oTnOniZSBDMvaYEQIK+fmmhbtLdsco7LFulC3PYS8=;
        b=o6fD8Np+g5vxYBWhUq4sAa1cwSZfSPkNjCr/fRVCGzOEGrLWFYdqD8DmzkVHergZI+
         scTm+2aDiv3Kz0LhtHER/nBCRrNd+/0HYo3x8BFiVLgG1Tc3PNlKfqbB8PV4HU90y5TD
         Gss5hdl8NIQJZ6GJeVWkf2OaX6uWJmrZrG3xZ5OVZEYyHlWTKcrZbfSlScpdevmUSmKH
         iLss805z1HgRyJ7ENLkB8r4GemDZ5k+aZbIXd2VqXDVs0tM+3DfFMQ2lZSwlDIW+8oxy
         AEQUoWalzzAuszflgQlSFDi0bK+IcgFKr8ah9LyowQ4Y/b1RTyJflkE9YR0yy8a60h9q
         sREA==
X-Gm-Message-State: AOJu0Yx/sn39LMO7wBvxebVChlRSViwtWWPQdcm0iR/J5VY4M/jPJGSQ
	Af/BbxSGsGALQYw7g0J1iMSbbNkb9hoeqDpveiVJAMOE5BbEO96djib6OqEmbQ==
X-Gm-Gg: AeBDiesmhW0ZLLDu1SCPvWRlhWykiWJGdhdsSSnX2Nwy5OFJdsh1SzuxJ2g2S5NEVhF
	/O8muUpIjpfweFaHmZoS+4WjaCQuXidCLdd3APL1jRfpt5VIzb5ZEQQGeF7Zn64ZQ+XKoboLf9J
	FZ6GHsdzETg5SE8gpQdK8p+gMY1urVzbCOlCrAudLCduhoVhiSZP3PHY8n6Zys1qOoLZ/usHohY
	6yM3qv+Q/a1r3X1CpEmZ/qfoC1ntEEpQK9oX2s6AQsouBZKiUYeAUs2Mi6N2xjlLRdN40dd0Ub1
	Fi/dn2eeeBOdy8cgoh7iJUdviSr4AhGTMX/Zhhm4xh+I7XNu9IsseirZE2R7GJklGxjJodywXDA
	1XGhTnSXdE3/9/rZqV4C1NgRncp6ZUBgtyb4jBUaF6wl0NyhN+J+YxyhTolAemYji2mObZy8HW2
	XwSmWH
X-Received: by 2002:a05:7300:7c0c:b0:2d4:94cc:eebb with SMTP id 5a478bee46e88-2d586ea78eamr14555059eec.13.1776298903581;
        Wed, 15 Apr 2026 17:21:43 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <c9bd5dbd-7b11-4637-80cd-5dec79dd491f@oracle.com>
References: <c9bd5dbd-7b11-4637-80cd-5dec79dd491f@oracle.com>
Date: Wed, 15 Apr 2026 17:21:42 -0700
Message-ID: <87qzofoiuh.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] 7 vulnerabilities disclosed & patched in jq

Alan Coopersmith <alan.coopersmith@oracle.com> writes:

> https://github.com/jqlang/jq/security/advisories/GHSA-xwrw-4f8h-rjvg stat=
es:
>> Unbounded Recursion in jv_setpath() / jv_getpath() / delpaths_sorted()
>> Affected versions:  <=3D 1.8.1
>> Summary
>> -------
>> The jv_setpath(), jv_getpath(), and delpaths_sorted() functions in
>> src/jv_aux.c use unbounded recursion where the recursion depth equals the
>> length of a caller-supplied path array. There is no depth limit check.
>> When a path array with ~60,000 or more elements is supplied =E2=80=94 ei=
ther constructed
>> by a jq filter expression or provided directly in attacker-controlled JS=
ON input
>> =E2=80=94 the C call stack is exhausted, causing a segmentation fault (S=
IGSEGV) and
>> immediate process crash.
>> This vulnerability bypasses the MAX_PARSING_DEPTH (10,000) limit
>> that protects
>> the JSON parser, because path arrays can be constructed programmatically=
 to
>> arbitrary lengths without being constrained by parsing depth. Critically=
, the
>> path array can be sourced entirely from attacker-controlled JSON input, =
making
>> this exploitable in scenarios where a trusted jq filter processes untrus=
ted data.
>>=20
> [See GHSA for code analysis and PoC]
>> Impact
>> ------
>> - Denial of Service (Crash): Any jq process that calls setpath, getpath,=
 or
>>   delpaths with a sufficiently long path array will crash with SIGSEGV.
>>   This is an unrecoverable crash =E2=80=94 no error handling is possible.
>> - Bypass of existing depth limits: The JSON parser's MAX_PARSING_DEPTH (=
10,000)
>>   does not protect against this because path arrays are constructed at t=
he jq
>>   runtime level, not during JSON parsing. An attacker can embed a flat a=
rray
>>   of 65,000 integers in a JSON document (only ~200 KB) that causes a cra=
sh
>>   when used as a path.
>> - Affected real-world scenarios:
>>   - Web services using jq to transform or extract data from user-submitt=
ed JSON
>>   - CI/CD pipelines processing untrusted configuration or API responses =
with jq
>>   - Shell scripts that use setpath/getpath/delpaths on paths derived fro=
m input
>>     data
>>   - Any application embedding libjq where path arguments can be influenc=
ed by
>>     external input
>> - Note: Unlike memory corruption vulnerabilities, stack overflow from re=
cursion
>>   is generally not exploitable for code execution on modern systems with=
 guard
>>   pages. The impact is limited to denial of service.
>> Severity: Moderate - 6.2 / 10
>> CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
>> CVE ID: CVE-2026-33947
>> Weaknesses: CWE-674 Uncontrolled Recursion
>> Credits: @bg0d-glitch
>
> https://github.com/jqlang/jq/commit/fb59f1491058d58bdc3e8dd28f1773d1ac690=
a1f
> declares that it fixes CVE-2026-33947.

I can see the argument that this a vulnerability if it actually affects
libjq.

However, I hope it does not become a trend to file CVEs for any stack
overflow in command-line programs. Generally the only way to work around
that is to force the developer to place arbitrary limits on their
program. Note that some systems may have a small stack which crashes
before hitting the limit added in the fixed commit.

Collin
