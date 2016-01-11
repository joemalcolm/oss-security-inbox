X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1100" "Monday" "11" "January" "2016" "08:32:21" "-0500" "Wade Mealing" "wmealing@redhat.com" "<993560327.6397475.1452519141475.JavaMail.zimbra@redhat.com>" "34" "[oss-security] CVE Request: Linux kernel -  SCTP denial of service during heartbeat timeout functions." nil nil nil "1" "2016011113:32:21" "[oss-security] CVE Request: Linux kernel - SCTP denial of service during heartbeat timeout functions." (number mark "U       wmealing@red Jan 11   34/1100  " thread-indent "\"[oss-security] CVE Request: Linux kernel -  SCTP denial of service during heartbeat timeout functions.\"\n") "<2033270847.6386156.1452514686238.JavaMail.zimbra@redhat.com>" ("<2033270847.6386156.1452514686238.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26041 invoked by uid 550); 11 Jan 2016 13:32:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26018 invoked from network); 11 Jan 2016 13:32:34 -0000
Date: Mon, 11 Jan 2016 08:32:21 -0500 (EST)
From: Wade Mealing <wmealing@redhat.com>
To: OSS Security List <oss-security@lists.openwall.com>
Cc: cve-assign@mitre.org
Message-ID: <993560327.6397475.1452519141475.JavaMail.zimbra@redhat.com>
In-Reply-To: <2033270847.6386156.1452514686238.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.50.11]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC47 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE Request: Linux kernel - SCTP denial of service during heartbeat timeout functions.
Thread-Index: lztHwZT4MWWIZcA1aM79FGKqyrtbtg==
Subject: [oss-security] CVE Request: Linux kernel -  SCTP denial of service during
 heartbeat timeout functions.

Gday all,

>From the patch[1] commit comments:

--
A case can occur when sctp_accept() is called by the user during
a heartbeat timeout event after the 4-way handshake.  Since
sctp_assoc_migrate() changes both assoc->base.sk and assoc->ep, the
bh_sock_lock in sctp_generate_heartbeat_event() will be taken with
the listening socket but released with the new association socket.
The result is a deadlock on any future attempts to take the listening
socket lock.

Note that this race can occur with other SCTP timeouts that take
the bh_lock_sock() in the event sctp_accept() is called.
---

TLDR: ensure that the lock on the socket taken is also the
same one that is released by saving a copy of the socket 
before entering the heartbeat event critical section.

I'd like a CVE for this issue. 

Thanks !

Wade Mealing
Red Hat Product Security

Resources:
https://bugzilla.redhat.com/show_bug.cgi?id=1297389
https://patchwork.ozlabs.org/patch/522412/

Patch commit notes (net-next.git):
[1] https://kernel.googlesource.com/pub/scm/linux/kernel/git/horms/ipvs/+/635682a14427d241bab7bbdeebb48a7d7b91638e
