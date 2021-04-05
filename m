X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["354" "Monday" "5" "April" "2021" "15:29:14" "-0400" "Leo Famulari" "leo@famulari.name" nil "7" "Re: [oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil "4" nil nil (number mark "U       leo@famulari Apr  5    7/354   " thread-indent "\"Re: [oss-security] Risk of local privilege escalation in GNU Guix\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1677 invoked by uid 550); 5 Apr 2021 20:18:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11979 invoked from network); 5 Apr 2021 19:29:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=mesmtp; bh=WKXRk+8r2PtLoMBS198B7Tzk
	c+qHYnsvS4aw9z67HeA=; b=s6LpUWWByzUTIgNfWEPPYw7pB0gQUCq5tdVcwHza
	dxRnnvQqNSpXH3l7NYpJIN4w3c0yBII3ZuaIwFTrEXrwFpZ14UiLELNFUau5tJnA
	eM624qya1nBKvDc68B8yw/gEbW+CDK19wcNkwsijDUYkl5F6PQKvY6pkUJVoZ6oL
	Alg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=WKXRk+
	8r2PtLoMBS198B7Tzkc+qHYnsvS4aw9z67HeA=; b=Ah7ZadmigDgWcECBz15199
	u1BRLGZm6jQ2vSmOqmjnruom1sCRQ0GTwQh8JV+kbw+e28BicJIavhjhacjhVonx
	UE0fZwrX3EOIOmxFrsgms7Re9momVvrxTqOzbi+gxLJehOJK7u5p52iCfAnyeSzr
	/N1m82p7zuBAWLVsmwj1anSGk/+25QR8bZLZ1+Dq9vKYeYefKZXHOALODFI8reNs
	BT9wXoZxLUpWljVxmpKuy46RRbdN4JWIZadeLCS0o0JPZbbtONZvZjz4K75WMmU1
	r99Omw0ItGgnUyvpxhTyisKMB7W87oFeBzL95NHvD5FXWCjtlZNaZrQOKFbYyOcw
	==
X-ME-Sender: <xms:C2VrYGx43J2oI-tgjyW28WjLAy5CzVmhZzTsJhR5xQ2wDJhhbvT0Nw>
    <xme:C2VrYCRqlj6pzIaStZmdOApz-JSWp9fI8R6mh2V6bV4BTP0pob7AoPo93SvrS4oc4
    72IIndDP-xuuPu3xQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudejvddgudeflecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepnfgvohcu
    hfgrmhhulhgrrhhiuceolhgvohesfhgrmhhulhgrrhhirdhnrghmvgeqnecuggftrfgrth
    htvghrnhepueekkedtffdvtddugeejgedtvefhueefiedvjeeitdeigedtveejvdejheff
    vefgnecukfhppedutddtrdduuddrudeiledruddukeenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehlvghosehfrghmuhhlrghrihdrnhgrmhgv
X-ME-Proxy: <xmx:C2VrYIXh99FrdgaI-IjJIaoPPmmOxYshySWaqOJLzHLnTQFucQYIZw>
    <xmx:C2VrYMjvp5yemG0__KmYJ2psCTqmhiFbUXrUAaBrBuveGIWZkd5Mgw>
    <xmx:C2VrYICMkk0wt04MFAggOY3sJGjyWG8kWUHeIxDfSNWwPp7D5lfTog>
    <xmx:DGVrYH89SKCa8fFW3jtWyc5sGBETMENJF7c6JvRq7xXTRFfpzYcNIw>
Date: Mon, 5 Apr 2021 15:29:14 -0400
From: Leo Famulari <leo@famulari.name>
To: Jan Engelhardt <jengelh@inai.de>
Cc: oss-security@lists.openwall.com
Message-ID: <YGtlCoCs0XLXNYx2@jasmine.lan>
References: <YFPFrYcJK1e+qedn@jasmine.lan>
 <YGs+I9NUYzddLP9P@jasmine.lan>
 <YGtPL7ZucGDYmkmw@ryzen.bugs.fi>
 <o1q7r6r3-2n27-rs9-58n1-5oron278p642@vanv.qr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <o1q7r6r3-2n27-rs9-58n1-5oron278p642@vanv.qr>
Subject: Re: [oss-security] Risk of local privilege escalation in GNU Guix

On Mon, Apr 05, 2021 at 08:31:29PM +0200, Jan Engelhardt wrote:
> Maybe it is? A recent requesto f mine took 13 days to complete.
> With Leo's request being 2 weeks old now as well, and considering
> there is some public holiday thing going on, his request might
> get a response tomorrow.

Thanks for the data point. I suppose we are in good company...
