Received: (qmail 9638 invoked by uid 550); 18 Apr 2023 13:01:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21624 invoked from network); 18 Apr 2023 12:41:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pku.edu.cn; s=dkim; h=Received:Date:From:To:Cc:Subject:
	Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:In-Reply-To; bh=+od2/41Rmh1H715ym4FYug0wViLm
	71cNaaEJjscpCBc=; b=Usu2Jqs+4I/du/j58Y8QsW+r2Y5U8fL6kH1+fXkI8jag
	GxNRc/Z2SXRLFftEW8RKE4lMr5iXenWaD6K71DUxAFPjB4BOr6NusrdrGFRhj/Y3
	WCyrogwTwC+V6dSxi3nKr9+0ON3tvgYFwl44xa42dL05/XqvYXkpghUaf03M4R4=
Date: Tue, 18 Apr 2023 20:41:35 +0800
From: Ruihan Li <lrh2000@pku.edu.cn>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, 
	"Todd C. Miller" <Todd.Miller@sudo.ws>, Ruihan Li <lrh2000@pku.edu.cn>
Message-ID: <np5pdxoq5ymnbm53vmsjsuxkvh72buihwbqpsaruzm4mcmz3tq@zyz7o5ey2xzt>
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
 <20230416205727.0XQJ2%steffen@sdaoden.eu>
 <20230418005741.GA25557@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418005741.GA25557@openwall.com>
X-CM-TRANSID:5oFpogD3zAz_jz5kChclDw--.3470S2
X-Coremail-Antispam: 1UD129KBjvJXoW7tF1rJw4Utw1fXw47Jw4UXFb_yoW8CF1xpF
	98KwnYyrs8Jr1UuryDuwsrZay5XF1xAry3JFWUCFW09an8WF1Iqrsaq3yftasFvrs7tanF
	qrsxWa45Ga97uaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvG1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2
	z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s0DM2vYz4IE04k24V
	AvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xf
	McIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7
	v_Jr0_Gr1lF7xvr2IY64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkIecxEwVCm-wCF
	04k20xvY0x0EwIxGrwCF04k20xvE74AGY7Cv6cx26w4UJr1UMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUAVWUtwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAI
	cVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa
	73UjIFyTuYvjfUOlksUUUUU
X-CM-SenderInfo: yssqiiarrvmko6sn3hxhgxhubq/1tbiAgEEBVPy77qNLwAEsQ
Subject: Re: [oss-security] CVE-2023-2002: Linux Bluetooth: Unauthorized
 management command execution

Hi Solar Designer,

> Thank you Ruihan Li for finding and handling this vulnerability so well,
> and for the detailed write-up.
> 
> When discussing this on linux-distros a week ago, I wrote:

Also thanks to all the people at linux-distro and s@k.o who helped to
improve the final disclosure and patches.

> OTOH, not all distros are typical.  Besides Android, we got rid of all
> SUID binaries in default install of Owl over a decade ago.  While Owl is
> now effectively EOL'ed, some of its legacy lives on in ALT Linux
> distros, which are maintained, and other distros can do similar - it's
> primarily a matter of caring to do it or not.  We did not package sudo
> in Owl, but if someone were to install it then it'd be the only program
> exposing this kernel vulnerability.  So in that case, hardening sudo
> would have helped.

That's good to know. I was wondering if there were distros that did not
have setuid binaries, which was why I said only ``a number of distros''
were vulnerable.

For Steffen Nurpmeso wrote earlier:
> I wonder -- have you verified that they do not use isatty(3) aka
> some tc*() series *first*?  The above with sudo does for example
> not reveal anything as shown, roght?  FD 2 seems to be a terminal,
> .. and whereas i do not have sudo src here, i am sure it uses
> isatty(3) and tcgetattr(3).

I just noticed that sudo added the isatty check a day ago (April 17th)
[1]. I think this change was inspired by this vulnerability, wasn't it?
However, as Jakub Wilk pointed out, isatty is still implemented by an
ioctl call, so the addition of this check has nothing to do with this
vulnerability. Nevertheless, it is still a good idea to make sure isatty
succeeds before using ioctl calls with other (perhaps more complex and
arbitrary) tty commands.

[1]: https://github.com/sudo-project/sudo/commit/5650b436e6ba20807758a4154e709c10c1c87be8 

Thanks,
Ruihan Li

