Received: (qmail 18160 invoked by uid 550); 12 Apr 2023 12:25:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1791 invoked from network); 12 Apr 2023 11:07:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Reply-To
	:Cc:Content-ID:Content-Description;
	bh=xcOkrXBYyPRHjd7kOoJet+EgDysMZsn+QGaim+lfd5k=; b=YU1jaHXRyb1rZARa5by/Ojg8Yu
	8J4Kk0yVMqZswm8KxSvu2ieDWkfUpcKEuymqyE91JuQdXbQeA13ibdh4E4D7Xtl5GAXN/FoI4jQjG
	dVK5+Po4M8ZAw43XFzSZxHI3Zep/uOdfF0fQQvTMLMqQzyHijBqYqgfjaow9dbpwvUIdI8KHt2HLn
	APuKAKeksYcEkMxo/9dVG1Cx7gMPks0gw6T9HXAaqRxcSkxqviQwlTsDutSaffZjxjIFIe2tv7S05
	lP+WckvoMhkCrCZ++LShjzPG/Ts2sro+GN/WrqZgW8Yh+uWDUw6rMzzio2D4+IlhoRcehW8+o6uXb
	4wMEb4FQ==;
Message-ID: <71ec9890-2982-8113-4d13-f7907b3180f8@debian.org>
Date: Wed, 12 Apr 2023 12:07:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <ec07456b-6a04-60a3-35e5-c266b6348530@geeklan.co.uk>
From: Matthew Vernon <matthew@debian.org>
In-Reply-To: <ec07456b-6a04-60a3-35e5-c266b6348530@geeklan.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Debian-User: matthew
Subject: Re: [oss-security] CVE-2017-11164 - stack exhaustion in PCRE

On 11/04/2023 12:22, Sevan Janiyan wrote:

> "PCRE1 has become totally obsolete and is no longer maintained. The
> final release was 8.45 (June 2021)"
> 
> So just a heads up if you're still linking against PCRE 8.x but software
> in question supports PCRE2, perhaps it's time to switch and default to
> PCRE2.

I've been trying to push towards getting old-PCRE out of Debian; you can 
track the outstanding bugs online[0], and there's similar for Ubuntu[1].

Once the next Debian release "bookworm" is out, I'm hoping to be able to 
make the outstanding bugs release critical, moving towards not shipping 
the older pcre (called pcre3 in Debian for Historical Reasons) in the 
next release...

Regards,

Matthew
[PCRE maintainer for Debian]

[0] 
https://udd.debian.org/bugs/?release=any&merged=ign&fnewerval=7&flastmodval=7&fusertag=only&fusertagtag=obsolete-pcre3&fusertaguser=matthew-pcredep%40debian.org&allbugs=1&sortby=id&sorto=asc&format=html#results
[1] https://bugs.launchpad.net/ubuntu/+source/pcre3/+bug/1792544
