X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/21/7
Message-ID: <20231221144656.GA40693@veps.esmtp.org>
Date: Thu, 21 Dec 2023 14:46:56 +0000
From: Claus Assmann <ml+oss@...tp.org>
To: oss-security@...ts.openwall.com
Subject: Re: New SMTP smuggling attack
Content-Type: text/plain; charset=utf-8

Just for completeness:
sendmail 8.18.0.2 has options to handle this too, e.g.,
	Accept only CR LF . CR LF as end of an SMTP message as
		required by the RFCs when the new srv_features
		option 'o' is used.

And for those who read the source code there's also an FFR:
	/* enable checking for "bare LF" in message */
	"_FFR_BARE_LF",

