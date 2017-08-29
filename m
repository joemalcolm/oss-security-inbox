X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["646" "Tuesday" "29" "August" "2017" "22:15:17" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1708292212520.5828@wniryva>" "23" "[oss-security] CVE-2017-13711 Qemu: Slirp: use-after-free when sending response" nil nil nil "8" "2017082916:45:17" "[oss-security] CVE-2017-13711 Qemu: Slirp: use-after-free when sending response" (number mark "U       ppandit@redh Aug 29   23/646   " thread-indent "\"[oss-security] CVE-2017-13711 Qemu: Slirp: use-after-free when sending response\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6007 invoked by uid 550); 29 Aug 2017 16:45:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5949 invoked from network); 29 Aug 2017 16:45:40 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com B35805F7B1
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
Date: Tue, 29 Aug 2017 22:15:17 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: wjjzhang <wjjzhang@tencent.com>
Message-ID: <nycvar.YSQ.7.76.1708292212520.5828@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Tue, 29 Aug 2017 16:45:28 +0000 (UTC)
Subject: [oss-security] CVE-2017-13711 Qemu: Slirp: use-after-free when sending response

    Hello,

Quick emulator(Qemu) built with the Slirp networking support is vulnerable to 
an use-after-free issue. It occurs due to Socket referenced from multiple 
packets is freed while responding to a message.

A user/process could use this flaw to crash the Qemu process on the host 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-08/msg05201.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1486400

This issue was reported by Wjjzhang.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
