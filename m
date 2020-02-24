X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["846" "Monday" "24" "February" "2020" "11:06:38" "-0500" "Jim Popovitch" "jim@k4vqc.com" nil "20" nil "^Date:" nil nil "2" nil nil (number mark "        jim@k4vqc.co Feb 24   20/846   " thread-indent "\"Re: [oss-security] mailman 2.x: XSS via file attachments in list archives\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] mailman 2.x: XSS via file attachments in list archives" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 2000 invoked by uid 550); 24 Feb 2020 16:47:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7665 invoked from network); 24 Feb 2020 16:06:53 -0000
Message-ID: <1309bdbba176b41aebdbeacf5a402fd9180f05c4.camel@k4vqc.com>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=k4vqc.com; s=ares;
	t=1582560380; bh=H3S0lPok32+wFfTNGS6T2UXT9wQgtl3+gFoxlF/7j/M=;
	h=Message-ID:Subject:From:To:Date:From;
	z=Message-ID:=20<1309bdbba176b41aebdbeacf5a402fd9180f05c4.camel@k4v
	 qc.com>|Subject:=20Re:=20[oss-security]=20mailman=202.x:=20XSS=20v
	 ia=20file=20attachments=20in=20list=0D=0A=20archives|From:=20Jim=2
	 0Popovitch=20<jim@k4vqc.com>|To:=20oss-security@lists.openwall.com
	 |Date:=20Mon,=2024=20Feb=202020=2011:06:38=20-0500;
	b=OPdpvfgZVZBu9qTJnttNJFuDvCI0HmiwFkT8MtCNfeqzjaXBMznwQ8K+h2ae54hjI
	 +uiC0mdhQCl9yLjv80RTzlC+H9gjUVBtwVjpEro8cgv+sHjjorqEs+vCaGEfVeO8lc
	 oCq78+SjRfSM2t3IaUKAfhRkRgeRmMggDjCjDBo6dwesaJY7KKvBaRbnj/Jv0xCUmu
	 2ilni7y9bR8zBabPkVVaZkdZF6G8CF+rSv8Dpv+Hseq+fIG1tnmmb+SwiJnZPD6ONl
	 fUHjF8S7scpOCAgE0XqbQDE8oX3ELzkabgxEpUkpzCYlam5s4h1JS7Ny6W7wlnS8P8
	 e2nMao1qNlyqw==
In-Reply-To: <20200224153451.4d773294@computer>
References: <20200224153451.4d773294@computer>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.102.2 at cav.domainmail.net
X-Virus-Status: Clean
Date: Mon, 24 Feb 2020 11:06:38 -0500
From: Jim Popovitch <jim@k4vqc.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mailman 2.x: XSS via file attachments in list
 archives
To: oss-security@lists.openwall.com

On Mon, 2020-02-24 at 15:34 +0100, Hanno Böck wrote:
> This change is in mailman 2.1.30rc1, but not in any stable release of
> mailman.

Just for some added info, Mailman v2.1.30 is almost released, the holdup
is with some language translations.  Mailman v2.1.30 will be the last of
the Mailman v2 releases as primary development and effort has long
shifted to Mailman v3. Further, the Mailman v2 branch is tied to Python
v2, which is now EOL by the fine Python folk.

Once Mailman v2.1.30 is release, I'm sure the various distributions will
pull the commit and merge the particulars into their release branches,
and that will surely include this XSS fix. 

I'm not a formal Mailman Developer, but as a contributor and member of
the general Mailman Community I say Thank You to Hanno for identifying
and reporting  this vulnerability.

-Jim P.

