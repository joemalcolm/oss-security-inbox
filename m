Received: (qmail 11856 invoked by uid 550); 11 Dec 2025 16:13:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26013 invoked from network); 11 Dec 2025 16:08:02 -0000
Message-ID: <c4c36909-751f-416b-9e65-7dabf6d265a9@linuxlounge.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxlounge.net;
	s=mail; t=1765469272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CnouLAdiaXBJCeWLQXRg5N1YJ+jS06I+qfZzIDrCFdk=;
	b=HcqcAk27BVQQoEuFkl5xtjyQ13WdmxElmATjgJ+LxyZbfVnUzJxG2JfITtw9DDVBZX77Nx
	mHEEozjiqKwe3c17YjR2XjhBxziN8+XDshLsW1Lr1uSvwydCcFJEAKAGReLoO2cdPt5jGT
	A7AadysEBqQ7Dxa4yK9vsioIbsOSz4I=
Date: Thu, 11 Dec 2025 17:07:50 +0100
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <7ae55330-061d-41d6-a2c0-e83b2ba16235@oracle.com>
 <20251211153329.ovj6y3sr6udd3c5x@jwilk.net>
Content-Language: en-US
From: Martin Weinelt <martin@linuxlounge.net>
In-Reply-To: <20251211153329.ovj6y3sr6udd3c5x@jwilk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2025-8110 in Gogs self-hosted git service

On 12/11/25 16:33, Jakub Wilk wrote:
> * Alan Coopersmith <alan.coopersmith@oracle.com>, 2025-12-10 15:18:
>> https://github.com/gogs/gogs offers a MIT-licensed self-hosted git 
>> service.
> 
> Gogs has a couple of notable forks: Gitea, Forgejo.
> Does anyone know if they are affected?
> 

Per gusted, a Forgejo developer, the relevant code was rewritten way 
back in https://github.com/go-gitea/gitea/pull/6314.

People have since tried to attack it, but have not been successful.

That means Forgejo and Gitea are most likely unaffected.

---

Martin Weinelt
