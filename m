X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["393" "Friday" "8" "September" "2017" "12:44:11" "+0200" "=?UTF-8?B?SmVycnkgTHVuZHN0csO2bQ==?=" "jerry@dns-oarc.net" "<f55c2071-40ca-ad1a-6c1b-33f8326325c5@dns-oarc.net>" "14" "Re: [oss-security] Tcpdump 4.9.2" "^Cc:" nil nil "9" "2017090810:44:11" "[oss-security] Tcpdump 4.9.2" (number mark "        jerry@dns-oa Sep  8   14/393   " thread-indent "\"Re: [oss-security] Tcpdump 4.9.2\"\n") "<87mv658rqa.fsf@dell.be.48ers.dk>" ("<20170907200605.GA13030@jasmine.lan>" "<CAA7hUgFVeLSChQuCvYaribpdt=9kj=o+A_LYoa1v7QgMy=RzmA@mail.gmail.com>" "<87mv658rqa.fsf@dell.be.48ers.dk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30049 invoked by uid 550); 8 Sep 2017 10:48:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26290 invoked from network); 8 Sep 2017 10:44:42 -0000
References: <20170907200605.GA13030@jasmine.lan>
 <CAA7hUgFVeLSChQuCvYaribpdt=9kj=o+A_LYoa1v7QgMy=RzmA@mail.gmail.com>
 <87mv658rqa.fsf@dell.be.48ers.dk>
Message-ID: <f55c2071-40ca-ad1a-6c1b-33f8326325c5@dns-oarc.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <87mv658rqa.fsf@dell.be.48ers.dk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dns-oarc.net; s=ix1;
	t=1504867457; bh=wG1J2B0Jq/V0IXSlk+7ryW0/iIQBN+VM2wST4TZlWeY=;
	h=Subject:To:References:Cc:From:Date:In-Reply-To;
	b=MYE7t+PBBlXmpLnCNCjF5utMRgeVe5L8xNQpCk6yPmHUeWmdrS+ynZnN/mntuwW7j
	 b8u5XUwgXJ8me6JZI7G8hV5rkgIt5h5qu8JcI2GIG0tdYVvOBrVSlkntsd+jkGvwPI
	 0EZoMob7EQ7Q5V/aCzMhSKpMvieB5nQQKrkYvJCE=
Authentication-Results: ix1.dns-oarc.net; dmarc=fail header.from=dns-oarc.net
Cc: oss-security@lists.openwall.com
Date: Fri, 8 Sep 2017 12:44:11 +0200
From: =?UTF-8?Q?Jerry_Lundstr=c3=b6m?= <jerry@dns-oarc.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Tcpdump 4.9.2
To: Peter Korsgaard <peter@korsgaard.com>

On 09/08/17 11:27, Peter Korsgaard wrote:
> Can we please have this tarball officially released on tcpdump.org /
> 4.9.2 tagged in git then?

There is a tarball, just no tag yet.

Version: 4.9.2
Release Date: September 3, 2017

- http://www.tcpdump.org/release/tcpdump-4.9.2.tar.gz
- http://www.tcpdump.org/release/tcpdump-4.9.2.tar.gz.sig
- http://www.tcpdump.org/tcpdump-changes.txt

/Jerry
