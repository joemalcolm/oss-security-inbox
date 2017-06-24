X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["382" "Saturday" "24" "June" "2017" "14:17:18" "+0200" "=?UTF-8?B?T25kxZllaiBTdXLDvQ==?=" "ondrej@sury.org" "<15cda08f0b0.2768.595dd7c4cc70d453d3914ebcaf051657@sury.org>" "22" "[oss-security] Re: CVE for the TSIG issue in knot?" "^CC:" nil nil "6" "2017062412:17:18" "[oss-security] Re: CVE for the TSIG issue in knot?" (number mark "        ondrej@sury. Jun 24   22/382   " thread-indent "\"[oss-security] Re: CVE for the TSIG issue in knot?\"\n") "<1498305503.26646.5.camel@debian.org>" ("<1498305503.26646.5.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28043 invoked by uid 550); 24 Jun 2017 12:21:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24457 invoked from network); 24 Jun 2017 12:17:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sury.org; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=/0SbhqTtevW1auz
	tSXYARGAQVYK+ychE8jVbA8jlwCA=; b=AFs3ULDP6hDlaldkJjOZGG9uU6OoHQR
	KdqBN76PQYFkrNmtrkWpuPWCv3laH0LKma2CX2k6t1/nO26GQ8QeQPVmjjIaEZre
	dOqUR8H+g46l0KD0++cPoxpPZY49WrWerB5O02QleOpD3seOnOwUCo+5ie5koaAt
	IkFKR2Zc9DDc=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	fm1; bh=/0SbhqTtevW1auztSXYARGAQVYK+ychE8jVbA8jlwCA=; b=feJsDnZi
	fLhlDcIAIY8TQKhVsDviVJ4R9wi/su/BwKWWdzdanc4c7FmwS+xQjy6BWDBBSksd
	Xo4flw+IEjlwH7XUeV+VlKXMNoYYRWZxc0IKrkS76LeNQsYywv27d22Nmn9+YA7l
	FjJVKpQYQ1KRQyKlIk7ge113TZWZ3pW97lXlklmwjhGx8h1mZW62kpAn0nZp5yJK
	cyaYpdT+yf47UxtfywR8HAk8yfDqLABg6dVI8cWu1Vg7I3BRKR3Tnvvc9Go44IzE
	iAa6f2TKQY3X1rThDgB6yZUHUP+E9QhXfzM49TGM5cce7CqhajMkHvIRCOW4RH7s
	Ws9wKdcwXr+l5A==
X-ME-Sender: <xms:UFhOWXIZ2seo2vpMca1TyrsCAZM8W1nic1gbllXb_Wi5lOdVsnx73g>
X-Sasl-enc: jUhXGgQcMaJf3+WoCS/f6+UG+RemjWBioHxeKKKFv6uN 1498306640
Message-ID: <15cda08f0b0.2768.595dd7c4cc70d453d3914ebcaf051657@sury.org>
In-Reply-To: <1498305503.26646.5.camel@debian.org>
References: <1498305503.26646.5.camel@debian.org>
User-Agent: AquaMail/1.10.0-403 (build: 101000001)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: 8bit
CC: "oss-sec" <oss-security@lists.openwall.com>, =?UTF-8?B?T25kxZllaiBTdXLDvQ==?= <ondrej@debian.org>
Date: Sat, 24 Jun 2017 14:17:18 +0200
From: =?UTF-8?B?T25kxZllaiBTdXLDvQ==?= <ondrej@sury.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE for the TSIG issue in knot?
To: "Yves-Alexis Perez" <corsac@debian.org>, <daniel.salzman@nic.cz>

Hi Yves-Alexis,

we have requested CVE via DWF form, but without any response yet.

Cheers,
Ondřej


On 24 June 2017 13:58:39 Yves-Alexis Perez <corsac@debian.org> wrote:

> Hi Daniel,
>
> I noticed the recent issue in knot with TSIG bypass (https://lists.nic.cz/pipe
> rmail/knot-dns-users/2017-June/001144.html)
>
> Was a CVE assigned for this?
>
> Regards,
> --
> Yves-Alexis


