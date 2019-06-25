X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["495" "Tuesday" "25" "June" "2019" "16:34:38" "+0200" "Florian Weimer" "fweimer@redhat.com" "<87a7e5zqbl.fsf@oldenburg2.str.redhat.com>" "15" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Cc:" nil nil "6" "2019062514:34:38" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        fweimer@redh Jun 25   15/495   " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1969 invoked by uid 550); 25 Jun 2019 14:34:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1923 invoked from network); 25 Jun 2019 14:34:57 -0000
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
	<20190617113203.GH15432@suse.de>
	<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
	<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
	<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
In-Reply-To: <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org> (Stuart
	D. Gathman's message of "Mon, 24 Jun 2019 11:59:43 -0400 (EDT)")
Message-ID: <87a7e5zqbl.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Tue, 25 Jun 2019 14:34:40 +0000 (UTC)
Cc: oss-security@lists.openwall.com
Date: Tue, 25 Jun 2019 16:34:38 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: "Stuart D. Gathman" <stuart@gathman.org>

* Stuart D. Gathman:

> Question: is fuzzing useful for languages like Java/python?

Fuzzing is used to show that a function is partial, when it is expected
to be total.  That can be useful with any language which has partial
functions.

If anything, it should be easier with Java and Python because these
languages have many more language-defined checks causing abnormal
function termination, while with C code, you have to inject such checks
with complicated instrumentation.

Thanks,
Florian
