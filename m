Received: (qmail 11851 invoked by uid 550); 20 Jun 2023 17:11:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5382 invoked from network); 20 Jun 2023 17:05:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=true.cz; s=xnet;
	t=1687280721; bh=HEPHEOCgdcPTfBi0LxRBBdOGH6YzdaJnG8XbMC/ez9w=;
	h=Date:From:To:Subject:Reply-To:References:In-Reply-To;
	b=KxcPxhZOt4+RWJSj84v0BROoIoiVrgNaQOS9glbaYu8y0XNtgEJQv+M2NEuk7ZNtK
	 atTTpJSmnTSUBDh7tX8ogcmhb5iGL433GVaf5LWJgIK4JT3SHycGOqXY7kVXaIMkBD
	 3Y2PaIrXKkQd4e4XKJ2WieIKh4K7l9Ww6JBvxCLk=
Date: Tue, 20 Jun 2023 19:04:35 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: oss-security@lists.openwall.com
Message-ID: <20230620170435.GA26419@meh.true.cz>
References: <CAGUWgD--HN6u3k6ofV07UPo3Bh=HyNRngUV2yz9OkzD5t9m3=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGUWgD--HN6u3k6ofV07UPo3Bh=HyNRngUV2yz9OkzD5t9m3=A@mail.gmail.com>
Subject: Re: [oss-security] The AI chatgpt writes insecure code

Georgi Guninski <gguninski@gmail.com> [2023-06-20 19:22:25]:

Hi,

> Write a python cgi script which takes as input text field NAME and
> return html "Hello NAME"

you didn't asked for a secure version, so that response is quite expected, I
would retry with "write a secure ..." prompt.

Cheers,

Petr
