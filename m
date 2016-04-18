X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1200" "Monday" "18" "April" "2016" "08:05:30" "+0000" "=?UTF-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20160418100103.581@usenet.piggo.com>" "32" "[oss-security] Re: CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling issues: Double Content Length and bad EOL" nil nil nil "4" "2016041808:05:30" "[oss-security] Re: CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling issues: Double Content Length and bad EOL" (number mark "U       seb@debian.o Apr 18   32/1200  " thread-indent "\"[oss-security] Re: CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling issues: Double Content Length and bad EOL\"\n") "<CABEc15Xut2gOVj1_Luzu-y7gwESwT5Q0n+dCtK6R+HOcR9cDDw@mail.gmail.com>" ("<CABEc15Xut2gOVj1_Luzu-y7gwESwT5Q0n+dCtK6R+HOcR9cDDw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30184 invoked by uid 550); 18 Apr 2016 08:05:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30166 invoked from network); 18 Apr 2016 08:05:54 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Date: Mon, 18 Apr 2016 08:05:30 +0000 (UTC)
Message-ID: <20160418100103.581@usenet.piggo.com>
References: <CABEc15Xut2gOVj1_Luzu-y7gwESwT5Q0n+dCtK6R+HOcR9cDDw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: static.60.129.47.78.clients.your-server.de
User-Agent: slrn/1.0.2 (Linux)
Subject: [oss-security] Re: CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP
 Smuggling issues: Double Content Length and bad EOL

On 2016-04-16, Régis Leroy wrote:
> Varnish 4.x serie is not impacted. Flaws Fixed in version 3.0.7 in march 2015.
>
> Changelog is:
>  * Requests with multiple Content-Length headers will now fail.
>  * Stop recognizing a single CR (r) as a HTTP line separator. This
> opened up a possible cache poisoning attack in stacked installations
> where sslterminator/varnish/backend had different CR handling.
>
> https://github.com/varnish/Varnish-Cache/commit/29870c8fe95e4e8a672f6f28c5fbe692bea09e9c
> https://github.com/varnish/Varnish-Cache/commit/85e8468bec9416bd7e16b0d80cb820ecd2b330c3
>
> Combinations of theses two flaws in HTTP protocol handling allows for
> "HTTP Response Splitting" attacks
> when another actor in front of Varnish3 can transmit headers in this
> form (for example):
>
>     Dummy: header\rContent-Length: 0\r\n
>
> This is a one year old issue, on the old last release of this serie.
> But we still find some installations. A CVE would maybe help removal
> of 3.x installations, or at least upgrades to 3.0.7.

Hi Mitre,

the Debian Security team considers the issue serious enough to release
a DSA, so we'd also appreciate if this could be assigned a CVE.

Cheers,

--Seb

