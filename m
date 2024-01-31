Received: (qmail 21580 invoked by uid 550); 31 Jan 2024 13:02:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15869 invoked from network); 31 Jan 2024 11:23:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1706700347;
	bh=oGIwYiknVWQNKN0BElkQay8AXR8eKTtPoHGPYwzNE0k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=VeCnX9YH0E1YHU75mRezOvxCYkYNRLSAoOV2W32wPX6mV5Bt1Iq4RlpeH8reoNtz/
	 UIgAHj2vrKoHQoSysonXOhJO1Qtb0yKAwyC2bq46vNytKrTVjWzrX/YeSwW2UfurEm
	 i95GDifc7t/UTolr/8OMc761QmpN8In65z8L71ajdlsW5Ecq761I1i+ZJNNRnQJqSS
	 d22QfIfIeqemZENTKXcjeFGyeSe1Ta/sg0AEHP8ictWyeJq7WW3nOiYvVywQ2OTgSb
	 sg2Jx0HDxmwIb5wnLZ0QWlnbonnJb0pgm6cMSRO4ymkVrPN2UBzEv8qp2VYR4+ciej
	 BJICcfraNDQew==
Date: Wed, 31 Jan 2024 08:25:42 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Cc: Armin Kuster <akuster@mvista.com>
Message-ID: <ZbouNugSu+17l256@quatroqueijos.cascardo.eti.br>
References: <CAKLnGtR3cgHVQz0kTmGVJAaT4nKvSejAZvbMGONTe=f_e9fSYA@mail.gmail.com>
 <20240130142524.GA21216@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240130142524.GA21216@openwall.com>
Subject: Re: [oss-security] FWD: Kernel vulnerabilities CVE-2021-33630 &
 CVE-2021-33631

On Tue, Jan 30, 2024 at 03:25:24PM +0100, Solar Designer wrote:
> Hi,
[...]
> > https://nvd.nist.gov/vuln/detail/CVE-2021-33630
> 
> This says:
> 
> "NULL Pointer Dereference vulnerability in openEuler kernel on Linux
> (network modules) allows Pointer Manipulation. This vulnerability is
> associated with program files net/sched/sch_cbs.C. This issue affects
> openEuler kernel: from 4.19.90 before 4.19.90-2401.3."
> 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3e8b9bfa110896f95d602d8c98d5f9d67e41d78c
> 
> This mainline commit is from 2019, "net/sched: cbs: Fix not adding cbs
> instance to list".
> 
[...]
> The above links don't say anything about attack vectors and required
> access - I guess CAP_NET_ADMIN [...]
[...]
 
> Alexander

I always find it lacking when CAP_NET_ADMIN is mentioned but without specifying
if it is the capability in the initial user namespace or any user namespace.

That is relevant for Ubuntu since it allows unprivileged creation of user
namespaces by default making it a PR:L instead of a PR:H attack, using CVSS
parlance.

I suppose it is relevant for other distros and systems as well, so worth noting
that this is important information.

Cascardo.
