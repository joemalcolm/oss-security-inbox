Received: (qmail 27810 invoked by uid 550); 15 Mar 2023 09:10:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5614 invoked from network); 15 Mar 2023 09:03:29 -0000
X-RG-Spam: Unknown
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvhedrvddvjedguddvgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfupfevtfgpvffgnffuvffttedpqfgfvfenuceurghilhhouhhtmecugedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffujgfkfhgfgggtsehttddttddtredvnecuhfhrohhmpeffrghvvgcujfhorhhsfhgrlhhluceouggrvhgvsehhohhrshhfrghllhdrohhrgheqnecuggftrfgrthhtvghrnhepkeeiteejueeuhfefgeeuvdduieefvedugfevtdffkefhffejkefhuddtteehtefhnecukfhppeduuddtrddugedurdduleefrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheprghnvghurhhinhdrhhhorhhsfhgrlhhlrdhorhhgpdhinhgvthepuddutddrudeguddrudelfedrvdeffedpmhgrihhlfhhrohhmpegurghvvgeshhhorhhsfhgrlhhlrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdprhgvvhfkrfeptghpvgdquddutddqudeguddqudelfedqvdeffedrnhhsfidrrghsphdrthgvlhhsthhrrgdrnhgvthdpghgvohfkrfeptegfpdfovfetjfhoshhtpehnshhsthhlrhhguddvphdqshhvtg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-RG-VS-CLASS: clean
X-Authentication-Warning: aneurin.horsfall.org: dave owned process doing -bs
Date: Wed, 15 Mar 2023 20:03:11 +1100 (EST)
From: Dave Horsfall <dave@horsfall.org>
To: OSS Security <oss-security@lists.openwall.com>
In-Reply-To: <20230315094018.27d65aae@fabiankeil.de>
Message-ID: <alpine.BSF.2.21.9999.2303152001170.67613@aneurin.horsfall.org>
References: <20230314095103.1ed76cc0.hanno@hboeck.de> <20230314205725.oqr3um7kkkyq7zr3@mutt-hbsd> <20230315094018.27d65aae@fabiankeil.de>
User-Agent: Alpine 2.21.9999 (BSF 287 2018-06-16)
X-GPG-Public-Key: http://www.horsfall.org/gpgkey.pub
X-GPG-Fingerprint: 05B4 FFBC 0218 B438 66E0  587B EF46 7357 EF5E F58B
X-Home-Page: http://www.horsfall.org/
X-Witty-Saying: "chmod 666 the_mode_of_the_beast"
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

On Wed, 15 Mar 2023, Fabian Keil wrote:

> In ElectroBSD I removed TIOCSTI support in 2017 [0] and haven't noticed 
> any problems.

I hate tossing out functionality; would you not make it a privileged 
operation instead?

-- Dave
