Received: (qmail 27778 invoked by uid 550); 6 Sep 2022 12:31:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27751 invoked from network); 6 Sep 2022 12:31:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1662467473; bh=uQmRI5fPIH7qG4CQ30bkMlAWxeqTBwsdykOKq3yZSGw=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=yRH5/iCAiNImnoM18hX9hT4X9fUfPXRsp6FDFnz5sigAWvEwLgiAEJnKADHT9tChS
	 UXxkFroZt8xIfc7d5gC3t0TAyrnWbXQo8ysp0VjEEnQk+PnJ+VukYvpsGbyzSNQVp3
	 hwba7hUVYIx3u5OYTg8pjSoeAxkplZO2emyFz+Hs=
Message-ID: <c6a45ff60ee7199e8fc18871764a6e598b83d76c.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Tue, 06 Sep 2022 08:31:12 -0400
In-Reply-To: <20220906115010.gs7kec3wkmayhmhf@yuggoth.org>
References: 
	<CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
	 <20220906115010.gs7kec3wkmayhmhf@yuggoth.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.3 
MIME-Version: 1.0
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

On Tue, 2022-09-06 at 11:50 +0000, Jeremy Stanley wrote:
> On 2022-09-06 08:47:58 +0300 (+0300), Georgi Guninski wrote:
> [...]
> > sagemath gives access to the python interpreter, so code execution
> > is trivial.
> [...]
>=20
> I'm not familiar with sagemath, but is it intended to protect
> against such cases? Note that even if all it does is pass
> expressions into CPython's eval(), it's pretty much impossible to
> guard against misuse without completely sandboxing the underlying
> processes. Denial of service scenarios are really the least of
> worries in that case.

That's about right. Sage does provide a web-based notebook interface,
but the bottom line is that crashing is one of the nicer things you can
ask it to do if it will execute your commands.


