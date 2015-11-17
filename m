X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1309" "Tuesday" "17" "November" "2015" "13:57:19" "-0500" "Josh Bressers" "bressers@redhat.com" "<365956254.15394397.1447786639162.JavaMail.zimbra@redhat.com>" "32" "Re: [oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111718:57:19" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       bressers@red Nov 17   32/1309  " thread-indent "\"Re: [oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<564B7757.6080100@gmail.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<564B6536.2030908@redhat.com>" "<564B7757.6080100@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1389 invoked by uid 550); 17 Nov 2015 18:57:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1371 invoked from network); 17 Nov 2015 18:57:31 -0000
Date: Tue, 17 Nov 2015 13:57:19 -0500 (EST)
From: Josh Bressers <bressers@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <365956254.15394397.1447786639162.JavaMail.zimbra@redhat.com>
In-Reply-To: <564B7757.6080100@gmail.com>
References: <20151117153951.GA28672@openwall.com> <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com> <564B6536.2030908@redhat.com> <564B7757.6080100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.10.116.22]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF41 (Linux)/8.0.6_GA_5922)
Thread-Topic: x86 ROP mitigation
Thread-Index: hfd3OsqCpgjj1ZNBDlVaahNXhN34/g==
Subject: Re: [oss-security] Re: Fwd: x86 ROP mitigation



----- Original Message -----
> Is that really the right approach vs. preventing hijacking of flow
> control via return pointers and function pointers? It doesn't really
> seem like there's an end game in mind where it actually prevents ROP
> rather than just removing many useful gadgets. Making useful ROP gadgets
> harder to find doesn't mean much, since tools are used to find them and
> the tools can be improved if it becomes necessary.
> 
> i.e. why not just go with something like PaX's RAP
> 
> (things like CPI/SafeStack could work too, but SafeStack requires
> hardware support that's not available on x86_64 and ARM yet)
> 
> Preventing ROP by preventing hijacking of flow control in the first
> place isn't as good as outright preventing memory corruption (i.e. the
> bugs are still exploitable in many cases) but at least it wipes out a
> form of exploitation entirely and forces techniques that are not always
> going to accomplish everything that's desired. Chipping away at gadgets
> doesn't do that unless they're entirely gone, and it's hard to see how
> that could happen without higher performance costs than simply doing
> full memory safety (not like ASAN, but rather with GC).
> 
> 

Why not both?

Security is about layers, this is a nice place for a new security layer.

-- 
    JB
