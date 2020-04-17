X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3353" "Friday" "17" "April" "2020" "09:24:42" "-0400" "Steve Grubb" "sgrubb@redhat.com" "<7526463.NqbLCg6IT0@x2>" "98" "Re: [oss-security] CVE-2020-10708 kernel: race condition in kernel/audit.c may allow low privilege users trigger kernel panic" nil nil nil "4" "2020041713:24:42" "[oss-security] CVE-2020-10708 kernel: race condition in kernel/audit.c may allow low privilege users trigger kernel panic" (number mark "U       sgrubb@redha Apr 17   98/3353  " thread-indent "\"Re: [oss-security] CVE-2020-10708 kernel: race condition in kernel/audit.c may allow low privilege users trigger kernel panic\"\n") "<43b894ae-c437-4d49-bb57-6fa33535fb4e.splendidsky.cwc@alibaba-inc.com>" ("<43b894ae-c437-4d49-bb57-6fa33535fb4e.splendidsky.cwc@alibaba-inc.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-10708 kernel: race condition in kernel/audit.c may allow low privilege users trigger kernel panic" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1077 invoked by uid 550); 17 Apr 2020 13:24:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1057 invoked from network); 17 Apr 2020 13:24:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587129887;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=C/sxWhEhw5E+3a/wFJv5rhk4wwljDaAKdRFcuyPu1FQ=;
	b=UlVHwo80uj7pZE4/QJ4C/+b8LeO3HcLNy8+0tyJB2b9R3h10bYMYxYjo70SXkkjlhVl9b/
	r4I8e9fTXOeCihgsR6i0o0kN0lnP3C1LVwTSySxqMsSpnRhvf8fQsZaPoSN1g04JLBUQvT
	EZd4/9ea5kMZHfKqjrkj2++/AIscdFc=
X-MC-Unique: SZvYQLMeNYGOtPr9N8jtNA-1
From: Steve Grubb <sgrubb@redhat.com>
To: oss-security@lists.openwall.com
Cc: =?utf-8?B?6ZmI5Lyf5a64KOeUsOWQhCk=?= <splendidsky.cwc@alibaba-inc.com>
Date: Fri, 17 Apr 2020 09:24:42 -0400
Message-ID: <7526463.NqbLCg6IT0@x2>
Organization: Red Hat
In-Reply-To: <43b894ae-c437-4d49-bb57-6fa33535fb4e.splendidsky.cwc@alibaba-inc.com>
References: <43b894ae-c437-4d49-bb57-6fa33535fb4e.splendidsky.cwc@alibaba-inc.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2020-10708 kernel: race condition in kernel/audit.c may allow low privilege users trigger kernel panic

On Friday, April 17, 2020 12:40:10 AM EDT =E9=99=88=E4=BC=9F=E5=AE=B8(=E7=
=94=B0=E5=90=84) wrote:
> "A race condition was found in the Linux kernel audit subsystem. When the
> system is configured to panic on events being dropped, an attacker who is
> able to trigger an audit event that starts while auditd is in the process
> of starting may be able to cause the system to panic by exploiting a race
> condition in audit event handling. This creates a denial of service by
> causing a panic."

While this is theoretically possible, starting the audit daemon requires=20
privileges. As root, you can do many worse things. Or just call panic=20
yourself. In practice, there isn't really a problem because the audit daemo=
n=20
starts, registers the pid, then the rules get loaded. So, I'd say yes there=
=20
is a race that should get fixed. But you're shooting yourself in the foot f=
or=20
looping on restarting the audit daemon as root.

Also, there is a configuration option, --backlog_wait_time, which also has=
=20
something to do with whether or not panic will get called.

-Steve

> https://bugzilla.redhat.com/show_bug.cgi?id=3D1822593
>=20
> Env:
>     Red Hat Enterprise Linux Server release 7.7 (Maipo)
>     3.10.0-1062.12.1.el7.x86_64
>=20
> Details:
> Function audit_log_end and audit_panic may have race conditions when audi=
td
> is restarting because audit_pid can be NULL in audit_log_end and then
> become not NULL in audit_panic, which may allow attackers to trigger
> kernel panic. Here is panic call stack:
>=20
>=20
> void audit_log_end(struct audit_buffer *ab)
> {
>     if (!ab)
>         return;
>     if (!audit_rate_check()) {
>         audit_log_lost("rate limit exceeded");
>     } else {
>         struct nlmsghdr *nlh =3D nlmsg_hdr(ab->skb);
>         nlh->nlmsg_len =3D ab->skb->len - NLMSG_HDRLEN;
>=20
>         if (audit_pid) {
>             skb_queue_tail(&audit_skb_queue, ab->skb);
>             wake_up_interruptible(&kauditd_wait);
>         } else {
>             audit_printk_skb(ab->skb); // <- audit_pid =3D=3D NULL when a=
uditd
> is killed }
>         ab->skb =3D NULL;
>     }
>     audit_buffer_free(ab);
> }
> -> audit_printk_skb -> audit_log_lost ->
> void audit_panic(const char *message)
> {
>     switch (audit_failure)
>     {
>     case AUDIT_FAIL_SILENT:
>         break;
>     case AUDIT_FAIL_PRINTK:
>         if (printk_ratelimit())
>             printk(KERN_ERR "audit: %s\n", message);
>         break;
>     case AUDIT_FAIL_PANIC:
>         /* test audit_pid since printk is always losey, why bother? */
>         if (audit_pid) // <- audit_pid not NULL because auditd is
> restarting panic("audit: %s\n", message);
>         break;
>     }
> }
>=20
> How to reproduce=EF=BC=9A
> 1. set audit-failure to AUDIT_FAIL_PANIC(2) and add a random audit rule
> like: [root@test ~]# cat /etc/audit/rules.d/audit.rules
> -D
> -b 8192
> -f 2
> -w /etc/hosts -p rwa -k hosts
> 2. keep killing auditd and then starting auditd, for example:
> while true; do ps aux | grep "/sbin/auditd" | grep -v "grep" | awk '{print
> $2}' | xargs kill; service auditd start; systemctl reset-failed
> auditd.service; done 3. log in a low privilege user and keep reading
> /etc/hosts, for example: while true; do cat /etc/hosts > /dev/null; done
> 4. kernel panic will happen within several minutes
>=20
> Thanks.




