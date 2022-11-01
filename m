Received: (qmail 19883 invoked by uid 550); 1 Nov 2022 19:41:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15983 invoked from network); 1 Nov 2022 19:35:59 -0000
X-RG-Spam: Unknown
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvgedrudehgdduvdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuuffpveftpgfvgffnuffvtfetpdfqfgfvnecuuegrihhlohhuthemucegtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvufgjkfhffgggtgesthdttddttdervdenucfhrhhomhepffgrvhgvucfjohhrshhfrghllhcuoegurghvvgeshhhorhhsfhgrlhhlrdhorhhgqeenucggtffrrghtthgvrhhnpeekfeegfedvgeevgeeguefhleduvdfgfeefteetvdehveekheevieeguddugeevieenucffohhmrghinhepghhoohhglhgvshhouhhrtggvrdgtohhmnecukfhppeduuddtrddugedurdduleefrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheprghnvghurhhinhdrhhhorhhsfhgrlhhlrdhorhhgpdhinhgvthepuddutddrudeguddrudelfedrvdeffedpmhgrihhlfhhrohhmpegurghvvgeshhhorhhsfhgrlhhlrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdprhgvvhfkrfeptghpvgdquddutddqudeguddqudelfedqvdeffedrnhhsfidrrghsphdrthgvlhhsthhrrgdrnhgvthdpghgvohfkrfeptegfpdfovfetjfhoshhtpehnshhsthhlrhhguddvphdqshhvtg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-RG-VS-CLASS: clean
X-Authentication-Warning: aneurin.horsfall.org: dave owned process doing -bs
Date: Wed, 2 Nov 2022 06:35:42 +1100 (EST)
From: Dave Horsfall <dave@horsfall.org>
To: OSS Security <oss-security@lists.openwall.com>
In-Reply-To: <Y2FhxvA/2e7xFUiF@itl-email>
Message-ID: <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
References: <20221101170833.GA10470@openwall.com> <Y2FhxvA/2e7xFUiF@itl-email>
User-Agent: Alpine 2.21.9999 (BSF 287 2018-06-16)
X-GPG-Public-Key: http://www.horsfall.org/gpgkey.pub
X-GPG-Fingerprint: 05B4 FFBC 0218 B438 66E0  587B EF46 7357 EF5E F58B
X-Home-Page: http://www.horsfall.org/
X-Witty-Saying: "chmod 666 the_mode_of_the_beast"
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer Overflow
 (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow
 (CVE-2022-3786)

On Tue, 1 Nov 2022, Demi Marie Obenour wrote:

[ Massive trim ]

> 3. When will OpenSSL be replaced by something written in a safe
>    language, or at least with a better-maintained fork?  I know that
>    distributions often cannot use LibreSSL (because FIPS, ugh) or
>    BoringSSL (because of no stable API or ABI), but I wonder if e.g.
>    libcurl should be linked to BoringSSL instead.

We see this over at https://boringssl.googlesource.com/boringssl/ :

  ``Although BoringSSL is an open source project, it is not intended
    for general use, as OpenSSL is. We don't recommend that third parties
    depend upon it. Doing so is likely to be frustrating because there
    are no guarantees of API or ABI stability.''

If even the manufacturer says that you shouldn't use it...

-- Dave
