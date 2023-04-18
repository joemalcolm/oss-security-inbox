Received: (qmail 1694 invoked by uid 550); 18 Apr 2023 19:07:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21648 invoked from network); 18 Apr 2023 18:37:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pku.edu.cn; s=dkim; h=Received:Date:From:To:Cc:Subject:
	Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:In-Reply-To; bh=zKwlY5cu7JSKF0HLctFcJoXNEeEa
	Tw37jdze6yxS9lY=; b=KcKsxnbPL2w/dwx2x3GQ3tUxapzhFYoH81ANkJqUgsA4
	NK+XwApG6msuparHOk1uB7dPWRm+GiRRXOnuLRkdF24KlL94pAM2aOS1zRJTnb/X
	O9Dcw0LHXaHWjWzGjJDLD9iDAgTTY+9zyynOqRxXv92ewe2jDrCPYFpNyzgWBJ0=
Date: Wed, 19 Apr 2023 02:37:35 +0800
From: Ruihan Li <lrh2000@pku.edu.cn>
To: 0xef967c36@gmail.com
Cc: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>, 
	Ruihan Li <lrh2000@pku.edu.cn>
Message-ID: <e6gh3axpoalp7kw7j3v47f6jk7wnz5kcyitltpfijvgs2g6djv@ed3e7aarvaak>
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
 <20230418154016.GA959@openwall.com>
 <a88cee5ff23401457a8b156ceb5a5553.854673b9@michele.blotching>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a88cee5ff23401457a8b156ceb5a5553.854673b9@michele.blotching>
X-CM-TRANSID:54FpogDn7Exv4z5ksXXLDw--.20812S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Zr1UWFW3KrWDtFWxKrW5GFg_yoW8CFWkpF
	W7KF1DGr45WF4Ikrn3Xr10gFyFqr95tFWayF1Ygr98A34YqF9aq3Z2kFs0v3yUXFykZFyS
	qFWY9r17Gan8Z3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvG1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVW8JVW5JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2
	jsIE14v26F4UJVW0owA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Cr1j6rxdM2vYz4IE04k24V
	AvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xf
	McIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7
	v_Jr0_Gr1lF7xvr2IY64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkIecxEwVCm-wCF
	04k20xvY0x0EwIxGrwCF04k20xvE74AGY7Cv6cx26w4UJr1UMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUAVWUtwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAI
	cVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa
	73UjIFyTuYvjfUOlksUUUUU
X-CM-SenderInfo: yssqiiarrvmko6sn3hxhgxhubq/1tbiAgEEBVPy77qNLwAJsd
Subject: Re: [oss-security] CVE-2023-2002: Linux Bluetooth: Unauthorized
 management command execution

Hi,

On Tue, Apr 18, 2023 at 08:13:24PM +0300, 0xef967c36@gmail.com wrote:
> No, there's no clash. That was a bug in strace (fortunately fixed in
> newer versions).
> 
> Those values macros are different; and they were ALWAYS different.

A quick search shows that it is fixed in df7aa2 ("ioctl: take all 32 bits of
ioctl commands into account") [1]. The commit message says
> Historically, only 16 bits (8-bit number and 8-bit type) of 32-bit ioctl
> commands were used for decoding, which was the source for numerous
> annoying collisions like this:
>
>	ioctl(0, SNDCTL_TMR_TIMEBASE or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS, {B38400 opost isig icanon echo ...}) = 0
>	ioctl(0, MGSL_IOCGPARAMS or MMTIMER_GETRES or MTIOCTOP or SNDCTL_MIDI_MPUMODE, 0x7fffd47f7338) = -1 ENOTTY (Inappropriate ioctl for device)
Here the first example is exactly the case we are discussing.

[1]: https://github.com/strace/strace/commit/df7aa2b19e6f69c19fbe09180bf1ec4fb52e2615

It appears that SNDCTL_TMR_TIMEBASE and TCGETS do have the same command code,
which sits in the lower 16 bits. But SNDCTL_TMR_TIMEBASE uses a newer command
encoding scheme [2] that includes the direction and argument size in the
higher 16 bits. TCGETS, on the other hand, contains only the command code, so
its higher bits are set to zero (TCGETS should have a really long history,
just longer than that of the new ioctl command encoding scheme).

[2]: https://elixir.bootlin.com/linux/v6.3-rc7/source/include/uapi/asm-generic/ioctl.h#L5 

This means we haven't had any collisions yet. Also, since new ioctl commands
will certainly be encoded using the new encoding scheme, which TCGETS does not
use, it is very unlikely that new collisions will occur in the future, unless
the command code is exactly the same and the higher bits under the new
encoding scheme are also occasionally zeros.

Thanks,
Ruihan Li

