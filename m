Received: (qmail 26088 invoked by uid 550); 5 Jul 2022 16:40:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26070 invoked from network); 5 Jul 2022 16:40:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sciops.net; s=20210706;
	t=1657039185;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VJ4WkknCo9BJ6xQg14nrnJ+5/8qRoMq+nXtDawWa0MY=;
	b=ADE0FHerDcrU1bpXr82hkh6R5UoS42rpQL2073aHuZ7OKsCmc1RFD1GQ2ZMFl2bwG4YjZM
	UL2PwQ9tw+HsnVXAi8fEDU2xJowQBAjvKMUJZCvDZjaH4EEbvhXEktfBGE2Yy6ozOHzn+D
	u4jqxwquz4yoUqqjv/QNv+vTW3FjNNo=
Date: Tue, 5 Jul 2022 09:39:45 -0700
From: Kurt H Maier <khm@sciops.net>
To: oss-security@lists.openwall.com
Message-ID: <YsRpUY9bb3i5ejuU@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
References: <YsJ7JjZ/R/jqN+YX@itl-email>
 <939888998.96730.1656936945905@appsuite.open-xchange.com>
 <YsLj+ux2Pgkir5F8@adhil>
 <a165ce13d67c1d9dd29e4a4f0681ed5dbfd592aa.camel@powerdns.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a165ce13d67c1d9dd29e4a4f0681ed5dbfd592aa.camel@powerdns.com>
Subject: Re: [oss-security] DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

On Mon, Jul 04, 2022 at 03:15:40PM +0200, Peter van Dijk wrote:
> 
> GNOME Evolution (Debian's version 3.38.3-1) hangs (interruptibly, by
> navigating to another message) when trying to open the message. It
> hangs completely (eventually I used the Force Quit that GNOME offered
> me) when trying to reply to it.

This bug report would be better sent to the GNOME developers.

Good luck,
khm
