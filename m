X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1016" "Thursday" "19" "May" "2016" "12:07:16" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>" "23" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016051917:07:16" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        bfriesen@sim May 19   23/1016  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<57292879.7050303@gmail.com>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26297 invoked by uid 550); 19 May 2016 17:07:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26270 invoked from network); 19 May 2016 17:07:29 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <57292879.7050303@gmail.com>
Message-ID: <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com> <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Thu, 19 May 2016 12:07:17 -0500 (CDT)
Date: Thu, 19 May 2016 12:07:16 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

I find it very disturbing that there seems to be very little response 
from popular OS distributions to this issue.  Most do not appear to 
have issued any package updates to close the shell exploit.  Perhaps
the opinion is that major new versions will be introduced as part of 
major distribution releases and it is ok for users to exposed to 
problems for two or three years.

As an example Ubuntu 14.04.4 LTS (which is supposed to be getting 
security updates) has not provided ImageMagick or GraphicsMagick 
package updates in 3 years.

Even NebBSD pkgsrc does not appear to have created a new version to 
address the "ImageTragick" issues.

What is the point of security notices and advisories if there is no 
response from the community to provide updates to protect the majority 
of their users (who are using 'stable' releases) from the problems?

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
