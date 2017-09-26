X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["964" "Tuesday" "26" "September" "2017" "12:31:38" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>" "24" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092617:31:38" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        bfriesen@sim Sep 26   24/964   " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<1978278.8CZP0B31Sj@wanheda>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16043 invoked by uid 550); 26 Sep 2017 17:31:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16019 invoked from network); 26 Sep 2017 17:31:51 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <1978278.8CZP0B31Sj@wanheda>
Message-ID: <alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov> <1978278.8CZP0B31Sj@wanheda>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 26 Sep 2017 12:31:38 -0500 (CDT)
Date: Tue, 26 Sep 2017 12:31:38 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

On Tue, 26 Sep 2017, Agostino Sarubbo wrote:

> This certainly does not answer to the original question, but upstream should
> consider to do something like ffmpeg does here:
> https://www.ffmpeg.org/security.html
>
> I guess this would be benefit for all.

It is incredibly difficult for most non-commercial upstreams to do 
this since they have limited manpower, they are not informed of all 
the applicable CVEs, and the CVE information received is essentially 
hearsay, received from unknown/unverifiable sources.  I am thinking 
that it is best for most non-commercial upstreams to not mention CVEs 
at all.

If someone (e.g. with identity 'bugmeister@abcd.cn') informs me (an 
upsteam maintainer) that some particular bug has been assigned a 
particular CVE then how can I know that to be a fact?

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
