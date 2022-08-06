Received: (qmail 6127 invoked by uid 550); 6 Aug 2022 19:50:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3080 invoked from network); 6 Aug 2022 19:47:01 -0000
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vulndisco.cc; s=mail; t=1659815208;
	bh=7ZEW/30tc32PbpHBGqQ1IgFhUJCfEmS/FSq4dIpjuIA=;
	h=Subject:From:To:Date:Message-ID;
	b=aFYIYqMcrhADGltHegXnmeZO5FVHCxryZycBzLIR05fHNB5HOLcRQtpB3HHa8h72J
	 eAPcqZ9DPZ/hOsaPCOLcko3a/pES2KBcXuIvoAhUIRQqQhmfXVZ7BN/GFGGQOAwcym
	 vIoiuRG7HmFSiBh7IgVreL0wi9XRhoTuwUXeAUQM=
Authentication-Results: vla3-178a3f795968.qloud-c.yandex.net; dkim=pass header.i=@vulndisco.cc
Message-ID: <2dc37111-fd35-e10e-0162-1bdad2e80f5e@vulndisco.cc>
Date: Sat, 6 Aug 2022 22:46:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Evgeny Legerov <admin@vulndisco.cc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Exim < 4.95 heap overflow

Hi,


Here is another bug which has been silently fixed in Exim.

It has not been recognized as a security issue, many distros still don't 
have this patch.

Original report + patch  is here - 
https://github.com/Exim/exim/commit/d4bc023436e4cce7c23c5f8bb5199e178b4cc743

Analysis of the bug  - https://github.com/ivd38/exim_overflow

I don't post here because it is huge snippet of code.


regards,

-e



