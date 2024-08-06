Received: (qmail 20344 invoked by uid 550); 6 Aug 2024 16:34:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20326 invoked from network); 6 Aug 2024 16:34:53 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1722962084; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=/qElLHHWIc9kye5EILw1ZKP8n/Vb0dnA51agdbqAKeQ=;
	b=D0eBJOlJqoEsjMCtmFxL7rtFbPIgznjwMNEpS2p5fxu1zJ8xs+cOZupO2lObcZBHcn/1YY
	VelOMq8ywjJwX1CA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1722962084; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=/qElLHHWIc9kye5EILw1ZKP8n/Vb0dnA51agdbqAKeQ=;
	b=ZrEwlYzRI0f+clZhcgF41ID3/E6Bxbjw/2nDvCTGABkBLLQHoLv03uuACNad7RDGBLAQry
	ijEq6nnAJG0TQdTcMsNP0vzyFAmH5qCvYEb3wyR8XRzLTDb97mlHR7uSv904dJ4OtA7xWb
	VxxwKQyJfqVfWfpbT2tLPeHFli2VLtz7YTtvNR6sxwtCawz+zNiu9dpaJMT0EFCNYd8znU
	7CgBPzDmQN7iA9Apq8VFFlW7VsaSp8bM9DZUrJ08bMdW9yArb0eAhMEtDwHd8r6UfP+2ff
	AGo/kgEYXrmAElL0ZvlNQgeoAUS0YDNvL6ObpmRXLOM76cu/dOs9KgStrI6f3Q==
Date: Tue, 6 Aug 2024 17:34:44 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <ZrJQpDftQthxOT2g@symphytum.spacehopper.org>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240806171232.6bd08942@zbook>
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

On 2024/08/06 17:12, Marco Moock wrote:
> Am Tue, 6 Aug 2024 05:02:14 -0400
> schrieb Neil Horman <nhorman@openssl.org>:
> 
> > 1) Are distributions/users comfortable with this approach in the time
> > frame proposed?
> 
> As a user, this is acceptable for me, but I know there are still
> machines outside that only offer such old versions.
> Some of them can't be upgraded easily because the vendor doesn't
> provide any new versions.

BTW, mainstream web browsers disabled pre-1.2 TLS by default around 2020.

> > 3) If the deprecated protocols are re-enabled, what would constitute a
> > reasonable warning mechanism to inform users that these protocols are
> > going away at some point in the future to pressure users to update to
> > a newer, more secure protocol?
> 
> Is it reasonable to output that on STDERR any time those protocols are
> used?

From a library?!
