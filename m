X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1413" "Friday" "27" "January" "2017" "16:01:25" "+0100" "Andreas Stieger" "astieger@suse.com" "<e7775dec-2573-d6d6-ddbd-063640a1b4f0@suse.com>" "45" "Re: [oss-security] Re: CVE request: linux kernel - local DoS with cgroup offline code" nil nil nil "1" "2017012715:01:25" "[oss-security] Re: CVE request: linux kernel - local DoS with cgroup offline code" (number mark "U       astieger@sus Jan 27   45/1413  " thread-indent "\"Re: [oss-security] Re: CVE request: linux kernel - local DoS with cgroup offline code\"\n") "<3355e013913e410fb611ac9aa61e8d5f@imshyb02.MITRE.ORG>" ("<3355e013913e410fb611ac9aa61e8d5f@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11538 invoked by uid 550); 27 Jan 2017 15:02:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11518 invoked from network); 27 Jan 2017 15:02:09 -0000
To: oss-security@lists.openwall.com
References: <3355e013913e410fb611ac9aa61e8d5f@imshyb02.MITRE.ORG>
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
Message-ID: <e7775dec-2573-d6d6-ddbd-063640a1b4f0@suse.com>
Date: Fri, 27 Jan 2017 16:01:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <3355e013913e410fb611ac9aa61e8d5f@imshyb02.MITRE.ORG>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: CVE request: linux kernel - local DoS with
 cgroup offline code


On 11/05/2016 04:59 PM, cve-assign@mitre.org wrote:
> > A malicious user who can run an arbitrary image with a
> non-privileged user
> > in a Container-as-a-service cloud environment could use the exploit to
> > deadlock the container nodes to deny the service for other users.
>
> > container> $ trinity -D --disable-fds=memfd --disable-fds=timerfd \
> >              --disable-fds=pipes --disable-fds=testfile \
> >              --disable-fds=sockets --disable-fds=perf \
> >              --disable-fds=epoll --disable-fds=eventfd \
> >              --disable-fds=drm
>
> > # systemctl status docker
> > <hang...>
>
> > task kworker/45:4:146035 blocked for more than 120 seconds.
>
> > "cgroup is trying to offline a cpuset css, which
> > takes place under cgroup_mutex. The offlining ends up trying to drain
> > active usages of a sysctl table which apparently is not happening."
> There is
> > no fix at this time as far as I can tell.
>
> Use CVE-2016-9191.
>

Fix:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=93362fa47fe98b62e4a34ab408c4a418432e7939

Introduced by:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=f0c3b5093addc8bfe9fe3a5b01acb7ec7969eafa

v3.11-rc1...v4.10-rc4

Andreas


-- 
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imendörffer, Jane Smithard, Graham Norton,
HRB 21284 (AG Nürnberg)


