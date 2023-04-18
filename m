Received: (qmail 15890 invoked by uid 550); 18 Apr 2023 15:18:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24056 invoked from network); 18 Apr 2023 14:27:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sudo.ws; s=selector2;
	t=1681828036; h=from:from:reply-to:subject:subject:date:date:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=it077tnDf1bJ3LAyuHVsBbzdau5eWag02Ge4Mcv9DDU=;
	b=arJqoCt2uGhfDZPEXj1szyVCDljo3u5HJNlhx7m+MGDZJRHscH1xtaA7kwhpOqn8LC2NCG
	LBGcmZPoHBuTH/YU9zahoD+AW56LL6ZF0SGum/w5rmTd89De2V/IiCn39iGVQ4ljz32QnK
	LJKV/asA6fzI50NaoUiCCkIqECLwWaxdsB3vFNEvyfGQJ8XaS76FA39Ms9TeFErZj4nL6e
	6ISftLjvqKiV/ZHkXGCF85w/YqkfRvrliTmQANVVX7y4LvlLWIMTalRyDLBTb2nx5B596s
	qirem7rGh4CvyJfJiHv+3xmCdGtY0DWXr2o2LLxYa3L1TJR/xvdrVlrHNHaIWQ==
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
To: Ruihan Li <lrh2000@pku.edu.cn>
cc: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
In-reply-to: Your message of "Tue, 18 Apr 2023 20:41:35 +0800."
             <np5pdxoq5ymnbm53vmsjsuxkvh72buihwbqpsaruzm4mcmz3tq@zyz7o5ey2xzt>
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv> <20230416205727.0XQJ2%steffen@sdaoden.eu> <20230418005741.GA25557@openwall.com> <np5pdxoq5ymnbm53vmsjsuxkvh72buihwbqpsaruzm4mcmz3tq@zyz7o5ey2xzt>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <73049.1681828036.1@xerxes.sudo.ws>
Date: Tue, 18 Apr 2023 08:27:16 -0600
Message-ID: <043b82cc304acacf@millert.dev>
Subject: Re: [oss-security] CVE-2023-2002: Linux Bluetooth: Unauthorized management command execution

On Tue, 18 Apr 2023 20:41:35 +0800, Ruihan Li wrote:

> I just noticed that sudo added the isatty check a day ago (April 17th)
> [1]. I think this change was inspired by this vulnerability, wasn't it?
> However, as Jakub Wilk pointed out, isatty is still implemented by an
> ioctl call, so the addition of this check has nothing to do with this
> vulnerability. Nevertheless, it is still a good idea to make sure isatty
> succeeds before using ioctl calls with other (perhaps more complex and
> arbitrary) tty commands.
>
> [1]: https://github.com/sudo-project/sudo/commit/5650b436e6ba20807758a4154e70
> 9c10c1c87be8 

That is correct.  There are further changes to use TIOCGWINSZ on
/dev/tty instead of stderr.  Using an open fd of /dev/tty makes the
isatty() call superfluous but it doesn't hurt to have it.

 - todd
