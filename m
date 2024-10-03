Received: (qmail 1799 invoked by uid 550); 3 Oct 2024 18:56:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15618 invoked from network); 3 Oct 2024 18:37:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1727980641; x=
	1728067041; bh=2IFCpGoV6mM0itiEMKptMLoQJqqyCJyPpZvigPPIw+w=; b=Q
	qb7CHoJC8DlyATS6iQ2h0mU3RDJx4JjMb8R3kBjk1VInR53+CV+JIrhSrhSON+mm
	a4HcezocRLASl8+azvLGBmm6/tmiGx4uJlF2GUUHRwKOmtwOxMcZms7dRBJ4s2Db
	O8R8unIrY8pV03xiVZqu64/zS8fVPCBa7aPWERhmU8apRReU2Z5Xzpvq+g9aSvxG
	nXoxNsIjxrDSfcoVjStnmQwAksIvtIYTGJS/Pdennu4vX7+HEJxWOyInWv/yYArA
	2ov6JEbcwR1UPcDgBW4SQIhwdM/3g8b8YDpEi8giAsuZLRaePMAnO7nxjPE/nCj5
	0BesSLHObvPpXcwL6+Ihg==
X-ME-Sender: <xms:YOT-Zme8yjH7-i9lToDvVsOGO0UIPw3o_TyIhxg7GJHMeWnJXlOgng>
    <xme:YOT-ZgPegKG6fQWNKarDUPv82I0QjiDDEgN-Ds2kOIAieIT_Laek0EC6RarWYnIX5
    IS-FVPrNxLF0FAgkg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvddvuddguddvkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepofggff
    fhvffkjghfufgtgfesthejredtredttdenucfhrhhomhepfdfrvghtvghruchvrghnucff
    ihhjkhdfuceophgvthgvrhesjegsihhtshdrnhhlqeenucggtffrrghtthgvrhhnpefhhe
    fhvddtudeileekkeejgefhieekffffhffhjeefgfejgfduffegvdevfeekgeenucffohhm
    rghinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomhepphgvthgvrhesjegsihhtshdrnhhlpdhnsggprhgtphhtthho
    pedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthi
    eslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:YOT-ZniReceaEbJbwihALUdwsMNzWpaIpFplsrfRadk2TEmCwXZwvQ>
    <xmx:YOT-Zj8s-JbvFp5ilivibDGAskiN_vA1wbPgFOVSYmjTDYFaHN9f4Q>
    <xmx:YOT-Zis1w-edoTNZ-b9JTomlarzJgUHzPsHxCRPgjXVqx6-oh1YVTg>
    <xmx:YOT-ZqHhbN7rf5M4H4l-OdLEnL4k7tShA3gT_O-upCp6jRABD7IRoA>
    <xmx:YeT-Zj6usz7AjbaOU3YA_gcBtIqmXb9WoVMToBJxuNo4mjaDJfxoPjC9>
Feedback-ID: i1f8145ad:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Thu, 03 Oct 2024 20:36:47 +0200
From: "Peter van Dijk" <peter@7bits.nl>
To: oss-security@lists.openwall.com
Message-Id: <c04ebb34-521b-42d1-bd50-c2ea9d0e78f7@app.fastmail.com>
In-Reply-To: <175c118b-0771-425c-bc9d-d7da8ec5f40b@me.com>
References: <175c118b-0771-425c-bc9d-d7da8ec5f40b@me.com>
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] cups-browsed vulnerable to DDoS amplification attack

Hello,

On Thu, Oct 3, 2024, at 19:54, Larry Cashdollar wrote:
> I've requested a CVE ID to be able to discern between the RCE and the DoS vulnerability.

I reported this as https://github.com/OpenPrinting/cups-filters/security/advisories/GHSA-rq86-c7g6-r2h8 last week, and in the edits at the top (by upstream, above the Summary heading) it looks like they did not want (or did not consider) to request a separate CVE for this. Please do coordinate with them if you decide to go ahead with this request.

(I did notice, and can see value in, Will Dormann's suggestion in the other thread that it might make sense to have more fine-grained CVEs for this collection of problems.)

-- 
  Peter van Dijk
  peter@7bits.nl
