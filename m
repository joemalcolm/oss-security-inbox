X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1446" "Sunday" "10" "September" "2017" "21:54:31" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170910195431.fvcvbo24su3zkl3n@eldamar.local>" "43" "Re: [oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure during during display update" nil nil nil "9" "2017091019:54:31" "[oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure during during display update" (number mark "U       carnil@debia Sep 10   43/1446  " thread-indent "\"Re: [oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure during during display update\"\n") "<nycvar.YSQ.7.76.1708301533140.5404@wniryva>" ("<nycvar.YSQ.7.76.1708301533140.5404@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22211 invoked by uid 550); 10 Sep 2017 19:54:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22190 invoked from network); 10 Sep 2017 19:54:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iFgXDuorwUXyeLe0BKyLhBJdkRxKViQo3hwglnWPHxs=;
        b=k9nZdu3xzhbFjXrNMkJ9WlcoJ48a0x9nG1AfXd3YjmrZO7An8nPTJWBXp/d3LMVyFd
         GFDsM+t0JAQDKtMnLPaVff6bCtU5Z4zeXWd3N66x4Mwp4y1t8426VSBDt5LfgeISs6DR
         5XGx2DMLnqfEgnJ+qeeUEudrviIxg/s9mE7uBkciF07s/N/xhMcK6nxZlzj97I2amj74
         HCqvsf8YV3tmOVEhtfFdtqjZvrpemF5XjWlQVZzriB2XwQ177y/bbsTpL+jnwpUmqaqB
         8wkP10MGR81wXqQ37jZXBnsUo7FXDYKpFX2Q8Vr7am2YbocAtInf8IH1E6UzQQe/Ln44
         uHSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=iFgXDuorwUXyeLe0BKyLhBJdkRxKViQo3hwglnWPHxs=;
        b=G9ant7BP1WEcj0fsstKytnghEDEln4x5CNntMgBXtxv3NGwW8VliC0RncpPNDWEB9Q
         GqQwnYKnw8QzTdH3uFKoN7317g0RxZJW9meSaZM1+AVpMkL/aV3Fv07UwNzxf+Kkbw7l
         upv32Om5TYHBxGf6zC2m3IZMaio9IkqaXgZRuQu0helgiVHIzJk7n+R6OAhn6mGAvcDc
         ey95xOmzOz4HBjy9pR6h1NvlFaCkJBkj9Fg3TjREPjqD1AjhEfxDuxXktZYsAAVTZ/MA
         714o7zKTbD2SQhezvNUFTr2ch4bYH6pRnDkg9fRGUs8zuYwmqP6xyXmRHVnYL1kI32Np
         g9hg==
X-Gm-Message-State: AHPjjUiXWnrsUOo8xn7si2qMJrEYdXyj1nQokmYF1M8L7xu7Qk00hgRb
	YrCpqIV7uKQxhw==
X-Google-Smtp-Source: AOwi7QB4Aj1p7kidcBkQG+biy0WsySEtDmSgBwhnN9KD+oS+sXCP8firV0Jbm33JBZTiprGS6xkHzg==
X-Received: by 10.28.45.14 with SMTP id t14mr6282081wmt.113.1505073273932;
        Sun, 10 Sep 2017 12:54:33 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 10 Sep 2017 21:54:31 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: David Buchanan <d@vidbuchanan.co.uk>, Michael Tokarev <mjt@tls.msk.ru>
Message-ID: <20170910195431.fvcvbo24su3zkl3n@eldamar.local>
References: <nycvar.YSQ.7.76.1708301533140.5404@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YSQ.7.76.1708301533140.5404@wniryva>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] CVE-2017-13673 Qemu: vga: reachable assert
 failure during during display update

Hi!

On Wed, Aug 30, 2017 at 03:34:51PM +0530, P J P wrote:
>   Hello,
> 
> Quick emulator(Qemu) built with the VGA display emulator support is
> vulnerable to an assert failure issue. It could occur while updating
> graphics display, due to miscalculating region for dirty bitmap snapshot in
> split screen mode.
> 
> A privileged user/process inside guest could use this flaw to crash the Qemu
> process on the host resulting in DoS.
> 
> Upstream patch:
> ---------------
>   -> https://lists.gnu.org/archive/html/qemu-devel/2017-08/msg04685.html
> 
> Reference:
> ----------
>   -> https://bugzilla.redhat.com/show_bug.cgi?id=1486588
> 
> This issue was reported by David Buchanan.

Can you clarify the affected versions? I noticed while looking at the
above, that MITRE description mentions "Qemu 2.8.0 through 2.9.0". I
perfectly realize those does not come from the above.  As far as I can
see, e.g. cpu_physical_memory_snapshot_get_dirty was only introduced
in v2.10.0-rc0. The upstream commit associated with the above issue
is:

 https://git.qemu.org/gitweb.cgi?p=qemu.git;a=commit;h=bfc56535f793c557aa754c50213fc5f882e6482d

which fixes

 https://git.qemu.org/gitweb.cgi?p=qemu.git;a=commit;h=fec5e8c92becad223df9d972770522f64aafdb72

introducing the use of dirty bitmap snapshots in vga_draw_graphic().

Do I miss something makeing it affecting as well earlier versions than
2.10?

Regards and thanks already for your help,
Salvatore
