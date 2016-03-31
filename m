X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1668" "Thursday" "31" "March" "2016" "17:03:08" "-0400" "Steve Grubb" "sgrubb@redhat.com" "<1763062.ChaLcRdSCz@x2>" "38" "Re: [oss-security] Re: Partial SMAP bypass on 64-bit Linux kernels" nil nil nil "3" "2016033121:03:08" "[oss-security] Re: Partial SMAP bypass on 64-bit Linux kernels" (number mark "U       sgrubb@redha Mar 31   38/1668  " thread-indent "\"Re: [oss-security] Re: Partial SMAP bypass on 64-bit Linux kernels\"\n") "<20160331203125.94DE28BC0A1@smtpvmsrv1.mitre.org>" ("<20160331203125.94DE28BC0A1@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9349 invoked by uid 550); 31 Mar 2016 21:03:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9315 invoked from network); 31 Mar 2016 21:03:30 -0000
From: Steve Grubb <sgrubb@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Thu, 31 Mar 2016 17:03:08 -0400
Message-ID: <1763062.ChaLcRdSCz@x2>
Organization: Red Hat
User-Agent: KMail/4.14.10 (Linux/4.4.6-300.fc23.x86_64; KDE/4.14.18; x86_64; ; )
In-Reply-To: <20160331203125.94DE28BC0A1@smtpvmsrv1.mitre.org>
References: <20160331203125.94DE28BC0A1@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: Re: [oss-security] Re: Partial SMAP bypass on 64-bit Linux kernels

On Thursday, March 31, 2016 04:31:25 PM cve-assign@mitre.org wrote:
> > https://git.kernel.org/cgit/linux/kernel/git/tip/tip.git/commit/?h=x86/urg
> > ent&id=3d44d51bd339766f0178f0cf2e8d048b4a4872aa
> > 
> > That patch fixes a bug that exposed a fairly large kernel code surface
> > to a straightforward SMAP bypass.
> > 
> >> From: Salvatore Bonaccorso <carnil@debian.org>
> >> Date: Tue, 29 Mar 2016 17:00:03 +0200
> >> 
> >> @MITRE CVE assignment team: Would it make sense to have a CVE id
> >> assigned for this issue for better trackability?
> 
> We're going to approach this one in the same way as the issue that was
> later assigned CVE-2016-2847.
> 
> Specifically, is there anyone who believes
> 3d44d51bd339766f0178f0cf2e8d048b4a4872aa must not have a CVE ID?
> 
> The situation, very roughly, seems to be that the upstream vendor has
> announced that the behavior is a bug. CLAC occurs at a correct place
> for some types of entries, but accidentally did not occur at a correct
> place in the case of entries through the int80 gate. Consequently,
> exploits of kernel vulnerabilities can cause more damage in some
> cases.
> 
> However, it seems to be a bug in how the kernel responds to a
> post-exploitation attack pattern. This is not a topic area that
> commonly has CVE ID assignments. Access by the kernel to a user space
> page is not an action that "crosses a privilege boundary" in a
> traditional sense.

What if an unprivileged application triggered a NULL pointer dereference that 
was supposed to be accessing a data structure in the kernel for a policy 
decision but instead used an attacker controlled structure mapped at address 
0?

-Steve
