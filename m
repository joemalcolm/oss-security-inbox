X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["529" "Tuesday" "2" "November" "2021" "03:53:12" "+1100" "Dave Horsfall" "dave@horsfall.org" nil "16" "Re: [oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in source code" nil nil nil "11" nil nil (number mark "U       dave@horsfal Nov  2   16/529   " thread-indent "\"Re: [oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in source code\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in source code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4048 invoked by uid 550); 1 Nov 2021 17:05:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32179 invoked from network); 1 Nov 2021 16:53:29 -0000
X-RG-Spam: Unknown
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvtddrvdehvddgledvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuuffpveftpgfvgffnuffvtfetpdfqfgfvnecuuegrihhlohhuthemucegtddtnecunecujfgurhepfffhvffujgfkfhgfgggtsehttddttddtredvnecuhfhrohhmpeffrghvvgcujfhorhhsfhgrlhhluceouggrvhgvsehhohhrshhfrghllhdrohhrgheqnecuggftrfgrthhtvghrnhepkeeiteejueeuhfefgeeuvdduieefvedugfevtdffkefhffejkefhuddtteehtefhnecukfhppeduuddtrddugedurdduleefrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheprghnvghurhhinhdrhhhorhhsfhgrlhhlrdhorhhgpdhinhgvthepuddutddrudeguddrudelfedrvdeffedpmhgrihhlfhhrohhmpegurghvvgeshhhorhhsfhgrlhhlrdhorhhgpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-RG-VS-CLASS: clean
X-Authentication-Warning: aneurin.horsfall.org: dave owned process doing -bs
Date: Tue, 2 Nov 2021 03:53:12 +1100 (EST)
From: Dave Horsfall <dave@horsfall.org>
To: oss-security@lists.openwall.com
In-Reply-To: <aa5e1a0e-daba-41f2-1f98-91d36584f119@pietroalbini.org>
Message-ID: <alpine.BSF.2.21.9999.2111020349110.70183@aneurin.horsfall.org>
References: <aa5e1a0e-daba-41f2-1f98-91d36584f119@pietroalbini.org>
User-Agent: Alpine 2.21.9999 (BSF 287 2018-06-16)
X-GPG-Public-Key: http://www.horsfall.org/gpgkey.pub
X-GPG-Fingerprint: 05B4 FFBC 0218 B438 66E0  587B EF46 7357 EF5E F58B
X-Home-Page: http://www.horsfall.org/
X-Witty-Saying: "chmod 666 the_mode_of_the_beast"
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override
 codepoints in source code

On Mon, 1 Nov 2021, Pietro Albini wrote:

> The Rust Security Response WG was notified of a security concern 
> affecting source code containing "bidirectional override" Unicode 
> codepoints: in some cases the use of those codepoints could lead to the 
> reviewed code being different than the compiled code.

[...]

Am I the only one here who remembers the original ALGOL specification that 
what is printed on the paper is the language?

We've seen the same in the DNS, so I guess that it was only a matter of 
time.

-- Dave
