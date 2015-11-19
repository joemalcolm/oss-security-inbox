X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1260" "Thursday" "19" "November" "2015" "12:08:21" "+0100" "Jonathan Salwan" "jonathan.salwan@gmail.com" "<CAEmQOhDewaU7prOS2808qAPrqj+edo9rZGB8_J_M0DCTD=g6cw@mail.gmail.com>" "31" "Re: [oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111911:08:21" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       jonathan.sal Nov 19   31/1260  " thread-indent "\"Re: [oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<1673938.GaGbo5rB5J@x2>" ("<20151117153951.GA28672@openwall.com>" "<20151118021008.GB31188@openwall.com>" "<564C582B.6080803@redhat.com>" "<1673938.GaGbo5rB5J@x2>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20060 invoked by uid 550); 19 Nov 2015 11:09:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20010 invoked from network); 19 Nov 2015 11:09:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=lRjMhcsWw8gI8nuwy7S3lww3222KWSmaSBPipsoi1AM=;
        b=bkDVPzwKzTCCDlu4bgO9kBhhUs5mfcB5ahqHoJXKIvUaSuKKdikY+JQZJxGmHMxscN
         7hBPF6UnsUBFDWRBFZKE6RJQka++cvM1NvXAG227zXEBLCdZ4l3bjyTwBlEcbzp4FtBq
         iqzTkl69a+ectuSIkPI3iC+VOG4DD2fZOU+ioU4q6uaASmYV/owIC9YEx+hlPshll2LJ
         Vc8Nzd0jqMWW9p1+Yz3x3/IMjFlU5DK+V8U5+dbqM+mEUepvMJRHby0mKpkWbuUBVobx
         75/ELEQ0eMS/D0hxYcyF+MBZoZ5KReCQg0ILk7ncc4HZp1+W4ZohBxjEuyNEUiTFUgHP
         BHfQ==
X-Received: by 10.194.188.112 with SMTP id fz16mr8603409wjc.65.1447931341417;
 Thu, 19 Nov 2015 03:09:01 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1673938.GaGbo5rB5J@x2>
References: <20151117153951.GA28672@openwall.com> <20151118021008.GB31188@openwall.com>
 <564C582B.6080803@redhat.com> <1673938.GaGbo5rB5J@x2>
From: Jonathan Salwan <jonathan.salwan@gmail.com>
Date: Thu, 19 Nov 2015 12:08:21 +0100
Message-ID: <CAEmQOhDewaU7prOS2808qAPrqj+edo9rZGB8_J_M0DCTD=g6cw@mail.gmail.com>
To: sgrubb@redhat.com
Cc: Florian Weimer <fweimer@redhat.com>, Solar Designer <solar@openwall.com>, Jeff Law <law@redhat.com>, 
	Bernd Schmidt <bschmidt@redhat.com>, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Re: Fwd: x86 ROP mitigation

Hey Steve,

> What I found was that the list of libraries or programs that ROPgadget could
> build a chain for is fairly small. I thought about reasons why that might be
> the case and then considered that maybe if the gadgets from several libraries
> were combined, maybe it would find more.

The build chain of ROPgadget is pretty "stupid", we search a series of
patterns [1] which would allow us to build our payload. If these
patterns are not present we don't build the payload. Then, we don't
search through others libraries. That's why you got a small list. The
best way to build a ROP-chain automatically, is to build the chain
from the instruction semantics (take a look from slide 53 to 62 of
this lecture [2]).

> But I think ASLR would make too many
> moving parts for that to be practical. If you use a whole library or
> application, then everything moves together up or down as a unit to the new
> offset.

If you find the base address from the plt/got you win. Florian
Gaultier proved that it was possible [3].

> Another thought in explaining why the list was so small is that the quality of
> the chaining that ROPgadget has needs a lot of improvement.

So true :).

[1] https://goo.gl/faO3VC
[2] http://goo.gl/ttpr5S
[3] http://goo.gl/kDTa1A
