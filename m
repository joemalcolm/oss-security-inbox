Received: (qmail 19899 invoked by uid 550); 2 Feb 2024 15:33:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19878 invoked from network); 2 Feb 2024 15:33:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sciops.net; s=20210706;
	t=1706888126;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=41pROfm3zHom3AZFZSXOxSLR1jtxHmM4kkigSafdqzI=;
	b=ydy/uAuIwnEvt552KNIFIQYZEfs85IX5R78JmtvhnouuCjyW3/SkiEXBJhbNsP/i3rSjia
	19nP3Yt7M5ymZOu8yqNxjArYPF3unTMqjfsDPCCD/vf2nKJASTN+K8/3xgdz6RFFV1VyPm
	QQpKooE30JtAO29JusCFQ2sUcRy3hbY=
Date: Fri, 2 Feb 2024 07:35:26 -0800
From: Kurt H Maier <khm@sciops.net>
To: oss-security@lists.openwall.com
Message-ID: <Zb0LvgCl3MA5PK0K@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20240201123100.42ba1334.hanno@hboeck.de>
 <r2yfkmeszb5nz37jepgatysvm3ajua3kwte72sfzdicffh5vze@oizk252b5l77>
 <20240201212715.67677c9a.hanno@hboeck.de>
 <20240201215634.z0zBS1HU@steffen%sdaoden.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201215634.z0zBS1HU@steffen%sdaoden.eu>
Subject: Re: [oss-security] Python standard library defaults to insecure TLS
 for mail protocols

On Thu, Feb 01, 2024 at 10:56:34PM +0100, Steffen Nurpmeso wrote:
> 
> This protocol is much too complicated, and totally
> over-engineered.  How many different approaches to get that job
> actually done do you want?  How much more configuration effort
> burden shall be put onto administrators?  Even more -- how many
> small business administrators there still exist.
> 
> Having DNS announce something is good now that there is DNSSEC
> getting widespread use, and over transported channels of all sorts
> (i only like two of those, but i cannot help it anyway).

I raised these objections on some IETF list or another, and was
rebuffed.  According to the MTA-STS project, DNS is too hard or people
are too stupid, so MTA-STS ignores DNSSEC and relies on HTTPS and
well-known urls.  I would like it to be on the record, at least, that
someone tried to talk them out of this.  I did point out that requring
an entire additional stack of protocols just to look up a port number
was not as clever as just specifying the port number, but that idea was
also rejected.

khm
