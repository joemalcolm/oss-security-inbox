Received: (qmail 25959 invoked by uid 550); 4 May 2026 21:02:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25932 invoked from network); 4 May 2026 21:02:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777928567; x=1778533367; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KOmqV0tLvWF1S529gaxLPGavIpiLy9VY3BQxFeeKy/8=;
        b=XMtse3HNHHNkj/Sm/tisKdHw2SgYiyBQXMQTYq61ZNYMMVux5at5GU4gkecBOaWg2V
         7RoXL//pPByzU51oJpJepHQFqB7l1+LASHfSwvi/SQK83c48H9l7QjQqYZZ4MGiqDf5T
         gn7DKrzBeWptpyIh6LQm1aD4rEyGy2NmadapIPrdWHcFi4Io1J5NBmun5WYHjfzUjaNP
         08KqZYCc43SzA7qpLOANfITgZvnBAcDBjq2cFiNGqIxNIoFI/oB3M4i1YHzQbB5xs8jV
         dLTeWIY6iijMj94pCsWq4cklJI5u0j+kKdtjJ3TsldFimqXKmRoToqpXTo43K+NkJmJh
         C+KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777928567; x=1778533367;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KOmqV0tLvWF1S529gaxLPGavIpiLy9VY3BQxFeeKy/8=;
        b=AfOy8UxHImuwEscFIIAZzi66/Lj12dMF77O6nFipiKxtCYdQIPhipSX7oTXHRSVK3V
         LrkOo8OLa9ndxBgwVqIafWLn0/o+Wujnmy6qwAp/xkwg4+H3UKoaSsOAmHvTLkr5b/fP
         HeXtn8lZUiKhKnQefBc6HBg2FJl98NfMfrtROx6OtLimAscWzTGIuAPPaY0DndK+G5eD
         vGoERODhFcrQPHzmcUUwEElBnaTuEtdieZ51/ulrcKFSjDItGOD3qaS+3bdUk6N6IcXV
         1ksBmpIzQAfy6khqMkN6l1JSHEnMmuycestY7SwuZngscUY45mLpmD3W/HCsAQ3jVIFj
         1Erw==
X-Gm-Message-State: AOJu0YxUJe4jIGm7i4dYFd3jZ5byZASiWmIrPbgwtDS4hRaD3Z3zjQ49
	eF5ysWjDXsZCd5EFbRCm0M8s4dKmzEJF6ooiYHmx/6BKT91f5yKD7TCbhf4GYbo9
X-Gm-Gg: AeBDies2m+2s5Mrw7DN+x0y4syBM1lEl7jMPsarIVUYDHXEA6zInke/er69ohjl2rZz
	5mHZ4/4fwWWRzOyinrfERU4/KfyXmlyG4DEox56NJx3T9n94VHlsxJ0zqjiXAvkgGovyP+hs5x3
	FF5JT+MDn4gxN0Ik0BXUUS/i3Ndz43q3UVIJDwmh+oA63/Lt2/TrvE3GF9YbPfntlauDLc0ZCPk
	PsmLq5EntZiZZHKxkz14kIbdjoVDaRjdcoPKI7CPUAN1mqbGar31aFGb1Nv6rZ0h0kFinXLPv6r
	XdA2sYb6pK1v1i02YaPO7OOzqskpYedcJf6kEjLpt/6ULoA7YovzYw8xkBkjsWBMO2kBBc+BOO9
	i3fgjHYhIhqxMQLZOKlfU/atsn6PAwWoHFogPwLZMC6EakUVWw88KijpYp3nxJC8iEHWh0HNrR/
	3KTIvwjbd0ZRBqhvw3zYJs9NX5B7AF2Ik=
X-Received: by 2002:a17:907:9406:b0:bc3:1fac:d163 with SMTP id a640c23a62f3a-bc31facf865mr220757366b.10.1777928566769;
        Mon, 04 May 2026 14:02:46 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 4 May 2026 23:02:44 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <afkJdKvDnAbK1ODc@eldamar.lan>
References: <4g81Yq4Bj4zJrP1@spike.porcupine.org>
 <87se878751.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87se878751.fsf@gentoo.org>
Subject: Re: [oss-security] Fwd: [pfx] Postfix stable release 3.11.2 and
 legacy releases 3.10.9, 3.9.10, 3.8.16

Hi,

On Mon, May 04, 2026 at 05:35:38PM +0100, Sam James wrote:
> The most significant one here seems to be the first entry under "Fixed
> in Postfix 3.8, 3.9, 3.10:".
[...]
> Fixed in Postfix 3.8, 3.9, 3.10:
> 
>   * Bugfix (defect introduced: Postfix 2.3, date: 20050323): buffer
>     over-read when Postfix an enhanced status code is not followed
>     by other text. For example, "5.7.2" without text after the
>     three-number code. This CANNOT be triggered with an SMTP or
>     LMTP server response; is confirmed with an access(5) table and
>     likely with a policy server response; can possibly be triggered
>     with pipe-to-command output, header_checks(5), body_checks(5),
>     an error(8) transport in transport_maps, or a milter response;
>     and is confirmed with a DNSBL server TXT response while Postfix
>     is configured with "$rbl_code $rbl_text" in rbl_reply_maps or
>     default_rbl_reply. This could result in process termination.
>     Problem reported by Kamil Frankowicz.

This one got https://www.cve.org/CVERecord?id=CVE-2026-43964 assigned.

Regards,
Salvatore
