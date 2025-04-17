Received: (qmail 11304 invoked by uid 550); 17 Apr 2025 15:41:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10137 invoked from network); 17 Apr 2025 07:27:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=innerheight.com;
	s=2024; t=1744874814;
	bh=vFjnd/dW/yC4L0dSaJWNjl0oTM0MJLJChbvrSJqOcQc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=Rmql2B/Z+H/tznoJoFCDBLFQYXbnld/GTGnKIB0WEHyiu8Zr3GbtbXTPrTfTEWH6/
	 Pk4AsFkN4zC6S4AxROmi60Z50YXZtcQhqCWEhrlyvdtlimW/ebFu4cxxjpDeWPZYes
	 G7u+uWQQF51pYDw6kl44Kmdv6b3j4H3IYGajFd7U=
Content-Type: multipart/alternative;
 boundary="------------ZsoPK0yLubHweOSCFVVC5WUb"
Message-ID: <0861ac60-20f3-4fb6-ba6d-28f9506823b8@innerheight.com>
Date: Thu, 17 Apr 2025 09:26:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <ebb379a4-03d6-491f-9e93-fc724f597a81@web.de>
 <20250416210535.5173a7ef@ryz.dorfdsl.de>
Content-Language: en-US
From: Jan Klopper <janklopper@innerheight.com>
In-Reply-To: <20250416210535.5173a7ef@ryz.dorfdsl.de>
Subject: Re: [oss-security] CVE program averts swift end

--------------ZsoPK0yLubHweOSCFVVC5WUb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

That is a bit of a short-sighted response.

We cannot query your brain for information, and thinking that you can 
actively avoid any issues by updating to the newest version is not only 
a fantastic dream, its also a potential route to getting compromised, as 
not every new version of every bit of software is safe, or solves all 
known problems.

Having a query-able and well maintained list of known issues helps in 
cases where you know what software you are using, and what risks you are 
running by using them, regardless of the possibility of updates, 
mitigations or your ability to keep track of mailing lists for every 
software you use.

Yes, money is spend, and a bit much at that, but when you start 
factoring in the people running the thing, and the maintenance the 
lists, hardware, surrounding communication and everything else costs I'm 
not sure there's a cheaper option available. Besides, its a public 
service, moving this to volunteer driven solutions isn't going to 
provide the time critical responses this needs, and moving it to a 
company means there will be profit to be made, or competing lists that 
need to be bought because of balkanization.

On 4/16/25 21:05, Marco Moock wrote:
> Am 16.04.2025 um 16:57:20 Uhr schrieb Rolf Reintjes:
>
>> any comments on this?:
>>
>> https://www.csoonline.com/article/3963190/cve-program-faces-swift-end-after-dhs-fails-to-renew-contract-leaving-security-flaw-tracking-in-limbo.html
> I don't see a real use-case for such databases - especially if they
> consume that much money. I subscribe to the security mailing lists or
> newsgroups for the operating systems and software I use and install new
> versions immediately - if possible automated.
>
>
--------------ZsoPK0yLubHweOSCFVVC5WUb--
