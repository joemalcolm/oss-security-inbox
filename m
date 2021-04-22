X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["703" "Thursday" "22" "April" "2021" "14:18:39" "-0400" "Michael Orlitzky" "michael@orlitzky.com" nil "21" "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       michael@orli Apr 22   21/703   " thread-indent "\"Re: [oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19578 invoked by uid 550); 22 Apr 2021 18:18:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19557 invoked from network); 22 Apr 2021 18:18:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1619115520; bh=BEEgixfWEpMeW38rDzbNoIIWOc+exi04eLwwbcX0eR4=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=QxP0YFYra7Xx9Hl/lxHCR0fqla1QHdypjv7DKzpXMlvIY5wtRj1Rs/VaOOS/tGqar
	 jZ2o7IqtJzrZ/SLjVai7ocI/5cJ/eDvoMOJqtIeFRRFm06IQLe4a51gJQDCIN17lNN
	 5ys0phf7QmE0HM8pZ2az7oxwJDf4aHkgELdFyGgg=
Message-ID: <dccb1d817eee4171cb99263fc059fac660cdb223.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Thu, 22 Apr 2021 14:18:39 -0400
In-Reply-To: <CAPyX2neD99tn_FY3FZ9WO5HaB2WXSgvSOejOiOE_9QHxqRjpdA@mail.gmail.com>
References: <20210422065959.GI13079@scully.more-magic.net>
	 <CAEo4CePqice09K5PPhmxwwF3jg=USrqRqM5FgVX_jCB8sZfDeA@mail.gmail.com>
	 <20210422095945.GA2495@scully.more-magic.net>
	 <4DCB6EF3-73EE-4038-8437-FEB339F20F90@dwheeler.com>
	 <627170ea-4e1e-1a3d-8291-494eac38c9b@dereferenced.org>
	 <CAPyX2neD99tn_FY3FZ9WO5HaB2WXSgvSOejOiOE_9QHxqRjpdA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Malicious commits to Linux kernel as part of
 university study

On Thu, 2021-04-22 at 18:49 +0100, Mark Steward wrote:
> 
> 
> This looks like a good guess to me, and if correct, means none of the
> submissions in the paper were successful:
> 
>   https://lore.kernel.org/linux-nfs/YIEqt8iAPVq8sG+t@sol.localdomain/
> 

If you believe them, the researchers never intended to allow the bad
commits into the kernel:

  https://www-users.cs.umn.edu/~kjlu/papers/clarifications-hc.pdf

On the one hand, they're wasting everyone's time to report a
vulnerability that everyone knows exists already and finding
conclusions that are all obvious and/or useless. But on the other hand,
they don't sound quite as daft as the headlines make them seem. Overly
naive for sure.


