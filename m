Received: (qmail 5668 invoked by uid 550); 29 Dec 2022 12:38:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26249 invoked from network); 28 Dec 2022 22:13:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1672265599; bh=ul/NZsCm1LN681rwuJVRjc6Rre5uxmh36nv6gaDD6Zk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bQ0sELAf0MkyDpX2YfhSPyZu7PNw0tyhKvYxrPslvfzsXpjtfbX+toZKJBF/k7E/Q
	 0q+oMGtUtbvHyugU9FhY7p7SRFCf3Vy6HAn9MnSQFM/SHnMCIcTmm4h331Hb4ge+kq
	 bT2B3J6rSoAt0+kyeXca4w/NmbDn3PkgsvtYApIJ0lFlw3seQNcY9Ho12tTRQS+pIt
	 UaW9ITffzg3CAtRn1OKZhdWYtMB6+siNCskG9+wAiSTpUlW8yTumfYzNwxVs+BVqyG
	 2KFH2FQ4XaDPM86p6mWMAR5qAFxiPUaBP6Im0tj+4hw8zB7v8Ki9kaI3j84eHTfiwp
	 AWYK/fgfJL1Vg==
Date: Wed, 28 Dec 2022 17:14:42 -0500
From: "Theodore Ts'o" <tytso@mit.edu>
To: Demi Marie Obenour <demi@invisiblethingslab.com>
Cc: oss-security@lists.openwall.com,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org
Message-ID: <Y6y/0uzFlTpkw/VT@mit.edu>
References: <Y6SJDbKBk471KE4k@p183>
 <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca>
 <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
 <Y6xzIR9P+a6uaaEx@itl-email>
 <20221228172517.l7h3m7wjfpxr3dzw@mutt-hbsd>
 <Y6yEv+6iYQQNaqi9@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y6yEv+6iYQQNaqi9@itl-email>
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

On Wed, Dec 28, 2022 at 01:02:35PM -0500, Demi Marie Obenour wrote:
> > I think the argument I'm trying to make is to be flexible in
> > implementation, allowing for future needs and wants--that is "future
> > proofing".
> 
> Linux should not have an XML, JSON, or YAML serializer.  Linux already
> does way too much; let’s not add one more thing to the list.

There's always Protobufs[1]!  :-)  And all of these are better than
ASN.1, for which Google already has a limited parser (for x.509
certificates).   :-)   :-)   :-)

						- Ted
