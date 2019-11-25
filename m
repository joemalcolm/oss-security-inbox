X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["526" "Monday" "25" "November" "2019" "12:00:26" "-0500" "Stuart D. Gathman" "stuart@gathman.org" nil "14" nil "^cc:" nil nil "11" nil nil (number mark "        stuart@gathm Nov 25   14/526   " thread-indent "\"Re: [oss-security] Lots of bugs in 32-bit x86 Linux entry code\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Lots of bugs in 32-bit x86 Linux entry code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26253 invoked by uid 550); 25 Nov 2019 17:17:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17741 invoked from network); 25 Nov 2019 17:00:45 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::2" (wiki.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1574701230; 
 h=date : from : to : cc : subject : in-reply-to : 
 message-id : references : mime-version : content-type : 
 date : from : subject; 
 bh=klo8d7lT/3RnPalEtZY7hGQ7LyCm8mb9rr/aBXN5Izw=; 
 b=mTDQQZM4JaVJXxhxneaaQxqot9TVbZjehs0ml2ivQEC8w+ixZq1Kuy5t
 /ofqY2WNXsVgZop8VM29uhzOlLnj0LnBp3jmFPBGEleygLkF4P71OdLtHj
 xourTY/U2n0j3XOUyI/VShMcOpGlT39EfLS0lOWsvcsTpLYIKefpYYIRw=
In-Reply-To: <CALCETrW1z0gCLFJz-1Jwj_wcT3+axXkP_wOCxY8JkbSLzV80GA@mail.gmail.com>
Message-ID: <alpine.LRH.2.21.1911251159050.29263@fairfax.gathman.org>
References: <CALCETrW1z0gCLFJz-1Jwj_wcT3+axXkP_wOCxY8JkbSLzV80GA@mail.gmail.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
cc: oss security list <oss-security@lists.openwall.com>
Date: Mon, 25 Nov 2019 12:00:26 -0500 (EST)
From: "Stuart D. Gathman" <stuart@gathman.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Lots of bugs in 32-bit x86 Linux entry code
To: Andy Lutomirski <luto@kernel.org>

On Mon, 25 Nov 2019, Andy Lutomirski wrote:

> It turns out that there are essentially no upstream development
> resources dedicated to x86_32 Linux. Perhaps unsurprisingly, it was
> badly broken.
> ...

This was delightfully well written.  I would send to the list, but
praise for literary merits on a technical list might be OT.

-- 
 	      Stuart D. Gathman <stuart@gathman.org>
"Confutatis maledictis, flammis acribus addictis" - background song for
a Microsoft sponsored "Where do you want to go from here?" commercial.
