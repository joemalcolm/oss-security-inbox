X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["444" "Wednesday" "13" "May" "2015" "20:48:31" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9pL6kU5D9YNZdDMHXc0harTZ_oDo9xEpmojEN9_qs+qpQ@mail.gmail.com>" "12" "Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities" nil nil nil "5" "2015051318:48:31" "[oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities" (number mark "        Jason@zx2c4. May 13   12/444   " thread-indent "\"Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities\"\n") "<20150513184331.GA1847@kroah.com>" ("<1431542014-3239-1-git-send-email-Jason@zx2c4.com>" "<20150513184331.GA1847@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26113 invoked by uid 550); 13 May 2015 18:48:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26093 invoked from network); 13 May 2015 18:48:48 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to:cc
	:content-type; s=mail; bh=0Eo4v6PVpobs3Vbal8352s7yiJ0=; b=zPo/AK
	IsEYCZABzr+1PlbTg2D1nKe9ljYnKs8ki3fQqEoTWgOVZuuyLaMyyPjh3yeApiPk
	gDzDyit42OIiN9wPcYA4mch7RUUbJFoMSzZMKj5g8c9t6nFprZ/b2yAxPBset8qg
	D1jY6n6sKTJIPl+XGB3zacaA+Q+X+4vhuHELs2ZnbDwQNRQFwaRSKtvo6FNA0IRu
	KSXvXEccGh9rfA01eQkCosGFU5l79+FdR8un8XoYw/+Ahgz1bGoSPQDZsQe6VEpe
	p6ICZsE8T1y4Z2gAxc1ZzXMKjsz8EPRYle6X23L3DFU4Oegx+cZRpf1DuYrVyd8z
	Mq8fEXcHq1wJtJtA==
MIME-Version: 1.0
X-Received: by 10.112.166.37 with SMTP id zd5mr71885lbb.75.1431542911806; Wed,
 13 May 2015 11:48:31 -0700 (PDT)
In-Reply-To: <20150513184331.GA1847@kroah.com>
References: <1431542014-3239-1-git-send-email-Jason@zx2c4.com>
	<20150513184331.GA1847@kroah.com>
Message-ID: <CAHmME9pL6kU5D9YNZdDMHXc0harTZ_oDo9xEpmojEN9_qs+qpQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security <oss-security@lists.openwall.com>, shigekatsu.tateno@atmel.com, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Date: Wed, 13 May 2015 20:48:31 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities
To: Greg KH <greg@kroah.com>

On Wed, May 13, 2015 at 8:43 PM, Greg KH <greg@kroah.com> wrote:
> Any reason you didn't cc: the maintainer who could actually apply these
> to the kernel tree?

I did, look at the email again: the first recipient is
<shigekatsu.tateno@atmel.com>.

>From the MAINTAINERS file:
    STAGING - OZMO DEVICES USB OVER WIFI DRIVER
    M:      Shigekatsu Tateno <shigekatsu.tateno@atmel.com>
    S:      Maintained
    F:      drivers/staging/ozwpan/
