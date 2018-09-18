X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1723" "Tuesday" "18" "September" "2018" "06:02:29" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<854523480.13779866.1537264949483.JavaMail.zimbra@redhat.com>" "47" "[oss-security] CVE-2018-14641: Linux kernel: a security flaw in the ip_frag_reasm()" nil nil nil "9" "2018091810:02:29" "[oss-security] CVE-2018-14641: Linux kernel: a security flaw in the ip_frag_reasm()" (number mark "U       vdronov@redh Sep 18   47/1723  " thread-indent "\"[oss-security] CVE-2018-14641: Linux kernel: a security flaw in the ip_frag_reasm()\"\n") "<1611689179.13779645.1537264819495.JavaMail.zimbra@redhat.com>" ("<1611689179.13779645.1537264819495.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22346 invoked by uid 550); 18 Sep 2018 10:02:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22325 invoked from network); 18 Sep 2018 10:02:41 -0000
Date: Tue, 18 Sep 2018 06:02:29 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <854523480.13779866.1537264949483.JavaMail.zimbra@redhat.com>
In-Reply-To: <1611689179.13779645.1537264819495.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.5.28, 10.4.195.5]
Thread-Topic: CVE-2018-14641: Linux kernel: a security flaw in the ip_frag_reasm()
Thread-Index: 2GUTITmdmskaxFln4ZOVC6yLMq+rCQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Tue, 18 Sep 2018 10:02:29 +0000 (UTC)
Subject: [oss-security] CVE-2018-14641: Linux kernel: a security flaw in the
 ip_frag_reasm()

Heololo,

A security flaw was found in the ip_frag_reasm() function in
net/ipv4/ip_fragment.c in the Linux kernel which can cause a later system crash
in ip_do_fragment(). With certain non-default but non-rare configuration of
a victim host an attacker can trigger this crash remotely, thus leading to a
remote denial-of-service.

The CVE-ID CVE-2018-14641 was assigned to this flaw and we would suggest to use
it in the public communications.

Reference: https://bugzilla.redhat.com/show_bug.cgi?id=1629636

The flaw was introduced in:

$ git tag --contain fa0f527358bd
v4.19-rc1

and fixed in:

$ git tag --contain 5d407b071dc3
v4.19-rc4

The fix is the upstream commit 5d407b071dc3 ("ip: frags: fix crash in
ip_do_fragment()") and it is fixing fa0f527358bd ("ip: use rb trees for IP frag
queue."). Namely, the following part of fa0f527358bd which unions sk and
ip_defrag_offset fields of struct sk_buff has introduced the vulnerability:

+++ b/include/linux/skbuff.h
@@ -676,13 +676,16 @@ struct sk_buff {
+
+       union {
+               struct sock             *sk;
+               int                     ip_defrag_offset;
+       };

Distributions which has backported this part of fa0f527358bd (which in turn is
a part of the fix of the CVE-2018-5391/FragmentSmack) are vulnerable.

For the remote attack masquerading and forwarding should be configured on a
victim host. Then an attacker can ping an external host from inside a
masqueraded zone, so that the malicious ping is masqueraded and forwarded by a
victim host. This is not default but (we believe) not rare configuration, so
for example, a VM hosting provider could be vulnerable.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
