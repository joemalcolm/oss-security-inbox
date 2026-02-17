X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/02/18/1
Message-ID: <46s1o312-qrro-qp69-7oq8-61psn0nnr4o6@inai.de>
Date: Wed, 18 Feb 2026 00:14:01 +0100 (CET)
From: Jan Engelhardt <ej@...i.de>
To: oss-security@...ts.openwall.com
cc: Sam James <sam@...too.org>
Subject: Re: Re: zlib security audit by 7asecurity
Content-Type: text/plain; charset=utf-8


On Tuesday 2026-02-17 22:21, Simon Josefsson wrote:
>Sam James <sam@...too.org> writes:
>
>> * ZLB-01-001 WP2: Heap Buffer Overflow via Legacy gzprintf Implementation (High)
>
>That vulnerability seems to require that zlib was built with
>-DNO_vsnprintf -DNO_snprintf, targetting a system lacking 'snprintf'.
>
>Does anyone know of a real-world environment using that configuration?

Does Borland C++ 1.01 for DOS count?
