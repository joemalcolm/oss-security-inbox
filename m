X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1759" "Tuesday" "26" "October" "2021" "10:11:12" "-0300" "Thadeu Lima de Souza Cascardo" "cascardo@canonical.com" nil "39" "Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil "10" nil nil (number mark "U       cascardo@can Oct 26   39/1759  " thread-indent "\"Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7346 invoked by uid 550); 26 Oct 2021 13:16:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4033 invoked from network); 26 Oct 2021 13:11:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1635253879;
	bh=JAuDJFjwRYRV/bC87eWI1xFqgEFTgul0WnSax1yRmgI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=Mbj30aNdpqMfDzNv903bjWJZuo7FPIIjU/hduO9/ie1j+1a2zOYhFDviQm+xkq4Ww
	 59Hq7s82iL+HF2D9mztYFoOJSzD/VxJxGXc/iwO6KFl83NZgv6Iq9glIA6pcKyfiAo
	 y0kh4++K0zu2+Cj3/rH/PoSiUQQHJLvn2iir8RzNMpSJc99vkFmDblvRkEikAO7YrM
	 sFRt26oMmktSW8Af0cU1DjQdA1quA/ecp5mfhflFKMkiRgafESEi0WYe7YDclcjEzO
	 mh01iUh+bPNP+0Iqg6m16TrIRT5XiSuZQ+2p0cYbVjZSOTySThfM42Tm51X58CxpzI
	 6GJ9dBoz3ZIQg==
Date: Tue, 26 Oct 2021 10:11:12 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Cc: Lin Horse <kylin.formalin@gmail.com>
Message-ID: <YXf+cEN0OPEtqP7K@mussarela>
References: <CAJjojJsrNyz+ML+Q81JB9iF2-DTKfAEkUP1cSTgyvCL6NebhzQ@mail.gmail.com>
 <20211026115947.GA29482@openwall.com>
 <CAJjojJu4y96+mMEWQ_Qg1Bb+z=SP0FYqMBi24dBryr=7aQ9kWg@mail.gmail.com>
 <20211026123018.GA30888@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211026123018.GA30888@openwall.com>
Subject: Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free
 vulnerability of ndev->rf_conn_info object

On Tue, Oct 26, 2021 at 02:30:18PM +0200, Solar Designer wrote:
> On Tue, Oct 26, 2021 at 08:14:20PM +0800, Lin Horse wrote:
> > The commit for the fix is 1b1499a817c90fd1ce9453a2c98d2a01cca0e775 (link:
> > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=1b1499a817c90fd1ce9453a2c98d2a01cca0e775
> > )
> 
> Thanks.  Looks like the same fix you already shared on September 1.
> 
> I also found this was (first?) made public on Linux kernel mailing lists
> (linux-nfc, netdev, linux-kernel) on October 7 by someone from Canonical
> (and Lin was CC'ed):
> 
> https://lists.openwall.net/netdev/2021/10/07/239
> 
> Canonical didn't break the embargo there because it was supposed to be
> already over by then, however I think it was their opportunity to remind
> about the need to make the oss-security posting, or to make the posting
> themselves.  Speaking of which, I think SUSE (as they first reminded) or

Krzysztof Kozlowski is the current NFC maintainer, so I asked him, and he
confirmed that he was on Cc when/after this was reported to
security@kernel.org. So, this was independent from the reports that were
gone through linux-distros.

He was not aware that this was brought to linux-distros and I am not sure
he is familiar with its policy as he is not a member.

I don't think we should expect an upstream maintainer to notify
oss-security and need to rely on the other methods you already mentioned to
make sure we notice when things have gone public.

Cascardo.

> Gentoo or Amazon (as they're tasked with this) could and should have
> brought this to oss-security shortly after Lin didn't reply to the
> September 17 reminder.  To send a reminder and forget for another month
> isn't a reliable approach.
> 
> Alexander
