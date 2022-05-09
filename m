Received: (qmail 7408 invoked by uid 550); 9 May 2022 11:51:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5887 invoked from network); 9 May 2022 08:55:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=activis.me; s=dkim;
	t=1652086501;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KzYflW3/vJdulXnRWa4iENaBYDDflgHf1vRo8+90B2Q=;
	b=Nq8cohMgiy7Es/dCvYnvHLNiSolxom6ugYvdkS8H8CkyZR0MJyV7JUoKOw0+jPII/CHh6W
	xWCAC5iYPr7BtC7Kjh7CKz38zdPrm/bRRgQ9L9CPnKtGiuuOTTAVlvx8wt1yEuPbrGazzO
	+MZwIovLJ5o1Bu4o6lnY63czV5NbHlfpTokyL2LPS5sMnvK29HUr4DGZ21tEFyRMt8fL8w
	OuZV+bo25AS1PZehAx0uAEYadV1gcciiCxaQag+vs8EmGbbc8f2RMG7hMWfAgSFykpLKt+
	UiV60Sn2+CQemrEC963DzPGnxXetTIilP4xDl9K0bb1CA/E/9KQINhJge9Sthw==
Message-ID: <62df0f69-5768-80ea-9dbf-f3e1c6f1e69c@activis.me>
Date: Mon, 9 May 2022 12:54:56 +0400
MIME-Version: 1.0
Content-Language: fr-FR
To: oss-security@lists.openwall.com, Jan Lehnardt <jan@apache.org>
References: <a388a13c-2f49-a36d-668a-633583013717@apache.org>
From: Archange <archange@activis.me>
In-Reply-To: <a388a13c-2f49-a36d-668a-633583013717@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2022-24706: Apache CouchDB: Remote Code
 Execution Vulnerability in Packaging

Hi,

Le 26/04/2022 à 12:44, Jan Lehnardt a écrit :
> […]
>
> In addition, all binary packages have been updated to bind `epmd` as
> well as the CouchDB distribution port to `127.0.0.1` and/or `::1`
> respectively.
>
> Credit:
>
> The Apache CouchDB Team would like to thank Alex Vandiver <alexmv@zulip.com> for the report of this issue.
>
> References:
>
> https://lists.apache.org/thread/w24wo0h8nlctfps65txvk0oc5hdcnv00

Regarding epmd, how is this achieved in the binary packages? Because on 
Arch at least, setting `ERL_EPMD_ADDRESS=127.0.0.1` as stated in 
https://github.com/apache/couchdb/issues/999#issuecomment-345068280 is 
still required. Should Arch make that a default in the systemd service 
file? For now this has just been a recommandation for single node 
security since 2017 
(https://wiki.archlinux.org/title/CouchDB#Single_node_setup_&_Security), 
but I can make it the default (the second part of the wiki advice being 
now an upstream default, I think it would make some sense).

Regards,
Bruno/Archange (Arch maintainer for CouchDB)

