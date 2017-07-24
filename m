X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1635" "Monday" "24" "July" "2017" "09:53:39" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<2085299843.33841899.1500904419181.JavaMail.zimbra@redhat.com>" "38" "[oss-security] CVE-2017-7541: Linux kernel: Memory corruption due to a buffer overflow in brcmf_cfg80211_mgmt_tx()" "^Date:" nil nil "7" "2017072413:53:39" "[oss-security] CVE-2017-7541: Linux kernel: Memory corruption due to a buffer overflow in brcmf_cfg80211_mgmt_tx()" (number mark "        vdronov@redh Jul 24   38/1635  " thread-indent "\"[oss-security] CVE-2017-7541: Linux kernel: Memory corruption due to a buffer overflow in brcmf_cfg80211_mgmt_tx()\"\n") "<536644882.33835500.1500903254025.JavaMail.zimbra@redhat.com>" ("<536644882.33835500.1500903254025.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7557 invoked by uid 550); 24 Jul 2017 13:53:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7533 invoked from network); 24 Jul 2017 13:53:51 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com A858DC056828
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=vdronov@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com A858DC056828
Message-ID: <2085299843.33841899.1500904419181.JavaMail.zimbra@redhat.com>
In-Reply-To: <536644882.33835500.1500903254025.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.197, 10.4.195.6]
Thread-Topic: CVE-2017-7541: Linux kernel: Memory corruption due to a buffer overflow in brcmf_cfg80211_mgmt_tx()
Thread-Index: KP+iQlmdar1ck8rFvOQ+oONg+FkOXQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 24 Jul 2017 13:53:39 +0000 (UTC)
Date: Mon, 24 Jul 2017 09:53:39 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-7541: Linux kernel: Memory corruption due to a buffer
 overflow in brcmf_cfg80211_mgmt_tx()
To: oss-security@lists.openwall.com

Hello,

Kernel memory corruption due to a buffer overflow was found in brcmf_cfg80211_mgmt_tx()
function in Linux kernels from v3.9-rc1 to v4.13-rc1. It can be triggered by sending
crafted NL80211_CMD_FRAME packet via netlink.

There was a research if this flaw could be triggered remotely, by sending packets on
the air, the result follows:

RX notification is regarding event send to a userspace program, which is
usually the "wpa_supplicant" or "hostapd". The userspace can register
in kernel via NL80211_CMD_REGISTER_FRAME to pass management frames to it.
This flaw would be remote exploitable if a userspace program registers to
receive some management frames and then pass it back to a kernel without
a modification. I'm not sure if any user space program do that, I think
"hostapd" or "wpa_supplicant" don't, but to be sure, it will require to
fully analyze theirs source code.
(Stanislaw Gruszka <sgruszka@redhat.com>)

So, this flaw is unlikely to be triggered remotely, as certain userspace code is needed
for this. An unprivileged local user could use this flaw to induce kernel memory corruption
on the system, leading to a crash. Due to the nature of the flaw, privilege escalation
cannot be fully ruled out, although we believe it is unlikely.

cvss3=6.8/CVSS:3.0/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:H
cwe=CWE-120

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1473198

https://bugzilla.novell.com/show_bug.cgi?id=1049645

https://www.spinics.net/lists/stable/msg180994.html

Upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8f44c9a41386729fea410e688959ddaa9d51be7c
