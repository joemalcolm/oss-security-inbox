Received: (qmail 28107 invoked by uid 550); 11 May 2023 15:20:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28089 invoked from network); 11 May 2023 15:20:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683818426;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IJEU53Ws5eOjyBLXe3P+zXfwcnXOVGtj4EzqJfZMR2g=;
	b=fd3g3brNA1gmnIbuO8rVFC9RTec4rC34WSOlSvz4IPXVcKBIXRBusX8WxOs5OkQlYpnZR3
	37XRMGinAeZkkNW7IelCEYYOPorbV1C7ZEB5Hy6yfpvz9a+5oJh/6BAf/4zFc06EcqZlnr
	jm/FmcelkSDR4ngmuWlLpGPqKwi5ZXk=
X-MC-Unique: 5q7Gdx02OduiHbdiY7B2Tw-1
From: Florian Weimer <fweimer@redhat.com>
To: Tobias Heider <tobias.heider@canonical.com>
Cc: oss-security@lists.openwall.com,  Turritopsis Dohrnii Teo En Ming
 <tdtemccnp@gmail.com>,  ceo@teo-en-ming-corp.com,  Piotr Krysiuk
 <piotras@gmail.com>
References: <CAD3upLvuttgu3i6qZyB2LLY2CPcTvMdhQQLKdAYV2eoPD5Wjjg@mail.gmail.com>
	<20230510165545.GA25380@openwall.com>
	<ZFvuu+PpS3BO2T/t@quatroqueijos.cascardo.eti.br>
	<CAARv3RQS-sV4JCkRCJ1EOgfi+9MR0G8MsiS-xT9gXNjddqmJ-A@mail.gmail.com>
Date: Thu, 11 May 2023 17:20:20 +0200
In-Reply-To: <CAARv3RQS-sV4JCkRCJ1EOgfi+9MR0G8MsiS-xT9gXNjddqmJ-A@mail.gmail.com>
	(Tobias Heider's message of "Wed, 10 May 2023 23:52:27 +0200")
Message-ID: <87a5yahp3f.fsf@oldenburg3.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] New Linux kernel NetFilter flaw gives attackers
 root privileges

* Tobias Heider:

> Another thing worth mentioning is that the apparmor team has done some very
> interesting work on providing finer control over unprivileged user namespaces
> on a per application basis:
> https://gitlab.com/apparmor/apparmor/-/wikis/unprivileged_userns_restriction
>
> This would allow having opt-in unprivileged userns support only for
> confined and explicitly permitted applications and could hopefully
> drastically reduce the impact of similar bugs in the future.

Doesn't unprivileged chroot need user namespace support?  So a side
effect of disabling it might be to force applications to switch to
userspace emulation of pathname lookup.  That doesn't seem like a good
tradeoff?

Thanks,
Florian

