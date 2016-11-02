X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1733" "Wednesday" "2" "November" "2016" "13:57:35" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611021349520.375@tvnag.unkk.fr>" "42" "Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^cc:" nil nil "11" "2016110212:57:35" "[oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        daniel@haxx. Nov  2   42/1733  " thread-indent "\"Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") "<20161102115304.GA11945@hurricane.linuxnetz.de>" ("<alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>" "<20161102115304.GA11945@hurricane.linuxnetz.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3863 invoked by uid 550); 2 Nov 2016 12:57:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3845 invoked from network); 2 Nov 2016 12:57:55 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
In-Reply-To: <20161102115304.GA11945@hurricane.linuxnetz.de>
Message-ID: <alpine.DEB.2.20.1611021349520.375@tvnag.unkk.fr>
References: <alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr> <20161102115304.GA11945@hurricane.linuxnetz.de>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="1129329158-1285204328-1478091455=:375"
cc: oss-security@lists.openwall.com
Date: Wed, 2 Nov 2016 13:57:35 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use
 wrong host
To: Robert Scheck <robert@fedoraproject.org>

--1129329158-1285204328-1478091455=:375
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT

On Wed, 2 Nov 2016, Robert Scheck wrote:

>> curl is not alone with this problem, as there's currently a big flux in the
>> world of network user-agents about which IDNA version to support and use.
>
> From my point of view, this especially affects GNU libc for example.
>
> On the other hand, I am wondering if this should be really classified as a 
> security related issue.

Can this be used to trick users or give malicious actors an advantage? I think 
yes. I think it has a security impact. To what extent can be debated, but then 
I don't grade our security vulnerabilites.

> I guess many upstreams should be explicitly made aware of that soon. Maybe 
> MITRE (or somebody else) could share their thoughts about this, too?

I would say so. Since IDNA2003 and IDNA2008 make clients end up on different 
target machines, there's no doubt in my mind that this *can* be abused. I'm 
confident that many other tools and libraries in addition to curl have the 
same problem.

> I reported the "ß" issue and the lack of IDNA 2008 support in cURL on Sun, 
> 18 May 2014 17:17:03 +0200 directly to you, but I didn't classify it as a 
> security related issue though... ;-)

Then I appologize for having dropped the ball and not having seen the problem 
correctly back then. I don't remember that occasion, but I believe you.

NOTE: the IDNA 2008 fix seems to be incomplete [1] so right now it is probably 
better to just disable IDN support in curl, at least if libidn2 powered.

[1] = https://curl.haxx.se/mail/lib-2016-11/0033.html

-- 

  / daniel.haxx.se
--1129329158-1285204328-1478091455=:375--
