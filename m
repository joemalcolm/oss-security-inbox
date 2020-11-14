X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["961" "Saturday" "14" "November" "2020" "14:35:01" "+1100" "Dave Horsfall" "dave@horsfall.org" "<alpine.BSF.2.21.9999.2011141426320.48674@aneurin.horsfall.org>" "24" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111403:35:01" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       dave@horsfal Nov 14   24/961   " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<20201113133331.48185f9f@computer>" ("<20201113133331.48185f9f@computer>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1628 invoked by uid 550); 14 Nov 2020 11:41:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3529 invoked from network); 14 Nov 2020 03:35:19 -0000
X-RG-Spam: Unknown
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedujedruddviedgiedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuuffpveftpgfvgffnuffvtfetpdfqfgfvnecuuegrihhlohhuthemucegtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvufgjkfhffgggtgesmhdttdertderjeenucfhrhhomhepffgrvhgvucfjohhrshhfrghllhcuoegurghvvgeshhhorhhsfhgrlhhlrdhorhhgqeenucggtffrrghtthgvrhhnpeejtdduffejhfetffejieeugefhtdejueffveefteffledtfeegteelvdettdefueenucffohhmrghinhepghhrohhkrdhorhhgrdhukhenucfkphepuddutddrudeguddrudelfedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopegrnhgvuhhrihhnrdhhohhrshhfrghllhdrohhrghdpihhnvghtpeduuddtrddugedurdduleefrddvfeefpdhmrghilhhfrhhomhepoegurghvvgeshhhorhhsfhgrlhhlrdhorhhgqecuuefqffgjpeekuefkvffokffogfdprhgtphhtthhopeeoohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-RG-VS-CLASS: clean
X-Authentication-Warning: aneurin.horsfall.org: dave owned process doing -bs
Date: Sat, 14 Nov 2020 14:35:01 +1100 (EST)
From: Dave Horsfall <dave@horsfall.org>
To: OSS Security <oss-security@lists.openwall.com>
In-Reply-To: <20201113133331.48185f9f@computer>
Message-ID: <alpine.BSF.2.21.9999.2011141426320.48674@aneurin.horsfall.org>
References: <20201113133331.48185f9f@computer>
User-Agent: Alpine 2.21.9999 (BSF 287 2018-06-16)
X-GPG-Public-Key: http://www.horsfall.org/gpgkey.pub
X-GPG-Fingerprint: 05B4 FFBC 0218 B438 66E0  587B EF46 7357 EF5E F58B
X-Home-Page: http://www.horsfall.org/
X-Witty-Saying: "chmod 666 the_mode_of_the_beast"
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1483753691-1414010470-1605324903=:48674"
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux
 distros

--1483753691-1414010470-1605324903=:48674
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Fri, 13 Nov 2020, Hanno Böck wrote:

[...]

> It may be interesting to discuss how this happened. From my side I feel 
> I did what I should do - I reported it to the project and later 
> disclosed it publicly on oss-security. Apparently it seems there is no 
> reliable process to make sure publicly reported vulns eventually get 
> patched in distros if there is no active upstream.

There's always the "Full Disclosure" list (URL forgotten, but 
http://lists.grok.org.uk rings a bell).

Their policy is simple: provide ample warning, then disclose the bug; the 
problem is that Big Corporations brush off a bug report with "We're 
working on it" and actually do nothing, because fixing bugs takes time 
and money.  Funny how quickly a bug is fixed when it's published...

-- Dave
--1483753691-1414010470-1605324903=:48674--
