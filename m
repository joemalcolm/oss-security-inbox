Received: (qmail 3713 invoked by uid 550); 14 Feb 2024 15:49:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3694 invoked from network); 14 Feb 2024 15:49:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=JIJegH8qXNWzE7UjqAG7q2jzQC6sTHpC9S1ppLNRH+k=; b=C6ZBIM+iXiFFhN5IVbnVli3vLp
	+XVFogLmoztZ22V3ydDU9jiq1rIML+yHzrtSXwqm/I/+Jb6+goabyJ/eGOjDpPEBknssWMaWZbHAc
	uWuYsDG3sJl/K8NUo1TMs0jHuXWVBhB7XTUGoGC0UFu9OrCqzKjq9z5MA/IQFG/UqLR1TvFN2aQjh
	TVJk/VhxI/YLcKHVrDwizNLYDZfyN0MTIm6k11fCzm9lkuekBHELFJfcK+OkcsWrLfjejsiTfkQaA
	a47UdqBurer6h2vao8F6nY511UC5rUr3nfF8Ns9gXkUMGzPj0oveL2QRo/IzgICAB9NbYPfUlE6k7
	odZC5OEA==;
Date: Wed, 14 Feb 2024 16:52:13 +0100
From: Yves-Alexis Perez <corsac@debian.org>
To: Mate Kukri <mate.kukri@canonical.com>
Cc: oss-security@lists.openwall.com
Message-ID: <ZczhrQT3b1y6c5Dy@corsac.net>
Mail-Followup-To: Mate Kukri <mate.kukri@canonical.com>,
	oss-security@lists.openwall.com
References: <CAAfJHtpMWco6y_wRRzrgQfJZmwzsMG6P8D5FFWLMAOihuc2dZw@mail.gmail.com>
 <ZczfqLnI23SC-A7Q@corsac.net>
 <CAAfJHtrrtWXmZzUbNhTKP9aXyu90ZsfcOa_cZhBkKS4uUign9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAfJHtrrtWXmZzUbNhTKP9aXyu90ZsfcOa_cZhBkKS4uUign9Q@mail.gmail.com>
X-Debian-User: corsac
Subject: Re: [oss-security] Secure Boot bypass in EDK2 based Virtual Machine
 firmware

On Wed, Feb 14, 2024 at 03:47:23PM +0000, Mate Kukri wrote:
> That is correct in the general case, but here the issue comes from the
> fact that a copy of the Shell was included in the firmware image
> itself, and as a built-in application was implicitly trusted.

Ah, thanks for the clarification, I didn't know about the implicit trust
on "built-in applications". Out of curiosity, are there other such
applications, which could be abused?

Regards,
-- 
Yves-Alexis Perez
