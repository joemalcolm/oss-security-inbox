X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["687" "Tuesday" "18" "December" "2018" "16:44:07" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1812181620570.9216@xnncv>" "16" "[oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array" nil nil nil "12" "2018121811:14:07" "[oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array" (number mark "U       ppandit@redh Dec 18   16/687   " thread-indent "\"[oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array\"\n") "<CAF2z-PPRVy+4CQkJ=Abm6__D0f3vTjGXcPH6OG0OiF-iBn0HAg@mail.gmail.com>" ("<nycvar.YSQ.7.76.1812181420590.5773@xnncv>" "<CAF2z-PPRVy+4CQkJ=Abm6__D0f3vTjGXcPH6OG0OiF-iBn0HAg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7896 invoked by uid 550); 18 Dec 2018 11:14:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7819 invoked from network); 18 Dec 2018 11:14:24 -0000
Date: Tue, 18 Dec 2018 16:44:07 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: saar amar <saaramar5@gmail.com>
cc: oss security list <oss-security@lists.openwall.com>
In-Reply-To: <CAF2z-PPRVy+4CQkJ=Abm6__D0f3vTjGXcPH6OG0OiF-iBn0HAg@mail.gmail.com>
Message-ID: <nycvar.YSQ.7.76.1812181620570.9216@xnncv>
References: <nycvar.YSQ.7.76.1812181420590.5773@xnncv> <CAF2z-PPRVy+4CQkJ=Abm6__D0f3vTjGXcPH6OG0OiF-iBn0HAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Tue, 18 Dec 2018 11:14:12 +0000 (UTC)
Subject: [oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather
 array

+-- On Tue, 18 Dec 2018, saar amar wrote --+
| I'm wondering why it says "DOS" and not "execute arbitrary code on the host, 
| in the context of the QEMU process"? I have stack overflow, it pretty clear 
| I could gain more than simple DOS:)
| 
| What do your day?

IIUC, it's likely to corrupt adjacent stack variables and/or hit stack canary 
resulting in DoS. The scatter/gather entry object(struct ibv_sge) holds buffer 
address/length attributes used during r/w operations. If their values are 
astray, the following call to ibv_post_send() may suffer/return an error.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
