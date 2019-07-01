X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["997" "Monday" "1" "July" "2019" "15:08:37" "+0200" "Adrien Nader" "adrien@notk.org" "<20190701130837.GA18993@notk.org>" "23" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "7" "2019070113:08:37" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        adrien@notk. Jul  1   23/997   " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19667 invoked by uid 550); 1 Jul 2019 13:17:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11584 invoked from network); 1 Jul 2019 13:08:48 -0000
Message-ID: <20190701130837.GA18993@notk.org>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de>
 <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 1 Jul 2019 15:08:37 +0200
From: Adrien Nader <adrien@notk.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

Hello,

On Mon, Jun 24, 2019, Stuart D. Gathman wrote:
> Question: is fuzzing useful for languages like Java/python?  Obviously,
> you eventually reach a native code module in both cases, but fuzzing
> the entire virtual machine is cumbersome.  Maybe native code
> libraries
> for "safe" languages should include fuzzing as part of testing.

AFL is used in the OCaml world despite it being clearly a "safe"
language. There's a git repo with a couple examples and there are more
in the wild: https://github.com/NathanReb/ocaml-afl-examples .

OCaml guarantees that you don't have undefined behaviour but there's
nothing that prevents you from doing a typo in a string value, using
multiplication instead of addition, not catching an exception you wanted
to catch or as others have said, use more memory than expected. These
are basically logic errors and very few languages guarantee that you'll
avoid them (static typing helps in more than 90% of cases but less than
99.999% of them).

-- 
Adrien
