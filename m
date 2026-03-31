Received: (qmail 23934 invoked by uid 550); 31 Mar 2026 17:17:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23910 invoked from network); 31 Mar 2026 17:17:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=dwheeler.com; s=selector2; h=To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
	Content-Type; bh=tDgUUVcOGSSvOSW7ZWfTXizbmohSDTrhLiOyD44GknY=; b=Xglt/2ApVvhK
	/f/GB3LkbpWvu9d3AKqLGPO8PRumbVSKPtWVVqWeNOmX8f5XlucWUgCwZo6YZXd1osj+4KVd7Ug04
	2Z8pN0vFAgzXy5keyPuzMmuotysj4/E/agB7NB1HcRUagnDiOcLp+H9ilfNpSg75dVu4lWLVadtS1
	M2br5b6A6Ri2Wme7zHrYcN8DVks3mA8rhS8v6vQL/iFKDoNfhOL2CgnaRrsaBRrN9s8pV9wutR8J6
	yA8fqnBjqY4hRPshnmN+JP2g4lExOS/rmUGQbpBh6SdSMeZ7YUkwMOYPAsbJHctpxH+qLLwO/WwK4
	ymKxw6GhtBThfht1C/PbQA==;
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.4\))
From: "David A. Wheeler" <dwheeler@dwheeler.com>
In-Reply-To: <acvvA2uP7s/aGD9q@256bit.org>
Date: Tue, 31 Mar 2026 13:17:04 -0400
Cc: Demi Marie Obenour <demiobenour@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <712E645E-3EDB-4D8B-916F-C3B4320E4DB0@dwheeler.com>
References: <aco9Ai89pj+OQ0YS@256bit.org>
 <e1cbe881-2d13-442f-8977-39baaad84ec8@gmail.com>
 <acvvA2uP7s/aGD9q@256bit.org>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3776.700.51.11.4)
Subject: Re: [oss-security] [vim-security] Vim tabpanel modeline escape
 affects Vim < 9.2.0272


> On Mar 31, 2026, at 11:57=E2=80=AFAM, Christian Brabandt <cb@256bit.org> =
wrote:
>=20
>=20
> On Mo, 30 M=C3=A4r 2026, Demi Marie Obenour wrote:
>=20
>> Should `modeline` be disabled by default in future releases?
>> It's a huge attack surface.
>=20
> Indeed, it is probably time to disable this by default:=20
> https://github.com/vim/vim/pull/19875

I agree. The defaults should be safe.
Until that's fixed, vim users should edit ~/.vimrc to add:
set noshowmode

That won't help the many who use the defaults, but it's a start.

--- David A. Wheeler

