Received: (qmail 20064 invoked by uid 550); 10 Apr 2024 00:45:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14316 invoked from network); 9 Apr 2024 23:47:50 -0000
X-Sender-Id: instrampxe0y3a|x-authuser|calestyo@scientia.org
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1712706460; a=rsa-sha256;
	cv=none;
	b=Drr1cKkAuy61mcNP2B6eNwmdYiQfqKlxANSUFd+IeFIiVe6pW4M9juLWIQ4DZyeMeoArkh
	QshgOyrr/l4OsjhsNWmzw0O86ZqpDt7Wa/6dVsavTqgRPedTV9ext5GKCf1bgJEkmSOChB
	92HJ1ubJCkPkw9iNHgZ3wzP5+553WNOPIn/Cyy6LQZ9gyRXz3M7jp1Lt69+fc9IanZEyeN
	DCswW6nZ3TWyAGwmrsOm2dGxcaE4tTQzAcDQoo7CsI2gGA4+iKGWJXFH+CwKKSVFZ0anFs
	Mq5bvrXa0fENxYl4FUTrU1K94YLou4Jh57CdHcdAhwXJR5Q49TmyuTBLB0BbSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1712706460;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I7L4mPmt/xMrQWSMjueD8jXu/sdS6IP82qy2LS2n830=;
	b=Ep6dI92GQgxn57Fg22tHtWO7xr2UlRJJvX2Fsr08YXBj6hpo1hQHpXifj08Cl/Dlmxcf8l
	4W6S7BClihOhD9OxrnaJibNKLjxfJJQtfIowUfCw273tYZLLKTc09FnsWd9XlWUlHjvXet
	20M6FC4/T72F/zTvH5QxzvoR30WTtN1z/27I7tfTnjhS+WDxC+WTFFe3fpCrRN/iAtLumG
	FoJhglTXVof3JutNv5GWqUQWC9OHV+GYNzx4jpt2b/7Rj3mZzuPXO5CkK4RyyFuS4w6r56
	zfLGTSrdTyP15omVM/1Z9284P5uKSJHiH/uUBeIWCrMJxqGsaprYgjPteHxFrQ==
ARC-Authentication-Results: i=1;
	rspamd-86f86f958-pvwlc;
	auth=pass smtp.auth=instrampxe0y3a smtp.mailfrom=calestyo@scientia.org
X-Sender-Id: instrampxe0y3a|x-authuser|calestyo@scientia.org
X-MC-Relay: Neutral
X-MailChannels-SenderId: instrampxe0y3a|x-authuser|calestyo@scientia.org
X-MailChannels-Auth-Id: instrampxe0y3a
X-Scare-Hysterical: 25991f914c8366f2_1712706460706_52924243
X-MC-Loop-Signature: 1712706460706:3200152174
X-MC-Ingress-Time: 1712706460705
Message-ID: <239062992cb042fc4c59356809ca1f32e9ea41ea.camel@scientia.org>
From: Christoph Anton Mitterer <calestyo@scientia.org>
To: oss-security@lists.openwall.com
Date: Wed, 10 Apr 2024 01:47:33 +0200
In-Reply-To: <20240409233648.igiak63z7ep2nmco@awork3.anarazel.de>
References: 
	<loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me>
	 <42bf95dbef6e44d416c030ff6dad7b6806f54cbf.camel@sec.16bits.net>
	 <6614BD70.8090200@gmail.com>
	 <20240409233648.igiak63z7ep2nmco@awork3.anarazel.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1+b1 
MIME-Version: 1.0
X-AuthUser: calestyo@scientia.org
Subject: Re: [oss-security] xz backdoor prevention using hosts.deny?

On Tue, 2024-04-09 at 16:36 -0700, Andres Freund wrote:
> See https://www.openwall.com/lists/oss-security/2024/03/30/37=C2=A0for the
> path
> leading to certification validation before certificate validity,
> users, etc
> are checked.

And I assume "etc" includes access control via hosts.deny?


  So in other words, people who had a backdored sshd running, that
  was=C2=A0only protected via hosts.deny may have actually been compromised?

  Unless[0] of course, access was blocked by netfilter, some
  other=C2=A0firewall, router, etc. ... or sshd wasn't even running.

Right?


Cheers,
Chris


[0] And this assumes that no home calling (like automatic command/code
    pulling from the adversary, or submission of e.g. found private
    keys) and no further attack vectors (other than via sshd) or
    infestations (like creating new users or authorized_keys entries)
    are to be found...
    ... which AFAIU is not yet definitely ruled out?
