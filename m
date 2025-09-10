Received: (qmail 32755 invoked by uid 550); 10 Sep 2025 12:23:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32728 invoked from network); 10 Sep 2025 12:23:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1757506971; bh=jvVIS+6ZHtKxNb+N5uuBZJ/8vfS11/Q7/6D9qEP2zsg=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=scePVt08RZC1Wn5qAa6AfdSw4w4U6k+K2VrjDZvF8XHSnzItWOBc8PzpudQ5N8wgc
	 YO9RL7GR9FHNB8CIK/iRFKfSOeoB/6OFMPUNBwDwQSnAozNKWQPpYzBH3HifOKTeic
	 TaYz3cbioERHNPeNjd6ChG/ausSB+LTkVYxVc63ia/EvyGnsS/yRXXRYcL63ldf51n
	 hM1ythrzcji+mmz1dar+7/GoqxduElhdNLN5ddaJ2l0Ek2YHh9JYTfXT4ZkCmJcE0a
	 yMcg4IsSc6hFvsrPxdOjS+3Yk4omenkqaO4gQigGYaZVZ2zKWdGJiXGS1qgA2O9N9+
	 V9NqrquQjk1CQ==
Date: Wed, 10 Sep 2025 14:22:51 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: Emilio Pozuelo Monfort <pochu27@gmail.com>
cc: oss-security@lists.openwall.com, 
    curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    libcurl hacking <curl-library@lists.haxx.se>
In-Reply-To: <38ed516a-ffb7-4944-aca5-b0a68f44d79c@gmail.com>
Message-ID: <10n6r798-on4q-0439-9832-np61291n9os9@unkk.fr>
References: <27oo7n57-95s9-nn64-qqo8-95n4n23901so@unkk.fr> <38ed516a-ffb7-4944-aca5-b0a68f44d79c@gmail.com>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] [SECURITY ADVISORY] curl: CVE-2025-10148:
 predictable WebSocket mask

On Wed, 10 Sep 2025, Emilio Pozuelo Monfort wrote:

> From what I can see, websocket support was introduced in 7.86 in [1], and 
> later marked as supported/not-experimental in 8.11 [2]. If so, I think the 
> above note (also in [3]) should say that it was experimental before 8.11.

Thank you. I don't know how I could get that wrong (as the introduced-in 
commit is the right one), but you are entirely correct. Thank you.

I will update the CVE.

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
