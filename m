Received: (qmail 3373 invoked by uid 550); 7 Jun 2025 14:20:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3307 invoked from network); 7 Jun 2025 14:20:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=sTrVtAyCPwgHZU+8f1etl5zdeXSoNdgXqrxlKl4VmsM=; b=kgNiewXjKCaI6x7yMM81mJZN30
	aQ0f+wqmHLujaGFnFHoPJSuqdT3mhx5RJXWN6geBp65U9QWZP7BHtFsT2aSuyHHyOLUuZ9RkXf/Bq
	Zk9L3hgcBs2pOThft/ZA5oGHka1Dm1mZtVWEFN4ncEKxl0fuEtQhrdQZnusxfGNwMAxXovMrUSS9g
	QsINXKbCiqpc8b7eBV+zD+gTezv+tqwTW06LfgMm4m1sVwKC30Dp2OCh78jRBC4+JSWA4vI4PesAZ
	Rz/naXVhfdaRMo1Jn6gb5hT6Cqrb8V/bBnney/z1qmF9XLI2DCAPZhK+IU0lZh+K5V8SRhXFsiRIO
	AVCYgM7A==;
Date: Sat, 7 Jun 2025 15:20:30 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aERKro-d7hVgtV4v@remnant.pseudorandom.co.uk>
References: <20250603025919.GA11183@openwall.com>
 <b379213c-55d1-4564-90aa-591edf3097c7@gmail.com>
 <20250606030239.GA897@openwall.com>
 <7d8815b7-a417-4407-87a3-fb0dc7c4f81f@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <7d8815b7-a417-4407-87a3-fb0dc7c4f81f@gmail.com>
X-Debian-User: smcv
Subject: Re: [oss-security] Linux kernel: HFS+ filesystem implementation
 issues, exposure in distros

On Fri, 06 Jun 2025 at 15:40:20 +0200, Attila Szasz wrote:
>Incidentally, I don't know how active user sessions in polkit and the
>state of being a sudoer vs non-sudoer works when you hook up workstations
>to AD, but it might be interesting.

Active vs. inactive vs. non-local user sessions in polkit are usually 
orthogonal to whether you're root-equivalent, and are orthogonal to 
whether your uid is defined by /etc/passwd or by some remote service.
If you logged in on the console (getty, xdm, gdm or similar) and your 
session is still the one in the foreground (it wasn't put in the 
background by "fast user switching" or Ctrl+Alt+function keys), then you 
are said to have an active local session.

The interesting property of active local sessions in polkit is that by 
default various services let them do certain restricted things in order 
to meet reasonable user expectations, while not being fully 
root-equivalent. For instance unprivileged users are not normally 
allowed to shut down the machine (because that would compromise 
availability), but unprivileged users with an active local session *are* 
allowed to shut down the machine by default (on the assumption that a 
user who is physically in front of the computer could usually equally 
well cause denial of service by pulling the plug, so allowing them to 
shut down gracefully does not make anything worse). This can be 
overridden by local policy (the "pol" in the name polkit); for example 
sysadmins of "kiosk" machines that are physically protected from 
unauthorized disconnection should probably install local policy that 
does not allow active local sessions to shut down.

Similarly, service authors and sysadmins can conditionalize any default 
or non-default policy on whether a user has an active local session, if 
they want to - and it would be technically possible to install a policy 
that makes every active local user root-equivalent (live-boot images 
might potentially want to do this), although that would be an unwise 
thing to do on a general-purpose system.

If a user account's root-equivalence is given by group membership (e.g. 
on Debian, the conventional way to allow privilege elevation to root is 
by giving membership in the sudo group) then the decision to make it 
root-equivalent or not could come from either local configuration, or AD 
or similar remote services. If its root-equivalence comes from some 
other property (e.g. editing /etc/sudoers) then it's more likely to be a 
purely local fact.

     smcv
