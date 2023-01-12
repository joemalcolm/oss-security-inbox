Received: (qmail 30126 invoked by uid 550); 12 Jan 2023 17:10:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30105 invoked from network); 12 Jan 2023 17:10:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1673543428; x=1673629828; bh=gia/TbQBxO
	nR6Z/+7MwaGBllC2APlo34Dgp2fCiI38Q=; b=Z3azqqmfgLTP30bQbnxE93bfPp
	MjwaTl2pLIWYgSdw//Zb6/CZC0BrQxAm1S0SE7aMqFUhaogIDvi0uPTvhgTBfZ85
	bqNwKzRpg0bPUkIi6Y4vGV4qSpc/dtQi7Z9RFwSoiWbY9uxAsK1NAiS8IuVtblvf
	Oqprcul4oWBOKRhI8lhxVOhUyLUt17Q9JufwZduaHItPMHoPjMQ1xxZ9gIbXzBov
	ogS+PxMSIyiYNeesrSrxJBWRyWFke6Ss/wi1YuAU9FHKQcUBEpWHhs6xMxb9Oyhv
	KaIOMFq9ULI4h9mGRyuqbjQIumBBDv6lZD9OdWznQPEGb/bCu426pOHrSmXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1673543428; x=1673629828; bh=gia/TbQBxOnR6Z/+7MwaGBllC2AP
	lo34Dgp2fCiI38Q=; b=cKjd3giWFrMu2CVOF0hfIhu1v1be9dAoHHQ4rE2yDo1f
	4gS1xsj/PhbkH6cZ4yo6t8+2nEdESIhdJdVzb6e7xbQtVxwneVLIbFo9Xu8F8MkB
	BZxhZBTcx3RKLB3C8vc0OxYGlSbB+KlmoYwkH1Pk9voPEbVxxkoj1VWvkTUBPEfn
	V7WtpDeNr5uK6qLUQ+a+5WkzoJ8gVXgHcs30a4GG2c8Zca7Z4HIe1ic6iEa1JlCa
	QxGZEkU/yhDd6HPwdJ953wc0eU2ZGlhzn5UyYuOWTRyiEfvIgOAdBiim8YQliRFo
	mLWmTsG3icKek0mj8+0SLrA8fphfFsIut9Va5JtnEg==
X-ME-Sender: <xms:Az_AY3rSgzjwxxYsu6bbp4xvFP7vIhH6up3c0089uNE-une3BU91Hw>
    <xme:Az_AYxpWqJvs-tgkNHSeP4Qa0VIoPeIZsTpXscxou4NUUjyUFIm5ijx0GY7FARTdT
    3RHDd59pkgSBw>
X-ME-Received: <xmr:Az_AY0NdYGfnmzjXKJqLiWz6yjvi7rcem3iwH4pSKrf207vWN9RpVZz3EXn7IwZg8OBkeTkEKVtaL-s4OXZgLiZIlGAQNl0fDUBvfQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrleeigdelkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:Az_AY65TefDViWuUqbnLPa4JD2FzuuaR5F0amopC35NNBr6-wws1vw>
    <xmx:Az_AY265gqlpmy0aUFfFhG6w-TapoUJLqgDYhIaIUaIm7UWDRmGxJA>
    <xmx:Az_AYyhkkHWWzLRDlktniQnxfyR9hBjYTUhwvc5HlR_KKlU-4sO8sQ>
    <xmx:BD_AY7i_VG0vXoUIHCOMzL5_tw10b16al0JlnvAijdvM--vi-hfIMA>
Feedback-ID: i787e41f1:Fastmail
Date: Thu, 12 Jan 2023 18:10:23 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <Y8A+/ys+5oIRzr9V@kroah.com>
References: <CAO15rPk6Uh6ZqZ=c8yjz0=53DqXQKF=fSXqDo9dLdMAy7-YS3g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAO15rPk6Uh6ZqZ=c8yjz0=53DqXQKF=fSXqDo9dLdMAy7-YS3g@mail.gmail.com>
Subject: Re: [oss-security] CVE-2023-0122: Linux kernel: Pre-Auth Remote DoS
 in NVMe

On Thu, Jan 12, 2023 at 04:12:30PM +0200, Tal Lossos wrote:
> Hi all,
> 
> # Description
> A NULL Pointer Dereference bug in nvmet_setup_auth
> (drivers/nvme/target/auth.c) can be triggered remotely to cause a DoS.
> Since the bug occurs in the authentication feature, it can be easily
> triggered by an unauthorized client in the pre-auth stage.
> Versions affected - v6.0-rc1 to v6.0-rc3 (fixed in v6.0-rc4).

Meta-comment, why are CVE's being assigned for issues found, and then
fixed, in development kernel releases?  Who assigned this CVE, MITRE or
someone else?

thanks,

greg k-h
