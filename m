X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1565" "Monday" "19" "April" "2021" "11:35:32" "-0600" "Ariadne Conill" "ariadne@dereferenced.org" nil "40" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       ariadne@dere Apr 19   40/1565  " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18076 invoked by uid 550); 19 Apr 2021 17:42:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15912 invoked from network); 19 Apr 2021 17:35:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dereferenced.org;
	s=mailbun; t=1618853733;
	bh=sz+KTajF5Xhrdv7xLynGlu6a8D4fwMhaWAz9pcwCVro=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=S7WtwyzmrOzOmPfvntOqpI53Y3PexCaXkGoAxsR43iuTsfHQsgB1DEU6GRGnn79ol
	 RRNhIVgX+wLVcbg+RbdqrUoVF23FCOMMglq/rF1dVLzHl5LENwME1EfaQ6Pr448wEF
	 ehATqdjTvfkbl8AdnOmSBVqlc1ukooE7XvEqe1KpmO/OyT6BhRo7ENw2QqbtGRnjnV
	 dWN0jHP+Ggllq08/+0V/u/7oHhgHeMh+klIr/DKSOeZWBVGwzyucFIzSv/ACaOhpz/
	 IZPSfzJXmKurMDzVvImaTFTAMuz7k+4zc2XSeHZF9FD7jtb9VNJKb+Saox1n/CnPDf
	 G4EKwQdQBpydg==
Date: Mon, 19 Apr 2021 11:35:32 -0600 (MDT)
From: Ariadne Conill <ariadne@dereferenced.org>
To: oss-security@lists.openwall.com
cc: security@debian.org
In-Reply-To: <CEA32CF0-DCF5-4746-9BDB-5AF9CEA1118A@dwheeler.com>
Message-ID: <fba0d965-fe1-a7af-bda3-5871ba9450d6@dereferenced.org>
References: <YHwlS06UV25JUeqh@momentum.pseudorandom.co.uk> <CEA32CF0-DCF5-4746-9BDB-5AF9CEA1118A@dwheeler.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0-607704200-1618853734=:15938"
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

--0-607704200-1618853734=:15938
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hello,

On Mon, 19 Apr 2021, David A. Wheeler wrote:

>> On Sat, 17 Apr 2021 at 07:41:15 -0700, Tavis Ormandy wrote:
>>> Oh, I also pitched using popen("/bin/ping" ..), but I think nobody is
>>> really convinced that will work, but I kinda like it :)
>
> On Apr 18, 2021, at 8:25 AM, Simon McVittie <smcv@debian.org> wrote:
>
>> That's consistent with the principle of least-privilege, and the widely
>> cited Unix philosophy of having programs that do one thing well.
>>
>> If you need to gain privileges, then I think that's a much, much better
>> approach - ideally a new ping-like program that prints a machine-readable
>> syntax rather than having to screen-scrape human-readable output, but
>> if that's not available then ping itself is the next best thing.
>
>
> I agree, running “ping” in a separate process
> is FAR better than giving the “main” process
> extra permissions it doesn’t actually need.
> You’d have to be careful about the parameters sent, but that’s necessary anyway.
> I don’t see the problem of calling /bin/ping, that sounds like the right answer.
>
> Scraping is undesirable, but sometimes needed. If this is a common need, a
> long-term solution might be to create an option on ping to generate a standard
> format that’s easier to machine-parse.

This already exists as fping(1), for example:

$ fping -C4 -q google.com
google.com : 46.8 41.4 45.8 43.7

Ariadne
--0-607704200-1618853734=:15938--
