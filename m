Received: (qmail 32682 invoked by uid 550); 30 Mar 2024 19:22:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3099 invoked from network); 30 Mar 2024 19:19:03 -0000
X-Sender-Id: instrampxe0y3a|x-authuser|calestyo@scientia.org
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1711826334; a=rsa-sha256;
	cv=none;
	b=h/eqMfbbNkQLAg74gkkUN9ayi9ZIarV+N2azRFWFGV//a3z1QEKIzGaxiUj/rj83yZp7dl
	WwcBA29nf7EeL246N3cvsYSWNU2L7ptNaiaNtMYc0ciboiz/7kmi8tlhcEGAtVUJXa4zHv
	A62O5Y68Uko1zjYSKw/aATYi8YH7/nDKgKtllTWPQGyWFKenb+XrNRWssSu4bp/f77x4cR
	ZMl1jcjXaAyihqYEpId0fF7RXn9im+yXSaVD2Yiua6gZvb/76VDXmRIAdzuTMRXxCERZYG
	qyyT4dL8RQ/qmNcCOIhtS3HpBI4nE7TckX0UmCbT3bmNsa8+0kfMrcWh7NCNTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1711826334;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=n6fAwcnB360RCTOid/LIt4xuQlDIeu0tpqkeEF2DsJw=;
	b=Euk6dYZQ6BkC9ADrBrt+cfADYAjPlLFWbJOCMZ6xRKDCFuIVFE3919RhAl+0pSApNy7DYZ
	LuE+563OUAzMbJGqhkpg+rAN2eT6tGsV/S7c81Q+o69J3WclE6hRPfZBpC+ln2Ie3CpnDm
	436+ng34dwDboV5yfsGJPvVF3VqFiJTZU1Lse93oS39rhkAZXxKUtrUwgIEWFPNzTKvWQk
	9pejPwqCjNRPeC/K64JvRR8T4cD4QgxCJlkjDxWRHXfZIXuB67RFA00OO60cjJ0HWY8BOl
	/WRcH6iUZHa60YwbYDuBcVHZZe/UINsbxjeoc+2/uI25tT4S18KHnzusZRxfbA==
ARC-Authentication-Results: i=1;
	rspamd-7f6944c677-lnjt5;
	auth=pass smtp.auth=instrampxe0y3a smtp.mailfrom=calestyo@scientia.org
X-Sender-Id: instrampxe0y3a|x-authuser|calestyo@scientia.org
X-MC-Relay: Neutral
X-MailChannels-SenderId: instrampxe0y3a|x-authuser|calestyo@scientia.org
X-MailChannels-Auth-Id: instrampxe0y3a
X-Lyrical-Turn: 4be5f98f479a832d_1711826334399_1693490033
X-MC-Loop-Signature: 1711826334399:1377221091
X-MC-Ingress-Time: 1711826334399
Message-ID: <bde860b3f8509d1549c628ca40f20724a5a1556d.camel@scientia.org>
From: Christoph Anton Mitterer <calestyo@scientia.org>
To: oss-security@lists.openwall.com
Cc: Andres Freund <andres@anarazel.de>
Date: Sat, 30 Mar 2024 20:18:46 +0100
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1+b1 
MIME-Version: 1.0
X-AuthUser: calestyo@scientia.org
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

Hey there.

First, thanks for finding and analysing this.


As far as I understand, many servers (that don't run
unstable/testing/etc. distributions) are likely safe (simply, because
they haven't seen the compromised versions yet).

But I wouldn't be too surprised if especially many developers run e.g.
on Debian unstable/testing or Fedora rawhide... and perhaps even many
end-users.
Thus, the systems from which the above save servers are
accessed/controlled might still get compromised or even worse: build
systems, repos, etc..


So next question would be:
In those systems (like Debian unstable) where the compromised code was
present, could it (in any of its versions) have actually caused
damage/further compromise?
Especially, is one e.g. safe when sshd was not running - or at least
not reachable from a public network?


=46rom what I understood from the currently published analysis, here in
the thread respectively from
https://gist.github.com/thesamesam/223949d5a074ebc3dce9ee78baad9e27 it
is thought that:

- It *may* only get activated when the argv[0] is /usr/sbin/sshd

and would then:

- probably "only(?) fiddle around with the authentication (presumably)
  to grant access to the attacker.



I know that analysis is still ongoing, but IMO the following questions
would be relevant for people to decide whether their system is further
compromised or whether things are "good" again (with no chance of any
further comprise having been able to take place), by downgrading:

1) Was the malware respectively its payload code able to download
   further evil code (like other rootkits or so)?

2) On affected systems, if:
   - sshd was NOT used (but e.g. ssh (client), was)
   and/or
   - if it was used, it wasn't accessible from the internet (e.g.
     because a firewall/NAT/etc. was in between)

   ... can one say with sufficient confidence, that no further
   compromise respectively evil code execution could have happened?

   In the sense of, the evil code was then present/loaded, but it's
   assured that effectively it didn't do anything bad then.

   If so, I guess that would help at least some people to assess
   whether their laptops/workstations are safe (when they didn't use
   sshd or that wasn't accessible from the outside).

3) Is it known already whether any other attack vectors (not using
   sshd) where part of the code - or can that be ruled out?


And all these questions, of course, for every version of the maleware
that circulated.


Also, is there some central place (here?) where such answers would be
given, once people have examined the malware payload in depth?


Thanks,
Chris.
