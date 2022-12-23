Received: (qmail 13855 invoked by uid 550); 23 Dec 2022 00:21:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13831 invoked from network); 23 Dec 2022 00:21:54 -0000
Date: Fri, 23 Dec 2022 01:21:42 +0100 (CET)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
cc: Alejandro Colomar <alx.manpages@gmail.com>, 
    Michael Kerrisk <mtk.manpages@gmail.com>, linux-kernel@vger.kernel.org, 
    linux-man@vger.kernel.org
In-Reply-To: <Y6TUJcr/IHrsTE0W@codewreck.org>
Message-ID: <s5r028oo-n662-9qqq-9130-208poq85418p@vanv.qr>
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
User-Agent: Alpine 2.25 (LSU 592 2021-09-18)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly


On Thursday 2022-12-22 23:03, Dominique Martinet wrote:
>> +
>> +Note that \fIcomm\fP can contain space and closing parenthesis characters. 
>> +Parsing /proc/${pid}/stat with split() or equivalent, or scanf(3) isn't
>> +reliable. The correct way is to locate closing parenthesis with strrchr(')')
>> +from the end of the buffer and parse integers from there.
>
>That's still not enough unless new lines are escaped, which they aren't:

strrchr does not concern itself with "lines".
If your input buffer contains the complete content of /proc/X/stat (and not
just a "line" thereof), the strrchr approach appears quite workable.
