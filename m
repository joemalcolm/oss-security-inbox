Received: (qmail 15469 invoked by uid 550); 30 Dec 2022 20:16:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15445 invoked from network); 30 Dec 2022 20:16:07 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-104R005e5696247-8558-4316-907d-20674b30cbbf,
                    61162F1CAD51C30F4082BD59ECF03BCF2A04D20D) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.8
Date: Fri, 30 Dec 2022 21:15:54 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
CC: <linux-man@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Message-ID: <20221230201554.xborkqi2x5dvnh6h@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com,
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <Y6SJDbKBk471KE4k@p183>
 <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca>
 <tog7cb$105a$1@ciao.gmane.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <tog7cb$105a$1@ciao.gmane.io>
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 964eb37d-b66c-4350-8a99-ebd663178077
X-Ovh-Tracer-Id: 5114681804795926493
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrieeigddufeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvvefukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepuedttdetlefhffduvdehgfefudejledtkeehudevkeekleefudeuvdegjedufffgnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

* Tavis Ormandy <taviso@gmail.com>, 2022-12-28 01:50:
>>>But, really, I just don't see how this can practically be said to be 
>>>parsable...
>>
>>In its current form it never will be.  The solution is to place this 
>>variable-length field last.  Then you can "cut -d ' ' -f 51-" to get 
>>the command+args part (assuming I counted all those fields correctly 
>>...)
>>
>>Of course, this breaks backwards compatability.
>
>I think that cut command doesn't handle newlines,

Indeed.

>There already is 'ps -q $$ -o >comm='

FWIW, "ps ... -o comm=" doesn't just print the raw comm value: it 
replaces non-printable chars with punctuation characters, and it may 
append " <defunct>" if the process is a zombie.

The easiest way to get unmangled comm is to read it from 
/proc/$PID/comm, then strip the trailing newline.

(But I suspect most /proc/*/stat parsers don't care about the comm field 
at all; they just want to skip over it to get their hands on the 
following fields.)

-- 
Jakub Wilk
