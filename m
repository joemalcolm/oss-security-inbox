Received: (qmail 9962 invoked by uid 550); 28 Dec 2022 17:09:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9941 invoked from network); 28 Dec 2022 17:09:33 -0000
Date: Wed, 28 Dec 2022 18:09:21 +0100 (CET)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
cc: Alejandro Colomar <alx.manpages@gmail.com>, 
    Michael Kerrisk <mtk.manpages@gmail.com>, linux-kernel@vger.kernel.org, 
    linux-man@vger.kernel.org
In-Reply-To: <Y6xzIR9P+a6uaaEx@itl-email>
Message-ID: <99n882p8-41oq-9763-314-24r434o4549o@vanv.qr>
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org> <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd> <Y6xzIR9P+a6uaaEx@itl-email>
User-Agent: Alpine 2.25 (LSU 592 2021-09-18)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly


On Wednesday 2022-12-28 17:47, Demi Marie Obenour wrote:
>> Examples:
>> 
>> 1. /proc/pid/stats.json
>> 2. /proc/pid/stats.xml
>> 3. /proc/pid/stats.yaml_shouldnt_be_a_thing
>
>A binary format would be even better.  No risk of ambiguity.

So like EBML?
