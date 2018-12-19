X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["497" "Wednesday" "19" "December" "2018" "10:55:55" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1812191033330.13086@xnncv>" "14" "Re: [oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free in posted interrupt processing" nil nil nil "12" "2018121905:25:55" "[oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free in posted interrupt processing" (number mark "U       ppandit@redh Dec 19   14/497   " thread-indent "\"Re: [oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free in posted interrupt processing\"\n") "<CAFRnB2W1ggmiuz=3x3mrDBbkp2rQKWkAQUcuObmLM=xwv1Q-fQ@mail.gmail.com>" ("<nycvar.YSQ.7.76.1812190041530.7329@xnncv>" "<CAFRnB2W1ggmiuz=3x3mrDBbkp2rQKWkAQUcuObmLM=xwv1Q-fQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17585 invoked by uid 550); 19 Dec 2018 05:26:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17553 invoked from network); 19 Dec 2018 05:26:11 -0000
Date: Wed, 19 Dec 2018 10:55:55 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Cfir Cohen <cfir@google.com>, Alex Gaynor <alex.gaynor@gmail.com>
In-Reply-To: <CAFRnB2W1ggmiuz=3x3mrDBbkp2rQKWkAQUcuObmLM=xwv1Q-fQ@mail.gmail.com>
Message-ID: <nycvar.YSQ.7.76.1812191033330.13086@xnncv>
References: <nycvar.YSQ.7.76.1812190041530.7329@xnncv> <CAFRnB2W1ggmiuz=3x3mrDBbkp2rQKWkAQUcuObmLM=xwv1Q-fQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 19 Dec 2018 05:25:59 +0000 (UTC)
Subject: Re: [oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free
 in posted interrupt processing

  Hello Alex,

+-- On Tue, 18 Dec 2018, Alex Gaynor wrote --+
| Can you say more about why this is only a DoS? The commit message sounds (to 
| someone with little domain expertise in KVM) like a fairly traditional 
| pattern for an exploitable for code exec uaf.

That's right, it does have potential for more misuse, though it may not be as 
easy. I missed to mention that earlier.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
