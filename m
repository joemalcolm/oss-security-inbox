Received: (qmail 15931 invoked by uid 550); 19 Apr 2023 15:20:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8016 invoked from network); 19 Apr 2023 15:11:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1681917089; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2EW2z4TLb50h4gIMB7npPYwPj0PfN76MzpU/fmRRrVw=;
	b=qD7e0i4zT3i2BYFpM0h8I7a46+Iwq4mdHLllOTmdr24TedmBbD/b4OR68u73CxW24oYk8M
	DiFgDBu2CmOsjco+Xy4NuVm9NdyH1hpGRZQTXzoqOnXVKFGPPXh4ftK4uO5mBtm7VMWzVp
	tdZIVJY1RfTbU1VoRaXeO2mJi3EeW4o=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1681917089;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2EW2z4TLb50h4gIMB7npPYwPj0PfN76MzpU/fmRRrVw=;
	b=u+Id+OJJRTppeh+IYRwWqD1qFSoK6R7S/SCpJ809zd2vkN+RnVCPQ/1Eb3PelOPPad1eOG
	cgkba4BRcs/gsCDg==
Message-ID: <eff48e8f-cb22-bda0-772b-d9c9c5f16fbc@suse.de>
Date: Wed, 19 Apr 2023 17:11:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: "Jonathan Bar Or (JBO)" <jobaror@microsoft.com>
References: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
Cc: oss-security@lists.openwall.com
From: =?UTF-8?Q?Carlos_L=c3=b3pez?= <clopez@suse.de>
In-Reply-To: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] ncurses fixes upstream

Hi,

On 12/4/23 22:40, Jonathan Bar Or (JBO) wrote:
> Hello oss-security,
> 
> Our team has worked with the maintainer of the ncurses library (used by several software packages in Linux) to fix several memory corruption vulnerabilities.
> They are now fixed at commit 20230408 - see details here (https://invisible-island.net/ncurses/NEWS.html#index-t20230408)
> A CVE was assigned (CVE-2023-29491) - it's still under a "reserved" status.

Are there any plans to disclose any proofs of concept to test these
issues? From the distro side these are not only useful to check which
ncurses snapshots we need to fix, but also for our QA teams to test the
update and detect regressions.

For example, we are not sure if the build option
`--disable-root-environ` does anything to mitigate the issues.

> How can we ensure those fixes get deployed upstream, in major Linux distributions?
> We've reached out to Arch, RedHat, Canonical and other popular distros independently.
> 
> Thanks!
>                               JBO

For what is worth, we have not been contacted, as far as I can tell.

Best,
Carlos

-- 
Carlos López
Security Engineer
SUSE Software Solutions
