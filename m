Received: (qmail 7447 invoked by uid 550); 16 Apr 2025 18:55:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5575 invoked from network); 16 Apr 2025 14:57:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1744815442; x=1745420242; i=rolf.reintjes@web.de;
	bh=nmFvaAXT/E8DUIcVt5eNvbG6p1XHCxpk6DhuaWmVdE8=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:From:Subject:
	 Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=JeOF078Sq6Ffl6+bJi9+3fNeefKad6p3xi2qevsSCrTVy7Bc3bwfTgRwrRkoF+Mn
	 ZkHYa8hAe6W/WlRbrR7C9SelshOgTs12ED0k6tgEgPptd5xxQOoZnL8Kn/usyQUDc
	 IxQbKQ+qjOhuXaiTStLnHJbVx/aDj/W2vg4K1Z4vFAKnUWkWa9l4HiL/h+cJvAqfz
	 wVGh9Jm+QmBCbzoANTs45KkohiwRx7ZvxIsiJovouWjA6Jo3VuMHmzJvAEKkNET+d
	 xqwjtc7cRphsYp+tqrVBztOGpo7eoyyoa9vy9wVsNB6XgSiL+UpyOy/inG6bGHXAR
	 hG5Ul4RTMjMxKdUy/Q==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Message-ID: <ebb379a4-03d6-491f-9e93-fc724f597a81@web.de>
Date: Wed, 16 Apr 2025 16:57:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Rolf Reintjes <rolf.reintjes@web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:YStarg2piOuQZ1zb+qOuMX+9pYvBGcl/1hlStYCdFtXtyfzv2Pa
 HBZCg3z/RAro7g2PBjiyghdB7HmDL1bo4ZG2YNIrRRnGnmeVz5KtifGwKo6ya2/u1ApyxJ6
 MO3BkdUz99ZsiH97DFHXxNH1KLszBYQ9y/ikjI83Ykuy/4H2oG9WDtoSTCpTrWZGackZa6k
 Fr+y8dpXQEc5TpaSLGXCw==
UI-OutboundReport: notjunk:1;M01:P0:9vEK0UV52QI=;dR9cMvr6bPmyeW7YLJE6h0wzhcb
 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
Subject: [oss-security] CVE program averts swift end

Hello,

any comments on this?:

https://www.csoonline.com/article/3963190/cve-program-faces-swift-end-after-dhs-fails-to-renew-contract-leaving-security-flaw-tracking-in-limbo.html

Best regards

Rolf

