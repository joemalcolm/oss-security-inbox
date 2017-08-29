X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["945" "Tuesday" "29" "August" "2017" "11:44:53" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1708291116010.12310@scrappy.simplesystems.org>" "25" "Re: [oss-security] A bunch of duplicate CVEs requested for?? bho.." "^Date:" nil nil "8" "2017082916:44:53" "[oss-security] A bunch of duplicate CVEs requested for?? bho.." (number mark "        bfriesen@sim Aug 29   25/945   " thread-indent "\"Re: [oss-security] A bunch of duplicate CVEs requested for?? bho..\"\n") "<6609652.OIiHvm4qLd@wanheda>" ("<6609652.OIiHvm4qLd@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1954 invoked by uid 550); 29 Aug 2017 16:45:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1922 invoked from network); 29 Aug 2017 16:45:08 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <6609652.OIiHvm4qLd@wanheda>
Message-ID: <alpine.GSO.2.20.1708291116010.12310@scrappy.simplesystems.org>
References: <6609652.OIiHvm4qLd@wanheda>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 29 Aug 2017 11:44:54 -0500 (CDT)
Date: Tue, 29 Aug 2017 11:44:53 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] A bunch of duplicate CVEs requested for?? bho..
To: oss-security <oss-security@lists.openwall.com>

On Tue, 29 Aug 2017, Agostino Sarubbo wrote:

> Hi all.
>
> In the last time there are some people that run afl for fuzzing...that's just
> fine and great. Some people miss to communicate their findings to upstream and
> request a CVE from mitre.
> However I'm noticing that every day there are new duplicates, let me post some
> examples:

It is important to keep in mind that CVEs are issued against 
"products".  There might be a CVE issued against a software version 
distributed by Red Hat or Debian which is not applicable to the 
upstream version.  Since each distribution patches their version it is 
difficult to know the "product" that a particular CVE is applicable 
to.

I agree that in my personal experience upstream maintainers are rarely 
involved in the CVE process.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
