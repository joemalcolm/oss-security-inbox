Received: (qmail 3684 invoked by uid 550); 18 Jun 2025 06:05:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3651 invoked from network); 18 Jun 2025 06:05:05 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-111S005ac4bc31d-682b-4c6a-98f3-3f752c706a26,
                    0CBCACDE4713320A3BC0CBDB0BACBD8537E35163) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:37.248.225.205
Date: Wed, 18 Jun 2025 08:04:46 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20250618060446.vn3lxwzqx5og35wa@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20250617195937.GA14637@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20250617195937.GA14637@localhost.localdomain>
X-Ovh-Tracer-Id: 6270699534180822225
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgddvtdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgeegvdekjefgffdtiedutdeuveffleffvdeliefggfdtgeffudfffefhtdeuleejnecuffhomhgrihhnpeguvggsihgrnhdrohhrghenucfkphepuddvjedrtddrtddruddpfeejrddvgeekrddvvdehrddvtdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheeffegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=iFW0HAuZQ5si8hRx+AbOZTZVqoZrGaf3nTF5JEPsg9k=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1750226694; v=1;
 b=kUIECxc5JECwdhfUU9tmmlabey97011mGI+4UVqLw2ArglXrzTLObwBk1MJcQVHnQOTrtOBZ
 iywqCI8sFuttj2Meg5ZQLsdskrDqElKiZkp+HcuJc/FcQWhJVDVMghX3/Vv8oRH5aRq19Q9RFJY
 3yh9XE+Pyu5vKbNYj99aGxASgweNhU2dgfe1ibxOLPBY6NvzgtqFy/AVCpTogm/r+wit3xkql40
 ZcxI6tY6NE3SK3k+H7yTCDvdZo9Ecsrp0WtUoKD3I1MlyKAJ+3FK9F7dyX4/7cCQDyuLFmD2AvV
 SqdxJTqIMqG5588QJae0gw6ixqdBK/CWiYNANUDwHDu+A==
Subject: Re: [oss-security] CVE-2025-6019: LPE from allow_active to root in
 libblockdev via udisks

* Qualys Security Advisory <qsa@qualys.com>, 2025-06-17 20:00:
>On Debian 12 and Ubuntu 24.04, when an unprivileged user logs in via 
>sshd, PAM's pam_env module (from Linux-PAM 1.5.x) also reads this 
>user's ~/.pam_environment file, because pam_env's "user_readenv" is 
>explicitly set to 1 in /etc/pam.d/sshd (it is 0 by default, since 
>Linux-PAM 1.4.0).

I reported this back in 2014:
https://bugs.debian.org/761600

-- 
Jakub Wilk
