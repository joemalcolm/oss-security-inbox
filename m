Received: (qmail 5273 invoked by uid 550); 22 Dec 2023 12:10:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5255 invoked from network); 22 Dec 2023 12:10:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1703247064; bh=N7VVrdgTok5WkY49PO6hnRdAGfVsv2N3yBgkv0FtqGU=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=HGTGzQel7SI2PqMz3kyJA1M4gaLvx3NrsHdBM6+B1cx74m2FGRFOADzPN47/bCQ0g
	 AGil2sTqcOOLfm/g13xfHVpOVEYgvzBSzBZ4GFoRt1QiFuiNllEDyq3TuGa32w+AFh
	 XuN6YSadFeQehlvavVNDmNr2ewf0EKntdx0oVC0xlR0A47Frd50PanA0xbHdM7PE2z
	 G/ojDOCIt5oRVTzIx9g2De+I9XYqa+P9/w+F6AEfIMSOwk179lVEZfkc4dQETGVEBh
	 OOOs530h3UUf6pLKW+9CA1Br0eTe6vgwQmp7Dvde23LmxzTToF1ByRrYC8MkjXfELH
	 3O1vbHZvM24GQ==
Original-Subject: Re: [oss-security] New SMTP smuggling attack
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Fri, 22 Dec 2023 13:11:02 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20231222131102.1b8083c4.hanno@hboeck.de>
In-Reply-To: <20231221143630.GD14101@suse.de>
References: <20231221143630.GD14101@suse.de>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] New SMTP smuggling attack

In case this helps:

SEC Consult has not published a test tool, and it seems they have not
tested many mailservers.

I have tried to understand the attack, and came up with a preliminary
test script myself:
https://github.com/hannob/smtpsmug

This is pretty much work in progress, not really documented, and I am
still unsure what exactly the "right" behavior should be.
But I'm sharing it in case it helps others. I may or may not update /
improve it in the coming days.

By default it tests whether a server accepts the <lf>.<lf> behavior.
For testing the sending side, you will need to setup a receiving server
and analyze it manually.


--=20
Hanno B=C3=B6ck
https://hboeck.de/
