Received: (qmail 18332 invoked by uid 550); 15 May 2023 12:05:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18311 invoked from network); 15 May 2023 12:05:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1684152321; x=1684238721; bh=SyTZbXTT6ztkPZGO4tmwUUipCDo+uc4KTDl
	qbZvFQfI=; b=O7CfCAyu85ZFAAae3+J1LJI3b8+5hR1H4PUA8VfTMtcAObE9MYE
	dSIJYesGPH1fwPhn54pNs2imoqmWL/M62xG9xthzbYTephL+wsMgQJxE4sBYWHZp
	HXCQrz6DiAUBPVGmFp6xqOVm6tAqZ9iUNc4TvwPYHytt1YBjaO0dB0kAAncpQ3AM
	dEAsfQu3L7GrIWKiDLHtHgbl0jIuWbm15ksRypqClNxXqBVHf1rTO6n/fZPtmWkZ
	Xs8Yns69gzl4wUMFwVMmsEzPdImBH+KkqdC0vtJcc/XXRcSN8n2Z3Zkeqt+2e5O5
	kwKrC4G9jBGlsq1s46JqmnzZ9VZyJRuUYIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1684152321; x=1684238721; bh=SyTZbXTT6ztkPZGO4tmwUUipCDo+uc4KTDl
	qbZvFQfI=; b=R8PsUMSW/zYI27ACYe5tZ91KN/APFRa3Ck6ENsIB5ae/4a295wH
	Q/Nc9SJiY62/YEu4d30IVO5iBHK8SiSYKN7iBjThAFWOMFeMJuW3hvUbGysXRPc7
	aLpbGlBfuFsAq41zEKplvSuNou3KONZRMNY9dCniMplVZO5lsFIx74aiue+e6j6s
	hehg9xvALTdTxlONbukBSeUCUN2OWXNQ6JJ3SKe5/X06NPIEZBVyp8MonZkRSFUO
	Y3rxWTRcXUe8pqnPuwqGcprbUxbJFVaBm3NOmIE+kh/PmokrTLl1AbtIhspb/FsD
	X3JD5YEMgd0ZCUI1bXvcnuTbWqYLsAJN9wA==
X-ME-Sender: <xms:ASBiZOlxL-_4LFqELVBj3inEfcyZegWGI_KiDFutTZHdZ0Mw735gZg>
    <xme:ASBiZF3yTNA0OnAxniY0G0EefB6D7FXitX8iME55GP0rOhU2rHXBHKd821Ug2rUca
    sIsad0A802_TA>
X-ME-Received: <xmr:ASBiZMoXn91UVEX6Zxpvo38u9NCQuA0PCWegq-qZroxbUaJN_NjbtZUcYux-u6lKJDINJ0Hu86KOrLTsz-up7cOAtQ7-v2D41pVtVg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeehjedggeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtugfgjgesth
    ekredttddtjeenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtgho
    mheqnecuggftrfgrthhtvghrnhepgfekffeifeeiveekleetjedvtedvtdeludfgvdfhte
    ejjeeiudeltdefffefvdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehm
    rghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:ASBiZCkJOKtjAbLetiiSRaVAGZ38vXXYNslsOeIc8ASgMVEUciJgMQ>
    <xmx:ASBiZM2AJntfItSLjn-0B9EfPw_ckdjrxdIimuuTa6K5v3KC50C8BQ>
    <xmx:ASBiZJuh_wpTgaay537ZCD_prNU-IZxV77VSkVluju6t_jw9v38CNA>
    <xmx:ASBiZKD6YXdfVuqFNJurDvXU-NWJO7kfvvOAudTGkQqtNGmeI3RHTg>
Feedback-ID: i787e41f1:Fastmail
Date: Mon, 15 May 2023 14:05:18 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: hackerzheng666@gmail.com
Message-ID: <2023051547-arming-kinsman-4f0a@gregkh>
References: <CABwY-5L9X-haRs9R0JEVBECHs4eVwXS8F1Cw0EtjvWbSkW22Dw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CABwY-5L9X-haRs9R0JEVBECHs4eVwXS8F1Cw0EtjvWbSkW22Dw@mail.gmail.com>
Subject: Re: [oss-security] linux kernel 6.3.0: slab-use-after-free Write in
 txEnd due to race condition

On Mon, May 15, 2023 at 09:34:36AM +0800, 蓝色的小羊 wrote:
> Syzkaller reported an error "slab-use-after-free Write in txEnd".

In the JFS filesystem, right?

<snip>

>  fs/jfs/jfs_debug.c  | 2 ++

	$ ./scripts/get_maintainer.pl fs/jfs/jfs_debug.c
	Dave Kleikamp <shaggy@kernel.org> (odd fixer:JFS FILESYSTEM)
	jfs-discussion@lists.sourceforge.net (open list:JFS FILESYSTEM)
	linux-kernel@vger.kernel.org (open list)

Any specific reason you didn't send this to the mailing list and
developers who can review and apply this potential fix to the kernel
tree?

syzbot-reported issues are not really a new or exciting thing, we get
loads of them every week (see the syzbot mailing list and summaries).
What is good is for fixes like this one to be sent to us so that we can
merge them for all to use.

That is if anyone is actually using the JFS filesystem anymore, it is
pretty obsolete.  Are you using it?

thanks,

greg k-h
