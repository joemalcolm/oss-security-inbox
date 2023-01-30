Received: (qmail 32757 invoked by uid 550); 30 Jan 2023 20:13:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23932 invoked from network); 30 Jan 2023 19:58:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=markhack.com; s=dkim; h=Sender:Content-Transfer-Encoding:MIME-Version:
	Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=AZIReKRyRZhBXi1Yu33Uy3pi2eJIv1okanay/hYC3KA=; b=EF2bqBzT1DRb82ZDAd/RMIrPAo
	FlH4jXnG2/tbJoOqmnPadHiUIMOAtGrpwXxnb4uiOoJbKVgZCZ/q3L7I5EBKI91WeMCJi3jdSRiiK
	ZhHuMhBWjYxywIccxQpbAGLlZ12BY5v4q0FM44DShevUvlxkRWvjk1UkbGJKSOe2Io5eLTE1F37NO
	mLI3HzfFqtaZastZ7HaaEUZkLIOjFh3STrTLDpAdKQCvQj+aG85LolA/tkQSB8uaMU+ziPGfTCpRv
	/2z3atm/0aciZpQg3CI2xJHvl9sTKPfCxih4QdNfdwngyU1FYIJxZBnjGp5sFnMNLk49XgPJujyun
	VxoWZkmw==;
X-Authority-Analysis: v=2.3 cv=H7JAP9Qi c=1 sm=1 tr=0
 a=UH8/iCWBfdUmbm4Ft4Vi3Q==:117 a=0LpTLZtb7PxyfqalD3XYnQ==:17
 a=IkcTkHD0fZMA:10 a=RvmDmJFTN0MA:10 a=sdm2wQysh9cA:10 a=Ntg_Zx-WAAAA:8
 a=EeEuzAbTNdrx133j8BAA:9 a=QEXdDO2ut3YA:10 a=y0XBr-qCkQwA:10
 a=hjxXh4IufaEA:10 a=bUGGqQBGB0UA:10 a=RUfouJl5KNV7104ufCm4:22
Message-ID: <933f5586e2b664ab5fe6a7ce40c741bb92e2e412.camel@markhack.com>
From: Mark Hack <markhack@markhack.com>
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Date: Mon, 30 Jan 2023 13:58:34 -0600
In-Reply-To: <Y9gWyhCK9X8onWos@itl-email>
References: <Y9GEU0G9N5etu+H3@sol.localdomain>
	 <20230125214445.GA8487@openwall.com> <Y9L5/9/Oi732Y+a5@gmail.com>
	 <ef62abb418ad781fa159cc57b2270e05b0f88d49.camel@markhack.com>
	 <Y9gWyhCK9X8onWos@itl-email>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-EN-UserInfo: 9a4d7356ca47e8f598bc04fc7024e3f1:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: markhack@markhack.com
Sender:  Mark Hack <markhack@markhack.com>
X-EN-OrigIP: 75.81.95.68
X-EN-OrigHost: 075-081-095-068.res.spectrum.com
Subject: Re: [oss-security] Data operand dependent timing on Intel and Arm
 CPUs


The blinding I have seen was for RSA 
https://www.openssl.org/docs/man1.1.1/man3/RSA_blinding_on.html and at
least for ECDSA signatures

For symmetric keys such as AES which are mostly table lookup and XOR
based, I have not seen any blinding.



Regards

Mark Hack

On Mon, 2023-01-30 at 14:13 -0500, Demi Marie Obenour wrote:
> On Mon, Jan 30, 2023 at 10:43:16AM -0600, Mark Hack wrote:
> > This is a concern, but if you look into the crypto implementations,
> > data blinding is applied to mitigate both instruction and power
> > side
> > channel attacks
> 
> Can you provide examples?  I have never seen blinding used for
> symmetric
> cryptography outside of embedded systems.

