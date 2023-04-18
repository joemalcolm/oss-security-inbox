Received: (qmail 17954 invoked by uid 550); 18 Apr 2023 19:50:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16176 invoked from network); 18 Apr 2023 19:49:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=faderweb.de
	; s=default; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Content-Transfer-Encoding:Sender:Reply-To:Cc:Content-ID:
	Content-Description; bh=NbwlSQ8LBsFGtSV5Hg5ohpgRJkhKQ+wQKZ1ZvC2qhLs=; b=Q02cv
	uLP2OG5fGgCVOysSrI0vbpxIjr9PpURLmiohGo/d0OoT1Iuhu5eukd5uoVBtJIwPaTHp90R5JlUG8
	Sb05h5RHLHCCXsq2KG5LNwX57sVya/ylUy+UmFRVoTQJLFIyucwwsnxPG0kweaMmNAThFFOHy5xJm
	6V5ZeQETj2Riugtz262GZA+o7Xz7zbxLXegFxvtwazeoB3JrtmzUKqlbB3/HiCCKgp2u4I1eVKsTn
	VDX62XSiDU6K6Zys8CeCM5oaREfWgnVNqUDMDAs1J/RdGicIBmPQSNjew+w+cchp9MOxih2Sqh7rH
	Vk5wwISszvap0cbYtR1/kvi6o03mA==;
Date: Tue, 18 Apr 2023 21:48:48 +0200
From: Jan Fader <oss-security@faderweb.de>
To: oss-security@lists.openwall.com
Message-ID: <odkxbhada7uibrlt2cugy5g3kphubqjvbm3ksspkk5tu6ej62z@3iumiral5gxg>
X-GPG-Key: gpg --recv-keys --keyserver wwwkeys.pgp.net
 ED7834905CAF79644D5685011A6BDEFB0E27FA44
X-Editor: VIM - Vi IMproved 9.0
References: <CAGUWgD88WiJwryGFt9hQe1rEpLX2PKb=ms-8iONvQ2qhDgtigA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGUWgD88WiJwryGFt9hQe1rEpLX2PKb=ms-8iONvQ2qhDgtigA@mail.gmail.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - s008.cyon.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - faderweb.de
X-Get-Message-Sender-Via: s008.cyon.net: authenticated_id: jan@faderweb.de
X-Authenticated-Sender: s008.cyon.net: jan@faderweb.de
Subject: Re: [oss-security] Checking existence of firewalled web servers in
 Firefox via iframe.onload

Hi Georgi

Am Tue 18. Apr. 2023, hat Georgi Guninski geschrieben:
> In short in Firefox 112, it is possible to check existence
> of firewalled web servers. This doesn't work in Chrome and Chromium 112
> for me.

I can reproduce this in Firefox 112, but also in Chromium 112.0.5615.121
and Edge 112.0.1722.48.

Regards
Jan
