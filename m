X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/12/28/5
Message-ID: <99n882p8-41oq-9763-314-24r434o4549o@inai.de>
Date: Wed, 28 Dec 2022 18:09:21 +0100 (CET)
From: Jan Engelhardt <jengelh@...i.de>
To: oss-security@...ts.openwall.com
cc: Alejandro Colomar <alx.manpages@...il.com>,  Michael Kerrisk <mtk.manpages@...il.com>, linux-kernel@...r.kernel.org,  linux-man@...r.kernel.org
Subject: Re: [patch] proc.5: tell how to parse /proc/*/stat correctly
Content-Type: text/plain; charset=utf-8


On Wednesday 2022-12-28 17:47, Demi Marie Obenour wrote:
>> Examples:
>> 
>> 1. /proc/pid/stats.json
>> 2. /proc/pid/stats.xml
>> 3. /proc/pid/stats.yaml_shouldnt_be_a_thing
>
>A binary format would be even better.  No risk of ambiguity.

So like EBML?
