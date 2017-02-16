X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2645" "Thursday" "16" "February" "2017" "05:46:08" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170216044608.2fvz6snvyzuufviz@eldamar.local>" "63" "[oss-security] Linux: CVE-2017-6001: Incomplete fix for CVE-2016-6786: perf/core: Fix concurrent sys_perf_event_open() vs. 'move_group' race" nil nil nil "2" "2017021604:46:08" "[oss-security] Linux: CVE-2017-6001: Incomplete fix for CVE-2016-6786: perf/core: Fix concurrent sys_perf_event_open() vs. 'move_group' race" (number mark "U       carnil@debia Feb 16   63/2645  " thread-indent "\"[oss-security] Linux: CVE-2017-6001: Incomplete fix for CVE-2016-6786: perf/core: Fix concurrent sys_perf_event_open() vs. 'move_group' race\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1726 invoked by uid 550); 16 Feb 2017 04:46:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1708 invoked from network); 16 Feb 2017 04:46:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tiIWrXPlAkA8YoO2U48CWGPgu8IKUoSAO55JpSjZRpU=;
        b=VCCo2g9gKbN0RX7MHo3JlHfHFZBbcWlIYCifaE/v6Mvk7/LSJHaU3WfvbJY2KUS33R
         8eppvJxsDz/o+coyuW5pfUv5INcOOGaYdNeKSGaHBmgAGaRIRWjRf/CCivxlEirPmjgP
         EUeLFRu0WC4sIR/gIunVVhjmONz/S5H4Xi6WlkkyuUwwozxPiv3WbYloM3JGdyywjINc
         /X+tSKC+I6FziRoARm2tGmBeCyFC+2EvNbkYpvNDcb6DDO+X7UPw9NJJu2lGAyfh4EWF
         Ak8lR6E83Nf5HB/MVk9hMVwc3YGDcMxN3jRvcqv80p9vCQWUOX0lz3ok+qSEhPhRQXzA
         r/IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=tiIWrXPlAkA8YoO2U48CWGPgu8IKUoSAO55JpSjZRpU=;
        b=fwFdEZReiUaf64ESR6DsyHcoPQDm5EhktV5rXZ23aoEcMXvByRA/x8oLWhC/goJgOO
         HXQlb4sr6q7U9YFBbzTek24+ugHR2GYwWvJqqnroWpHeeixZfefVog2louzP1+iKSRTH
         sqTE6ezQSImWYffR12FBwXFv4asIpWQ5h7b+HqsGFIu54Saj5daoTbtezfEXIEZbJeGJ
         rWc+DzPleqlclkog75x7X3wE9vpgy6mnLEMdURsUaS9JTvRbkn++MuAkR9aXu31iEPAN
         MXpEh+Qd1nynKx2EKyd22qsbXVT+UWPPah53cQICqCHXZpr/Xaoloayq0iH1uq1qqVs7
         Rbag==
X-Gm-Message-State: AMke39nzr6EfXCtWZfzM8McdB4kUm9P8qP6gbS5lPDAuchoZhTs98czGCvy2yrgsBOLE0Q==
X-Received: by 10.223.161.74 with SMTP id r10mr264715wrr.16.1487220370209;
        Wed, 15 Feb 2017 20:46:10 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 16 Feb 2017 05:46:08 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: Ben Hutchings <benh@debian.org>
Message-ID: <20170216044608.2fvz6snvyzuufviz@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] Linux: CVE-2017-6001: Incomplete fix for CVE-2016-6786: perf/core:
 Fix concurrent sys_perf_event_open() vs. 'move_group' race

Hi

The original fix for CVE-2016-6786 ws incomplete. Upstream has
commited

https://git.kernel.org/linus/321027c1fe77f892f4ea07846aeae08cefbbb290

which is in v4.10-rc4 (and also backported to 4.9.x in v4.9.7). This
has been assigned a new CVE identifier: CVE-2017-6001 (assigned via ->
https://cveform.mitre.org/).

Commit message reads as:

> commit 321027c1fe77f892f4ea07846aeae08cefbbb290
> Author: Peter Zijlstra <peterz@infradead.org>
> Date:   Wed Jan 11 21:09:50 2017 +0100
> 
>     perf/core: Fix concurrent sys_perf_event_open() vs. 'move_group' race
>     
>     Di Shen reported a race between two concurrent sys_perf_event_open()
>     calls where both try and move the same pre-existing software group
>     into a hardware context.
>     
>     The problem is exactly that described in commit:
>     
>       f63a8daa5812 ("perf: Fix event->ctx locking")
>     
>     ... where, while we wait for a ctx->mutex acquisition, the event->ctx
>     relation can have changed under us.
>     
>     That very same commit failed to recognise sys_perf_event_context() as an
>     external access vector to the events and thereby didn't apply the
>     established locking rules correctly.
>     
>     So while one sys_perf_event_open() call is stuck waiting on
>     mutex_lock_double(), the other (which owns said locks) moves the group
>     about. So by the time the former sys_perf_event_open() acquires the
>     locks, the context we've acquired is stale (and possibly dead).
>     
>     Apply the established locking rules as per perf_event_ctx_lock_nested()
>     to the mutex_lock_double() for the 'move_group' case. This obviously means
>     we need to validate state after we acquire the locks.
>     
>     Reported-by: Di Shen (Keen Lab)
>     Tested-by: John Dias <joaodias@google.com>
>     Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
>     Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
>     Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
>     Cc: Arnaldo Carvalho de Melo <acme@redhat.com>
>     Cc: Jiri Olsa <jolsa@redhat.com>
>     Cc: Kees Cook <keescook@chromium.org>
>     Cc: Linus Torvalds <torvalds@linux-foundation.org>
>     Cc: Min Chong <mchong@google.com>
>     Cc: Peter Zijlstra <peterz@infradead.org>
>     Cc: Stephane Eranian <eranian@google.com>
>     Cc: Thomas Gleixner <tglx@linutronix.de>
>     Cc: Vince Weaver <vincent.weaver@maine.edu>
>     Fixes: f63a8daa5812 ("perf: Fix event->ctx locking")
>     Link: http://lkml.kernel.org/r/20170106131444.GZ3174@twins.programming.kicks-ass.net
>     Signed-off-by: Ingo Molnar <mingo@kernel.org>

Regards,
Salvatore
