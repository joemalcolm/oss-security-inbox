X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1605" "Monday" "1" "November" "2021" "19:50:36" "-0400" "Perry E. Metzger" "perry@piermont.com" nil "33" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       perry@piermo Nov  1   33/1605  " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32573 invoked by uid 550); 1 Nov 2021 23:50:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32551 invoked from network); 1 Nov 2021 23:50:49 -0000
Message-ID: <58836a21-c9df-41cc-d6ea-edd7b01f2105@piermont.com>
Date: Mon, 1 Nov 2021 19:50:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:94.0)
 Gecko/20100101 Thunderbird/94.0
Content-Language: en-US
To: Jan Engelhardt <jengelh@inai.de>, oss-security@lists.openwall.com
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
 <3n67pqq3-9ro6-p138-npo0-n4314s77638n@vanv.qr>
From: "Perry E. Metzger" <perry@piermont.com>
In-Reply-To: <3n67pqq3-9ro6-p138-npo0-n4314s77638n@vanv.qr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Trojan Source Attacks

On 11/1/21 16:51, Jan Engelhardt wrote:
>> We have identified an issue affecting all compilers and interpreters that support Unicode.
>> [...]
>> The attached paper describes an attack paradigm -- which we believe to be novel -- discovered by security researchers at the
>> University of Cambridge.
> Not so novel. At one time, this picture made the rounds
> (https://twitter.com/acronis/status/1019152990022787072 - the pic is likely
> older than this 2018 tweet), and anyone who knew that Unicode had zero-width
> characters already made the connection.

If it was known to everyone, then why are so many language interpreters 
and compilers impacted? Surely if this was truly something that was well 
understood by the community, then it wouldn't be a problem. (Claims that 
people who write compilers are fools will be cheerfully ignored.)

There's a phenomenon in many social groupings of there being "folklore" 
that people don't seem to find worth writing down because "everyone" 
knows it, except then it turns out that most people don't actually know 
it, and people get hurt because that which "everyone" knows isn't 
actually something everyone knows. "Why should we have put the safety 
stop on the cutting machine? Everyone is aware of the needed precautions 
when using it."

In my opinion, if someone writes down the "obvious" thing that most 
people don't know and makes sure everyone is _actually_ warned about it, 
they get full credit, because the previous "discoverers" didn't bother 
to tell people in such a way that most people who might come to harm 
would be protected.


Perry


