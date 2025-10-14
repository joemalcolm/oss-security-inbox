Received: (qmail 26206 invoked by uid 550); 14 Oct 2025 18:42:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26168 invoked from network); 14 Oct 2025 18:42:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1760467370; bh=LjTDMt/fhga/rbxYEKbPa7ZjLwfOMqbbJ1AEhWMEmzA=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=UzaAPOOu38AfM26Yt1tloz7EJJ8IpQR9K6wCy9QQAbS5ozWkPsz/7khUkfftjiCmD
	 slmtse3ycZmbG/JQYeyrd2eILRgqaIcRgoFZ3pe8t/N/DgNFKfbErsJv1BLgI87hWm
	 L7ln7S+c0DqljTWZOkKD6MG3m3QUWkf6mRHR2HOsUpgmwp56LRUf4LazMnhSPR1Lm7
	 bhvmibtd2WXlfeaudXmEvoEnCo5JhPO/XW1yBawoZU+5cP5Vq6cY2DTttv2PQJeMZH
	 rtTuF1ozKo4WbM8hp0jYDuUP72XnYqgWd8hY2yoRCCKPte9iC/bmwDiuinngGdIlFs
	 iTc4Pdh+ziovQ==
Original-Subject: Re: [oss-security] BoringSSL private key loading is not constant
 time
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Tue, 14 Oct 2025 20:42:48 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20251014204248.659865b9@hboeck.de>
In-Reply-To: 
 <CAF8qwaB=b0EDUTckx-ZHdAHkj-_kN9xPmfVFJP8XxCUq-W9Q5Q@mail.gmail.com>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi>
	<CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
	<ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
	<CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
	<CAF8qwaB=b0EDUTckx-ZHdAHkj-_kN9xPmfVFJP8XxCUq-W9Q5Q@mail.gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] BoringSSL private key loading is not constant
 time

Hi David,

Thanks for the explanation. At least for me, this is different from how
I initially interpreted this issue.

It would appear that the ideal solution would be to phaseout such
malencoded EC keys. Do you have any idea how prevalent they are, and
which implementations created them?

I wonder if there are steps that can be done to get to a deprecation.

Applications could emit warnings when loading such keys, and APIs could
provide an optional flag that rejects them if application programmers
want that. That could lead to a detection of existing such keys and
ideally remaining implementations creating them would be recognized
and fixed. Possibly, this could allow deprecation in a few years.

Any thoughts on that? Any implementors of EC key using software that
might want to go in that direction?


--=20
Hanno B=C3=B6ck
https://hboeck.de/
