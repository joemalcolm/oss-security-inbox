Received: (qmail 32473 invoked by uid 550); 24 May 2022 17:32:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9379 invoked from network); 24 May 2022 16:26:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
	s=20191114; t=1653409551;
	bh=EqFv1BXSTQEMxfWBMSKf398lpBGaf9bYF+BmuTW2+rE=;
	h=Date:To:Cc:References:From:Subject:In-Reply-To:From;
	b=d+Sdn/ny/o5vaWpv8KSfyraAHn8mJetSxqU5CkUImLNsL8U9/Odm5t7o3AbV7tHE9
	 Xp4/jdWmF1wH3dJWljOuzgnV3mOzXqqeQZ7Dc7IA4cr7Zw8Pj0wNBhIFm1c7G/29YP
	 mLRu517d3kBGvgNmc7CthFNOsxiYmB2sgwHIu5gQ=
Message-ID: <f9c51792-de81-54bc-38ce-4337e52869d5@digikod.net>
Date: Tue, 24 May 2022 18:25:50 +0200
MIME-Version: 1.0
User-Agent: 
Content-Language: en-US
To: oss-security@lists.openwall.com, Greg KH <greg@kroah.com>,
 Sam James <sam@gentoo.org>
Cc: seth.arnold@canonical.com
References: <20220515162740.GA20526@openwall.com> <YoKiGWAX4E/mbGWB@kroah.com>
 <1be21670-921c-9f0a-d99c-a9f6fd02b9b2@oracle.com>
 <20220522191951.GA21330@openwall.com>
 <1667A786-CDE3-4DB2-B6E8-5EA6B39F1AA4@gentoo.org>
 <Yosq94tksfo9y+xM@kroah.com>
From: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <Yosq94tksfo9y+xM@kroah.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] linux-distros list policy and Linux kernel


On 23/05/2022 08:34, Greg KH wrote:
> On Sun, May 22, 2022 at 08:55:50PM +0100, Sam James wrote:
>> I'd also like to ask that the final commit messages please reference any
>> relevant CVEs or at least the security impact. There've been a fair number
>> of incidents where such information is stripped and it makes tracking
>> issues *really* hard.
> 
> That is pretty much impossible and goes against the whole goal of "get
> this fixed and in a public tree and only tell the world that it was an
> issue after-the-fact" way that the kernel team works.  If we put all of
> that in the commit to start with, the whole world knows this info.  We
> can't go back in time and change git commits for obvious reasons.

It would work well if (as asked Vegard) sources/patches and binaries 
were released simultaneously by both upstream and distributions.

Regards,
  Mickaël
