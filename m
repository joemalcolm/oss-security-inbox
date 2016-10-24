X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["609" "Tuesday" "25" "October" "2016" "01:05:59" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610250103070.21966@wniryva>" "16" "Re: [oss-security] Re: CVE request Qemu: net: rtl8139: infinite loop while transmit in C+ mode" nil nil nil "10" "2016102419:35:59" "[oss-security] Re: CVE request Qemu: net: rtl8139: infinite loop while transmit in C+ mode" (number mark "U       ppandit@redh Oct 25   16/609   " thread-indent "\"Re: [oss-security] Re: CVE request Qemu: net: rtl8139: infinite loop while transmit in C+ mode\"\n") "<20161024151612.199576C560A@smtpvmsrv1.mitre.org>" ("<20161024151612.199576C560A@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19586 invoked by uid 550); 24 Oct 2016 19:36:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19566 invoked from network); 24 Oct 2016 19:36:17 -0000
Date: Tue, 25 Oct 2016 01:05:59 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: cve-assign@mitre.org, hendersa@icculus.org
In-Reply-To: <20161024151612.199576C560A@smtpvmsrv1.mitre.org>
Message-ID: <alpine.LFD.2.20.1610250103070.21966@wniryva>
References: <20161024151612.199576C560A@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 24 Oct 2016 19:36:05 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE request Qemu: net: rtl8139: infinite loop
 while transmit in C+ mode

+-- On Mon, 24 Oct 2016, cve-assign@mitre.org wrote --+
| > https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg05495.html
| >>
| >> RTL8139 ethernet controller in C+ mode supports multiple
| >> descriptor rings, each with maximum of 64 descriptors. While
| >> processing transmit descriptor ring in 'rtl8139_cplus_transmit',
| >> it does not limit the descriptor count and runs forever.
| 
| Use CVE-2016-8910.

This issue was reported by Mr Andrew Henderson of Intelligent Automation Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
