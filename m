Received: (qmail 1998 invoked by uid 550); 18 Apr 2023 19:07:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31802 invoked from network); 18 Apr 2023 18:59:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pku.edu.cn; s=dkim; h=Received:Date:From:To:Cc:Subject:
	Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:In-Reply-To; bh=Vl3wHR89hSnf5lIAyHMkZULaUhJC
	LiN80+sRKgiQrGQ=; b=AC3PNaWI+lGyhBilc9aJYd9zIL50zKUjdFXjQJCY5h3/
	KpTAyWVjIR5zukIfgKmQ5uFqjvUmQp3pWIh+f8HS/1QFJXan667uRtME0bR3Aml2
	XWSUrIcA2ROKdCf7CKCj39cyiZA22n185Cjdoe/aZI5EVjlpuax9XH9kQlB2+OM=
Date: Wed, 19 Apr 2023 02:59:26 +0800
From: Ruihan Li <lrh2000@pku.edu.cn>
To: "Todd C. Miller" <Todd.Miller@sudo.ws>
Cc: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com, 
	Ruihan Li <lrh2000@pku.edu.cn>
Message-ID: <wbhfpn7kbwg64jordjxtpqfmmowes5rncupgzfbnqdz3uljioq@hgz2w4thzmya>
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
 <20230416205727.0XQJ2%steffen@sdaoden.eu>
 <20230418005741.GA25557@openwall.com>
 <np5pdxoq5ymnbm53vmsjsuxkvh72buihwbqpsaruzm4mcmz3tq@zyz7o5ey2xzt>
 <043b82cc304acacf@millert.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <043b82cc304acacf@millert.dev>
X-CM-TRANSID:5oFpogA3P4+O6D5kYkU1Dw--.16957S2
X-Coremail-Antispam: 1UD129KBjvdXoW7XrW7Zw4ruFy3JF1ktF4rAFb_yoW3ArX_ur
	y5tw4kGw42yFs5XF13KF4rCrWIkas3WryDZrZ8XF47Xas7ZFW8CFZ7tryIvwnxCFW2krsx
	W34rZ3yYkF1S9jkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbV8Fc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AK
	wVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20x
	vE14v26r1I6r4UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j6F4UM28EF7xvwVC2z280
	aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280aVCY1x0267AKxVWxJr0_GcWlnxkEFVAIw20F6c
	xK64vIFxWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2Wl
	Yx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbV
	WUJVW8JwACjcxG0xvEwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc2xSY4AK6svPMxAI
	w28IcxkI7VAKI48JMxAIw28IcVCjz48v1sIEY20_Kr1UJr1l4I8I3I0E4IkC6x0Yz7v_Jr
	0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY
	17CE14v26r126r1DMIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcV
	C0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY
	6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBIdaVFxhVjvj
	DU0xZFpf9x0JUQZ23UUUUU=
X-CM-SenderInfo: yssqiiarrvmko6sn3hxhgxhubq/1tbiAgEEBVPy77qNLwALsf
Subject: Re: [oss-security] CVE-2023-2002: Linux Bluetooth: Unauthorized
 management command execution

Hi Todd,

On Tue, Apr 18, 2023 at 08:27:16AM -0600, Todd C. Miller wrote:
> That is correct.  There are further changes to use TIOCGWINSZ on
> /dev/tty instead of stderr.  Using an open fd of /dev/tty makes the
> isatty() call superfluous but it doesn't hurt to have it.

Yeah, I see that you are removing ioctl calls on standard file descriptors. So
actually, just to confirm, it is feasible to avoid all ioctl calls to standard
file descriptors with root privileges (under all command line arguments), by
using /dev/tty, assuming something like the window size... Right?

If this is the case, I think it should not be difficult for other setuid
programs to do similar things. I am just thinking for a while, and cannot find
a case where ioctl calls are unavoidable.

Thanks,
Ruihan Li

