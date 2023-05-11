Received: (qmail 9471 invoked by uid 550); 11 May 2023 11:36:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9438 invoked from network); 11 May 2023 11:36:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1683805006;
	bh=xmFwMC5x/68WMvW1pOEXRiavWzoAgB8Tew2icEAlth4=;
	h=Message-ID:Date:MIME-Version:From:To:Subject:Content-Type;
	b=sKImqcGo1ufBazS0uKCzugS4VE+G4RdLzGcIjSdxamwAYUmBFM99nIMihZOZQVeoD
	 2Cu0+7RLCZfWxcDPguEzuAyc022KeIDGLWWuEHQBpZqfFUEgJUQS0fD1x+DM8Tu8N3
	 4SSDQ7V1uoAYR7IncHdqW4LMCM5cbwd6fcHRnG2kURDdJj8wUCFgH8i/n2aqY7UzaD
	 +2UCZasWtVL8HCLy9e59/UkJVhzQlQYseks3ivjcKCSl1SHbuU62yHhKXHwdD1hBWO
	 rwPdoKgXvA4+0XEHhcwNJD4TJadNDwxL0mYSZDJYykHUnCI7agepiqCeVcjx+E1BEX
	 6NA2C0AiHq9Ew==
Message-ID: <17f7ebb7-22ee-e68f-02ac-8e2740e7f015@canonical.com>
Date: Thu, 11 May 2023 07:36:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-CA
From: Marc Deslauriers <marc.deslauriers@canonical.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Clarification on embargoed testing in a partner cloud

Hi,

The Ubuntu security team shares and obtains information about embargoed issues 
from the distros and linux-distros mailing lists.

One of our large cloud partners has asked the Ubuntu security team to do 
automated testing of embargoed security updates on their public cloud before the 
CRD. While technically we would not be directly sharing details of embargoed 
issues with them as the tests will be run under accounts owned by the Ubuntu 
security team, they will be run on their infrastructure. As such, this may 
hinder our ability to conduct a comprehensive internal investigation of any leak 
that may occur.

I’m not exactly sure how this scenario fits within the policy of these lists, 
and would like to validate before we go ahead. ( Policy can be found here: 
https://oss-security.openwall.org/wiki/mailing-lists/distros )

Would testing embargoed updates obtained from the distros and linux-distros 
lists on an external cloud infrastructure violate the terms of those mailing 
lists? Would testing embargoed updates on an external cloud infrastructure be 
contrary to the expectations of the vendors posting embargoed issues to those lists?

Thanks,

Marc.

-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/

