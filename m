X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1217" "Tuesday" "2" "November" "2021" "02:21:58" "+0100" "Jan Engelhardt" "jengelh@inai.de" nil "26" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       jengelh@inai Nov  2   26/1217  " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3272 invoked by uid 550); 2 Nov 2021 06:22:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23892 invoked from network); 2 Nov 2021 01:22:09 -0000
Date: Tue, 2 Nov 2021 02:21:58 +0100 (CET)
From: Jan Engelhardt <jengelh@inai.de>
To: "Perry E. Metzger" <perry@piermont.com>
cc: oss-security@lists.openwall.com
In-Reply-To: <58836a21-c9df-41cc-d6ea-edd7b01f2105@piermont.com>
Message-ID: <4rs9o8oo-3q9s-1276-r921-6r9n436o758@vanv.qr>
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk> <3n67pqq3-9ro6-p138-npo0-n4314s77638n@vanv.qr> <58836a21-c9df-41cc-d6ea-edd7b01f2105@piermont.com>
User-Agent: Alpine 2.25 (LSU 592 2021-09-18)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] Trojan Source Attacks

On Tuesday 2021-11-02 00:50, Perry E. Metzger wrote:

> On 11/1/21 16:51, Jan Engelhardt wrote:
>>> We have identified an issue affecting all compilers and interpreters that
>>> support Unicode.
>>> [...]
>>> The attached paper describes an attack paradigm -- which we believe to be
>>> novel -- discovered by security researchers at the
>>> University of Cambridge.
>> Not so novel. At one time, this picture made the rounds
>> (https://twitter.com/acronis/status/1019152990022787072 - the pic is likely
>> older than this 2018 tweet), and anyone who knew that Unicode had zero-width
>> characters already made the connection.
>
> If it was known to everyone, then why are so many language interpreters and
> compilers impacted? [...] (Claims that people who write
> compilers are fools will be cheerfully ignored.)

Perhaps a case of "not my problem".

The filesystem layer of many an operating system does not care about filenames.
The only rules, if any, are the special meaning of the hierarchy separator (if
any) and perhaps a string terminator (if any).

Compilers - could be the same thing. As long as the grammar is satisfied,
why should they bother what comes in. ("Write/use better editors and frontends")
