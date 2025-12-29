Received: (qmail 1718 invoked by uid 550); 29 Dec 2025 20:02:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25757 invoked from network); 29 Dec 2025 19:58:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seestieto.com;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1767038290; x=
	1767124690; bh=ILiX8XIO5m/vnjWNFDGHTWcehXainyQ6QI6cbR6gVzA=; b=2
	3QTr2K9QK6VNaFuA7JnXeplsL1AmMKPAadyYgjJntscR7K0OgOEPELN8Tmt3Lc0i
	0BPjmKR0BrLXSEYiMj4swV0TrKPjKHtpDftr2NcgvsIUO4jktGPArYO8qcSYT+yE
	PkEL3yiQEzjAySIPSxpKqEMqTJE5IoMKE45vu/fzcqQ8AYMIqs/je1jM+UVaAf+/
	a//bykFulT7m7Eb6PnuxK8CRU1VmW34a5nw93qTBSoJxIJ2Fk8Q26sOe5iJD6OXz
	x6RgZ4m8859NFInvwOLuHIaoISchX8f3mvYd635ZWwzXQVQgyfk5bLZf8t8aZoIR
	KNW9DWlnuVrAoET0yAV7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1767038290; x=1767124690; bh=ILiX8XIO5m/vnjWNFDGHTWcehXainyQ6QI6
	cbR6gVzA=; b=z6aOBkhIjwqLl7EmAKaReo4PjKz+WRlq3spZtV0KfbIhelG6Jma
	fco9GMhml0QgkKMwKZqahXJ7MtiZ2AzNvkW03HAUFp0R841sdgo/nGORQrMG69vh
	44UnEfkOMgsXXf2lggqL6867jrverq8q522N6Ui4k2MzjeI2qi3gFvHxCPBOB3Xu
	xMDBYrH8woqy5J2kmIS0hG+o3rooBm4NMtQPwr6QWM+um2Jb0Z4JPwzf2NW0jz/e
	XPADPkaashO3iE1+L+Hy79QlO7UK3bA6lDNd7SR0SlwhE4/pZdG/RMygDs9SavJD
	oQ9fQIWgWT/kgJLvVSXof6oCN7AoHRFeNkQ==
X-ME-Sender: <xms:Ud1Safee3m0RRr8PRg-6VaFkSbHP0egQgu5uJofqjfUlvtcDORvk3A>
    <xme:Ud1SacNZfusiHilBhtZXGXcdX8sQjI9382wXHiwegDSNgfmxnuYsIyBhfudcdVJwW
    n3DRTMy3zzlRqp6xnivsGzRjtGbNA91aCAQNX1zCLxL6mvfYA>
X-ME-Received: <xmr:Ud1Sadh3HxEDVGa28vQmIX4BhlC21rlLvmbq_zHpPKr2guUd5vtzzCAo2MGwihZRHg5wsOovZjWTnNsj_w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdejkedtgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufgjfhffkfggtgesthdtredttddttdenucfhrhhomhepjfgvnhhrihhkucet
    hhhlghhrvghnuceophgrsghlohesshgvvghsthhivghtohdrtghomheqnecuggftrfgrth
    htvghrnhepheeuheeuueehffffueefheegfedtkeeuvddtkedvueevjefgffejieejvddt
    jeeunecuffhomhgrihhnpehgnhhuphhgrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepphgrsghlohesshgvvghsthhivghtohdrtgho
    mhdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepsh
    holhgrrhesohhpvghnfigrlhhlrdgtohhmpdhrtghpthhtohepohhsshdqshgvtghurhhi
    thihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdprhgtphhtthhopehjtggsiedvvd
    ekudesghhmrghilhdrtghomhdprhgtphhtthhopegtohhnthgrtghtsehgphhgrdhfrghi
    lh
X-ME-Proxy: <xmx:Ud1Saf0kUjTTVsE5b6rKG-ZI-8rwXHzNi_Q4V3XAmnVXZMhapR7nRg>
    <xmx:Ud1SaXhDskDdvDu4MW2NnaPhHW5X0Psph5xdocRjO_Ki7PYbhD8dmA>
    <xmx:Ud1SaffXukUk0ZBOtyystClFarzHe3-B4UQA6-0e5E0kCB0qQIlZmQ>
    <xmx:Ud1SaanxNGC0FveWCwnGHLk5CCd5fEgV9Z24QT9Wkokzgr23f7opNA>
    <xmx:Ut1SaelZOdpUDblb_DNQkBfI_ZNm7_IlQKM7YzIx36iXdYUr1N_CcnX2>
Feedback-ID: i8ea641e4:Fastmail
From: Henrik Ahlgren <pablo@seestieto.com>
To: "Lexi Groves (49016)" <contact@gpg.fail>
Cc: jcb62281@gmail.com,  oss-security@lists.openwall.com,  Solar Designer
 <solar@openwall.com>
In-Reply-To: <d892df77-a488-4a51-af35-697897e3984e@gpg.fail> (Lexi Groves's
	message of "Mon, 29 Dec 2025 17:57:44 +0100")
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<20251228042744.GA629@openwall.com>
	<0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
	<d892df77-a488-4a51-af35-697897e3984e@gpg.fail>
Date: Mon, 29 Dec 2025 21:58:05 +0200
Message-ID: <87tsx99i2a.fsf@noux.seestieto.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

"Lexi Groves (49016)" <contact@gpg.fail> writes:

> Yes. We found this advice in [The GNU Privacy Handbook, Chapter 1.
> Getting Started, Making and verifying
> signatures](https://www.gnupg.org/gph/en/manual/x135.html):

I'd just like to point out that the GNU Privacy Handbook (GPH) was
published in 1999, and I have not encountered any more recent revisions.
I believe GnuPG did not even support RSA until version 1.0.3 and
AES/Rijndael until version 1.0.4, which were released in 2000, meaning
the handbook exclusively addresses DSA and ElGamal, making it 25 years
out of date.

The GnuPG Manual (https://gnupg.org/documentation/manuals/gnupg/) is
much more current, but sadly it is not structured as a user guide that
would introduce a new user to PGP concepts and best practices, etc.
