Received: (qmail 1695 invoked by uid 550); 2 Feb 2023 20:47:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1350 invoked from network); 2 Feb 2023 20:47:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xosc.org; h=date
	:from:to:subject:message-id:references:mime-version:content-type
	:in-reply-to; s=selector2; bh=dGmhIaLt4fA4qn0kBp28F88sBC1oq0eKJs
	gyqZQjefM=; b=EE4q5v6EyCl2ZQqNznOErB+kmdaVyh1Y8ig3GEgPBVP5nG7QNH
	m7pcSrVAWZ/93r6MTiOw62LBtKHqUn7gJOxz+v3AlW+TBc1xnpcS7AFOBzlc14JR
	d5TFhbTYBA7obwlHbr3ZH4oUxxyYearh1HmJTJNcDi9ObMBkNTmpUbCjxa/nf74f
	pwTas1Hc3/9dz6l65snTWXFzGW9n1KLyUhHXZ1/43l/6alMqYWXBAf0ldrU2imz8
	TEs/ctxjKeWO2iuDf3YS5tM7xGOZ59Bc76dQhgOypmiavM2DzyELvxOdr2R7NuBk
	qgjLZf1v/S5xzqkyypKO9j/5cDqHTXMJj5hA==
Date: Thu, 2 Feb 2023 21:47:04 +0100
From: Matthias Schmidt <oss-sec@xosc.org>
To: oss-security@lists.openwall.com
Message-ID: <Y9whSM9p5F8tqxCp@xosc.org>
References: <20230202130212.GA15689@localhost.localdomain>
 <CAGUWgD92EyHBNQLt3eGoEq2mBkaoWS2AGLN1dFE2JFw+6kMv8w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGUWgD92EyHBNQLt3eGoEq2mBkaoWS2AGLN1dFE2JFw+6kMv8w@mail.gmail.com>
User-Agent: Mutt/2.2.9 (2022-11-12)
Subject: Re: [oss-security] double-free vulnerability in OpenSSH server 9.1

Hi,

* Georgi Guninski wrote:
> Nice find :)
> This is very complicated codepath, did a human found it "manually"
> or some analysis program found it?
> The warez are so large, they are hard for me manually.

According to djm@ [1] it was found manually and the first bug reported on
the Fediverse.

Cheers
	
	Matthias

[1] https://cybervillains.com/@djm/109795488319439723
