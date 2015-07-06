X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1198" "Monday" "6" "July" "2015" "14:09:29" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150706140929.1cb0a15e@redhat.com>" "32" "Re: [oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" nil nil nil "7" "2015070612:09:29" "[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" (number mark "        scorneli@red Jul  6   32/1198  " thread-indent "\"Re: [oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g\"\n") "<31180074aa4d9a45cb280df235f70a80@lqt.it>" ("<CABfY0L1Y2CYFQ-Hd-kohtzLKDy9aFFKmQM_drwsiR3MpEZ+KJA@mail.gmail.com>" "<20150327234801.AB6AC6C003B@smtpvmsrv1.mitre.org>" "<20150706124945.3b70a6fa@redhat.com>" "<31180074aa4d9a45cb280df235f70a80@lqt.it>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18424 invoked by uid 550); 6 Jul 2015 12:09:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18404 invoked from network); 6 Jul 2015 12:09:48 -0000
Message-ID: <20150706140929.1cb0a15e@redhat.com>
In-Reply-To: <31180074aa4d9a45cb280df235f70a80@lqt.it>
References: <CABfY0L1Y2CYFQ-Hd-kohtzLKDy9aFFKmQM_drwsiR3MpEZ+KJA@mail.gmail.com>
	<20150327234801.AB6AC6C003B@smtpvmsrv1.mitre.org>
	<20150706124945.3b70a6fa@redhat.com>
	<31180074aa4d9a45cb280df235f70a80@lqt.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Cc: <cve-assign@mitre.org>, <jodie.cunningham@gmail.com>,
        <oss-security@lists.openwall.com>
Date: Mon, 6 Jul 2015 14:09:29 +0200
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Multiple vulnerabilities in
 freexl 1.0.0g
To: a.furieri@lqt.it

On Mon, 06 Jul 2015 13:16:00 +0200
a.furieri@lqt.it wrote:

> On Mon, 6 Jul 2015 12:49:45 +0200, Stefan Cornelius wrote:
> >
> 
> Hi Stefan,
> 
> if I understand well your tests are based on the obsolete FreeXL
> 1.0.0g that is not the most recent version available.
> 
> version 1.0.1 was released on 2015-03-22, and is exactly intended to
> fix several critcal bugs dentified by American Fuzzy Lop when parsing
> purposely malformed input files.

Yes, that's correct, the analysis of the first part of my last email is
based on 1.0.0g. That was intentional, as I've tried to provide
additional information to this old vulnerability so that a CVE may be
assigned.
 
> it could be surely usefull to learn if after switching to the more
> recent version you still continue to confirm your issues.
> and if the answer is eventually yes, sensing a copy of the input
> files causing malfunctions will surely help to debug the code.

The integer overflow, a new vulnerability described in the second part
of my last email, still affects the latest version. I'll provide you
with a reproducer in a private email within the next couple of minutes.

Thanks,
-- 
Stefan Cornelius / Red Hat Product Security
