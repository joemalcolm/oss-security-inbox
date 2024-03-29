Received: (qmail 26178 invoked by uid 550); 29 Mar 2024 22:19:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26108 invoked from network); 29 Mar 2024 22:19:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anarazel.de; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1711750779; x=1711837179; bh=GO8HQyQvsd
	EOPxMK8XJJAQFGvCo4AvfTkMmJeJE72/0=; b=krsBNZHl/4KdG26brrdqADlWJ1
	KyBhxBiJY93dPpLEv7czsJfZfeLp432m/uw99sa4luVPnDoPNibPo1Sd6bmPo6rY
	g/R/ics5ki5gd8tGRqzMBdRBlvGJnHfZ8uHZLOJMIPEhRY/X9cNSf2JY3xZOsaEY
	TBb+oEwHMTkPx+ZJU4Qe6htsqPMCx/01b9tkdFazsyG4b0SjQpu8ke5g4+ARD7Gl
	jRDtNXbK2CCX0jdk0bLcgifpM//RcOF6Mk/JgROmvwIq7GOke1rYK2PJ3HXUg99k
	C/uvYBpcDhymXVFec5hkkS2Ap8j+q+olnJAbp9uxF/c+72YHuAT1vQ8j2kBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711750779; x=1711837179; bh=GO8HQyQvsdEOPxMK8XJJAQFGvCo4
	AvfTkMmJeJE72/0=; b=ZewWCU8FpmGjK8T2zaWU3utZv5MwZMO3liMUHcPu8tre
	2FUHbmnVij8i21dHqBPwvNxCM+veRrPxP30VxLqzAkCZ6C+agPoatQTb11Yq5yDz
	Q4ucg2CISRBXC5UZs6XWAAkp+NJWwStOHn6ohq8BQ/8fieDFkO+Uo+1Jd7pf5zGI
	ZdQ62rFPpyVjY5d1EacnVcIzcNXzmKq9cYH3fMeITDNcFO0Anb0POdEZ8fRrB9zN
	sMV9GPDXdT0Lex1CMD9TgmvK/j/NkLVMcGHfrKU8qjd+hkOeBHQaL8rPrcUb7P0K
	MrPH73uTrGxA1AcGf4v43vUxUNDUlZCzRh3ZR50Zgg==
X-ME-Sender: <xms:ez4HZl3AZC1QQMxIX1CIJ074Q1lrujait1rfp7Pe0saaM2qhwygHPw>
    <xme:ez4HZsGRaxwsF9N8XgwyZ3oj3i-9GZbJGuFTnlIQOXCEgMGJXABfTZh522vUw_9Pn
    yQjcR81N0SR57Gttw>
X-ME-Received: <xmr:ez4HZl7NDHKhu1H_j5haf2V0GLaKbLtgszMscV3HeZhQBmsPK-EPTqwpUB33zUESEviTjPtny_NTyi7OgXCBpADxCTdcyYa637XP4TLjXrqiCb5UjWg04iCUhlxW>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvvddgudeivdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpeetnhgurhgvshcuhfhrvghunhguuceorghnughrvghssegr
    nhgrrhgriigvlhdruggvqeenucggtffrrghtthgvrhhnpedukefhkeelueegveetheelff
    ffjeegleeuudelfeefuedtleffueejfffhueffudenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvshesrghnrghrrgiivghlrdguvg
X-ME-Proxy: <xmx:ez4HZi1RgStvT_Ov924L3lLWJ90CFpjB1HO05nj816uPTQwI9J3zlQ>
    <xmx:ez4HZoHCvcxtA8SwTpplZ1r65R8fDUu7WzW0mO0RIRntdgzaxv4aZA>
    <xmx:ez4HZj9TXlcfsu3LbIs747FU0I3HSPfdUS5hA23VBzAyBw0Ra-pDFA>
    <xmx:ez4HZlmdpcRJDJ6lei2Fvf6IWiZBdVPnzBB29-_eHj3YsRWL7MyHJg>
    <xmx:ez4HZjP4FuCZiZo9VwLhcW835r6S29lOLICEBM7w4TJltfIQaCLeiQ>
Feedback-ID: id4a34324:Fastmail
Date: Fri, 29 Mar 2024 15:19:38 -0700
From: Andres Freund <andres@anarazel.de>
To: oss-security@lists.openwall.com
Message-ID: <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io>
 <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <uu7da3$87n$1@ciao.gmane.io>
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise

Hi,

On 2024-03-29 21:54:11 -0000, Tavis Ormandy wrote:
> On 2024-03-29, Solar Designer wrote:
> >> I have a minor procedural question for Solar though, shouldn't this
> >> have been redirected to oss-security immediately from distros? What's
> >> the rationale for an embargo here?
> >
> > We don't have a clear policy for such case.  Some distros list members
> > have indeed suggested making this public ASAP.  We ended up delaying
> > publication by one day per my suggestion (as a compromise between ASAP
> > and having no specific CRD), and I think these are some reasons why:
>
> Thanks, a compromise is better than nothing :) I think I would have
> argued for immediately discussing this in the open.

FWIW, I don't know much of the tradeoffs in this space. With that caveat:

Personally I would have felt quite hesitant to post to distros@ if I knew that
distros wouldn't get a reasonable, small, amount of time to prepare, so they
have fixed packages available at the time of the public posting.


> > 2. We didn't know how the culprit (or group) would react when they
> > learned of the full extent of the community's awareness.
>
> This is true with any vulnerability, there is always the possibility an
> attacker is already aware of it. They could respond to a patch being
> released by trying to extract as much value from their exploit before
> it's worthless.
>
> I'm not convinced that's a good argument to delay making the patch
> available?

What patch? You mean going back to an older version?

Greetings,

Andres Freund
