X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/22/1
Message-ID: <20231222104647.GH14101@suse.de>
Date: Fri, 22 Dec 2023 11:46:48 +0100
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: Re: New SMTP smuggling attack
Content-Type: text/plain; charset=utf-8

Hi,

FWIW as no CVEs were to be found yet, I filed a CVE request for Postfix now.

Not sure if we need it for others like sendmail too, as that is also
referenced by the security researchers.

Ciao, Marcus
On Thu, Dec 21, 2023 at 02:46:56PM +0000, Claus Assmann wrote:
> Just for completeness:
> sendmail 8.18.0.2 has options to handle this too, e.g.,
> 	Accept only CR LF . CR LF as end of an SMTP message as
> 		required by the RFCs when the new srv_features
> 		option 'o' is used.
> 
> And for those who read the source code there's also an FFR:
> 	/* enable checking for "bare LF" in message */
> 	"_FFR_BARE_LF",
