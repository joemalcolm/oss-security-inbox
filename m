Received: (qmail 24452 invoked by uid 550); 21 May 2026 09:57:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24413 invoked from network); 21 May 2026 09:57:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=jDjd2BdChqdSu0eYUFw4Ol5hx21xE3vX0qq6cOyqEd0=; b=SyfxhnoGYGBiDI1lfThflnasuf
	pRBng5cHKdnNReZ0q1eujWkhAjYwOgEvwBPcDizlaKrDja5bxxuyUPYZG9hatawwkSzW/4xKeBl3E
	72k9bszvuwbHl0aUmIeIrZTdmjwYMGJ1WoPlEFHDVME2ARei+lBEHJp0cvFSdqcyGKqiNpFXEN+mK
	Kk8DdGoiSDn4e8XxswYFjks91M1gkm0vko7sKD3eg1QxkY8/QqlRZa4tJrSiyZJreELvmp7RLdHuu
	+RGokf5Pucy6nYRXEdYVTJhZ8KtT85VuCT05ahl7u60wY634zIuTTNGuSNnZ/sWoYnB4LlDY/RQD0
	fN55d8kA==;
Date: Thu, 21 May 2026 10:57:02 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ag7W7lM6oChmhYcT@definition.pseudorandom.co.uk>
References: <20260515022033.GA10889@localhost.localdomain>
 <20260520154548.GB1738@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20260520154548.GB1738@localhost.localdomain>
X-Debian-User: smcv
Subject: Re: [oss-security] Re: Logic bug in the Linux kernel's
 __ptrace_may_access() function

On Wed, 20 May 2026 at 15:46:05 +0000, Qualys Security Advisory wrote:
>In the following proof of concept, we (attackers) log in to the target
>computer as the user jane, remotely via sshd, while the real user jane
>is physically sitting at the computer (tty1)

Note that if you can do this on a typical desktop-class system, then any 
security framework where jane is trusted has already failed, because you 
can already arbitrarily overwrite jane's ~/.bashrc, 
~/.config/(anything), ~/.ssh/authorized_keys and so on to get a 
persistent compromise.

>even though we are not really an "allow_active" user

You are: your ssh'd-in process is not on an active local console, but 
the user whose account you have taken over *is* (concurrently) on an 
active local console (and you are not being confined by a sandbox like 
Flatpak, Snap or equivalent), and there is no effective security barrier 
between jane-via-ssh and jane-on-the-console. The assumption generally 
made by the Unix uid model is that user 'jane' is user 'jane', and if 
one login session is compromised then they are all equally compromised.

Having sandboxed processes that run as user 'jane', but do not have all 
of Jane's privileges, requires something beyond the uid model, for 
example containers (like Flatpak) or non-trivial LSMs (like Snap). One 
of the tasks of a sandboxing framework for privilege separation within a 
user account is to prevent the sandboxed processes from having 
unrestricted access to system facilities that follow the Unix uid model, 
and that includes the home directory and the D-Bus session and system 
buses.

     smcv
