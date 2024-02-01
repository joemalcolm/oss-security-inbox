Received: (qmail 20174 invoked by uid 550); 1 Feb 2024 20:24:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20156 invoked from network); 1 Feb 2024 20:24:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1706819235; bh=bUYxEHd7Ti9cq1RJzct485/3gzdAsSqqexPOhWiwGRs=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=gvUjMcJQRSzpS098DpFE9NjsXbI9li5Hzo4dVxkv5ZSootlxW/N3wFe2p9f4dZE8z
	 fTJ1OZPI00aAR/VmYyIfdEz6dY5EwyTkDDCf7gUMrX757d8CjmXQYbzeCARFjklNii
	 7I0adTtgcxCpeysQ6OCOTmmBwOh512weeLaGWJkG9RR87Tw4B7zOZuSUJNww3b0D03
	 S2IOaAXLfppIK7Gts4bs53v4lovQJiGy/fQtqrnZMJyGRKGjkEuafqBVAqR694hFmY
	 cK4bWGoyL4O6LkWy+RK3/LB58dNQrPnJVpq6960I7TgenstSAzPpb+b7ayWz31iwY1
	 i8b5wb9vra1gw==
Original-Subject: Re: [oss-security] Re: Python standard library defaults to insecure
 TLS for mail protocols
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Thu, 1 Feb 2024 21:27:15 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20240201212715.67677c9a.hanno@hboeck.de>
In-Reply-To: <r2yfkmeszb5nz37jepgatysvm3ajua3kwte72sfzdicffh5vze@oizk252b5l77>
References: <20240201123100.42ba1334.hanno@hboeck.de>
	<r2yfkmeszb5nz37jepgatysvm3ajua3kwte72sfzdicffh5vze@oizk252b5l77>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Python standard library defaults to insecure
 TLS for mail protocols

On Thu, 1 Feb 2024 09:45:36 -0800
nightmare.yeah27@aceecat.org wrote:

> Relaying *MTAs* do not usually verify the certificate of the server
> they connect to.

Even that isn't true any more in 2024. The largest mail providers (and
plenty of small ones) all support MTA-STS. So in most cases,
certificate validity and hostnames are checked.

> When they do, it creates problems because MTA
> certificates are very often self-signed. IIRC Yahoo relays in
> particular used to have this problem (or still do?)

Doubtful:
host -t txt _mta-sts.yahoo.com
_mta-sts.yahoo.com descriptive text "v=3DSTSv1; id=3D20161109010200Z;"

If they had invalid certs, they wouldn't receive any mails from MTA-STS
supporting senders. I think someone would've noticed.

> It is true that MTAs are not usually written in Python :-) So maybe
> the proposal is OK. But there's a general point to note here, namely
> not all protocols are the same wrt TLS.

Some are slower, others are faster, but all of them should strive for
deprecation of man-in-the-middle-vulnerabilities by default.


--=20
Hanno B=C3=B6ck
https://hboeck.de/
