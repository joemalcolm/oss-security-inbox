Received: (qmail 28495 invoked by uid 550); 26 Feb 2026 10:26:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28418 invoked from network); 26 Feb 2026 10:26:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772101570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LtsU13rTDaHkUwITgX5c3P2rnoy1UJjgRJR9e8IAaNc=;
	b=GPZijUU/pJ/8NvOEFS9u3f+g2a7TnKW6dwMmXJBDNbj6h3LKciRA6E7EJsi6n5T9pTxvcB
	l0aIsaAduuM78mZfl5OJLBuIixANbS/KIvozi9hvK1GRq2g9UWPW77wtIpZnkX9UBQnbH5
	pcq7lLdJX0fgiXV+sblwpWZ5SZ891tE=
X-MC-Unique: GHiE1MCDPGqjQZUgzUV9cQ-1
X-Mimecast-MFC-AGG-ID: GHiE1MCDPGqjQZUgzUV9cQ_1772101566
From: Florian Weimer <fweimer@redhat.com>
To: Marco Moock <mm@dorfdsl.de>
Cc: oss-security@lists.openwall.com
In-Reply-To: <20260225084235.288d26d1@dorfdsl.de> (Marco Moock's message of
	"Wed, 25 Feb 2026 08:42:35 +0100")
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
	<20260206172730.GA12303@unix-ag.uni-kl.de>
	<877bso8mhf.fsf@josefsson.org>
	<20260224011702.27987-1-justin.swartz@risingedge.co.za>
	<B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
	<27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
	<20260225084235.288d26d1@dorfdsl.de>
Date: Thu, 26 Feb 2026 11:26:02 +0100
Message-ID: <lhuqzq7ol6t.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: EprwLLIIDwmkKfymGSzo-xGkDm4hf6-BMD0u23GiW4E_1772101566
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] Re: Telnetd Vulnerability Report

* Marco Moock:

> On 24.02.2026 05:05 kf503bla@duck.com kf503bla@duck.com wrote:
>
>> Who uses telnet anyway? It's deprecated. Everyone uses ssh for any
>> kind of remote access.
>
> In certain situations telnet is still being used, because it is
> supported on a wide range of systems, regardless of key (exchange)
> algorithms or hash algorithms.

Part of that is that the industry has moved to a threat model where it
is considered more secure to use an unauthenticated, unencrypted channel
rather than one that uses (for example) an HMAC based on SHA-1 for
integrity protection.

Thanks,
Florian

