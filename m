X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2089" "Saturday" "7" "August" "2021" "15:26:09" "-0500" "Ariadne Conill" "ariadne@dereferenced.org" nil "62" "Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       ariadne@dere Aug  7   62/2089  " thread-indent "\"Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15689 invoked by uid 550); 7 Aug 2021 20:29:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13596 invoked from network); 7 Aug 2021 20:26:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dereferenced.org;
	s=mailbun; t=1628367971;
	bh=ubErt+ILzkvD/QEghFE1pjx4bPAPY3OeDJsifhKcl0M=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=DbNy6Uu98wx8z9OFNd9vSrH7id8vmOUhQg2KKYgfZWzJrRFU3ko3WdFkfGRdK5otj
	 ED7kgzgnU39Z/6w8/RL/g3n5C0KPbDwkx1B9hqQpnhn8IfFrWWPRCqhzzzwSkPTCVv
	 7WXjwzJLrnu8o/3YnLpM1U+O+R9F0KLREV6YT4ugrpfT4gRbzUIKl+e3VAfgmlu74G
	 2gBtpYG40bndu7d4GiOReARnULrqskX+hayMyo8PcnqLkM14ZwJ1TUwGTlKtgBRks9
	 j29rj3xWQE92uLXStYgNJFQzHjPaN+pha73DBJbdUCFdJBV1HeY2llhKDe1y7kKI/o
	 vo1sjUt8GgKLA==
Date: Sat, 7 Aug 2021 15:26:09 -0500 (CDT)
From: Ariadne Conill <ariadne@dereferenced.org>
To: Axel Beckert <abe@debian.org>
cc: Salvatore Bonaccorso <carnil@debian.org>, oss-security@lists.openwall.com, 
    Ariadne Conill <ariadne@dereferenced.org>, 991971@bugs.debian.org, 
    lynx-dev@nongnu.org, security@debian.org
In-Reply-To: <20210807201317.ow27rxtpcdkgsxuj@sym.noone.org>
Message-ID: <bd75b23c-3e7d-a52d-7df8-501d5e30a7f3@dereferenced.org>
References: <20210807201317.ow27rxtpcdkgsxuj@sym.noone.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0-973822402-1628367971=:44151"
Subject: Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL
 certificate validation -> leaks password in clear text via SNI (under some
 circumstances)

--0-973822402-1628367971=:44151
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hi,

On Sat, 7 Aug 2021, Axel Beckert wrote:

> Hi Salvatore, Dear Ariadne,
>
> Salvatore Bonaccorso wrote:
>>> This is more severe than it initially looked like: Due to TLS Server
>>> Name Indication (SNI) the hostname as parsed by Lynx (i.e with
>>> "user:pass@" included) is sent in _clear_ text over the wire even
>>> _before_ I can even said "n" for "no, don't continue to talk with this
>>> server" in Lynx's prompt as shown above.
> […]
>>> IMHO this nevertheless needs a CVE-ID.
>>
>> MITRE did assign CVE-2021-38165.
>
> Thanks Salvatore. I updated the debian/changelog entry for the next
> upload as well as the title of the Debian bug report.

+1, thanks for getting a CVE for this.

>> MITRE raised the question: Does 2.9.0dev.9 (mentioned on the
>> https://lynx.invisible-island.net/current/CHANGES.html page) fix the
>> entire problem?
>
> At this point a huge thanks to Thomas Dickey (Lynx upstream) for
> providing a fixed version so quickly!

I think 2.9.0dev.9 fixes the problem, even if the fix is, well, not the 
way I would do it.

>
>> https://www.openwall.com/lists/oss-security/2021/08/07/7 claims that
>> credentials appear in the HTTP Host header to an http:// (i.e.,
>> non-SSL) website.
>
> Indeed and a good point.
>
> Citing from Ariadne's mail:
>> The issue itself is far more severe: HTParse() does not understand
>> the authn part of the URI at all.
> […]
>> But it will also leak in the Host: header on unencrypted
>> connections, and also probably SSL ones too.
>
> But that looks to me as if Ariadne just refers to the code and hasn't
> actually checked it by trying it. Nevertheless thanks to Ariadne for
> having had a look and proposing a patch!

Yes, this was my guess since HTParse() doesn't understand the authn part. 
But this seems like a rather unfortunate design: parse the URI wrong, and 
then "fix" it later?  Why not just parse the URI right, to begin with?

So strange...

Ariadne
--0-973822402-1628367971=:44151--
