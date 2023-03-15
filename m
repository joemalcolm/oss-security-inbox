Received: (qmail 28349 invoked by uid 550); 15 Mar 2023 09:40:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28328 invoked from network); 15 Mar 2023 09:40:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1678873236; bh=ykNFCE+6ll6RZ5zXeOAuENPjmu6y3wIabAiYENZ/qaE=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=WljkiSjKKUmrOh6dlSRO5eXaNzNDlWjBKPB0lVA1EjG86lb7HVE8ddG46rbcGMo7j
	 sBRj+HuSyhA4idGkVw0bztHBu+A5L/8ZnsyxzAZEZqS82rC3jqVnbOgWWx1rU5vUU0
	 ID9d71Lsqk22X0y2rC6sduyTnLzMoec75P7K3gFJOumGzBUdzEHu4HTbdzY2pPc/pe
	 GrDcZN9CUz+10x5GIDoB4+r6C6CilZ39/35fRcoQ1GvnZpLGFOid6kAvfNIhMGJ0Dz
	 ZDC1fkFkjb+JrMoiH09APy/xeg6OHqDJW0QkkqkHCnS+97oj2Ox4U1zPxZmCS9Wizt
	 ItJTVVZofV5NQ==
Original-Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI
Author: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Date: Wed, 15 Mar 2023 10:40:35 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20230315104035.4b48f27d.hanno@hboeck.de>
In-Reply-To: <alpine.BSF.2.21.9999.2303152001170.67613@aneurin.horsfall.org>
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
	<20230314205725.oqr3um7kkkyq7zr3@mutt-hbsd>
	<20230315094018.27d65aae@fabiankeil.de>
	<alpine.BSF.2.21.9999.2303152001170.67613@aneurin.horsfall.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

On Wed, 15 Mar 2023 20:03:11 +1100 (EST)
Dave Horsfall <dave@horsfall.org> wrote:

> I hate tossing out functionality; would you not make it a privileged=20
> operation instead?

=46rom a security perspective tossing out functionality is the better
option compared to restricting access. If there is practically no use
of that functionality and it's mostly a security risk, then removing it
is the right choice.

Reducing complexity is a good principle for IT security.

--=20
Hanno B=C3=B6ck
https://hboeck.de/
