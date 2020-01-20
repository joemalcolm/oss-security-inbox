X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["501" "Monday" "20" "January" "2020" "11:17:29" "+0100" "Peter =?UTF-8?B?S2plbGxzdHLDtm0=?=" "cap@nsc.liu.se" "<20200120111729.7fe9d09b@yaydoe>" "13" "Re: [oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume" "^Cc:" nil nil "1" "2020012010:17:29" "[oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume" (number mark "        cap@nsc.liu. Jan 20   13/501   " thread-indent "\"Re: [oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume\"\n") "<CAH8yC8n6X75L0dC_50wjc+Cq-Cubj568g=NXon19s_-Kxgz+2w@mail.gmail.com>" ("<CAH8yC8n6X75L0dC_50wjc+Cq-Cubj568g=NXon19s_-Kxgz+2w@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9949 invoked by uid 550); 20 Jan 2020 11:16:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19623 invoked from network); 20 Jan 2020 10:17:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nsc.liu.se;
	s=nsc-20190516; t=1579515449;
	bh=sxp6gTKzF/4Fz/MbIkNmM3hpFlfw6KtQRnc2z8LMaaM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=a9wUyK/WyCdwGEOOmH6m3puQzaQujGUhF4GcHH3HmeaDFXsN5D0OYvA27WK9+2OB1
	 G2mfqHDHYdDcrer9MTsgW0LbvXbSD+hpYW5qqevmioIbZ3esWH/dTRSunDyD0VEbMj
	 VFTip+f3GDdCwDA/mbOqta+jHOKvog/nnLzXpUTk=
Message-ID: <20200120111729.7fe9d09b@yaydoe>
In-Reply-To: <CAH8yC8n6X75L0dC_50wjc+Cq-Cubj568g=NXon19s_-Kxgz+2w@mail.gmail.com>
References: <CAH8yC8n6X75L0dC_50wjc+Cq-Cubj568g=NXon19s_-Kxgz+2w@mail.gmail.com>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Mon, 20 Jan 2020 11:17:29 +0100
From: Peter =?UTF-8?B?S2plbGxzdHLDtm0=?= <cap@nsc.liu.se>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Some AMD cpus with RDRAND fail to produce random
 numbers after suspend/resume
To: Jeffrey Walton <noloader@gmail.com>

On Thu, 16 Jan 2020 23:21:52 -0500
Jeffrey Walton <noloader@gmail.com> wrote:

> This just made my radar. It appears some AMD cpus with RDRAND fail to
> produce random numbers after a suspend/resume. It looks like it was
> first reported in 2014 or so.

Note that there are, afaict, two distict AMD RDRAND issues discussed
here. The original 2014 suspend/resume one and the more recent, "ryzen
3000 just returnx 0xffffffff". The latter is probably the reason for
the renewed focus on this...

/Peter 
