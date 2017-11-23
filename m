X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["608" "Thursday" "23" "November" "2017" "15:00:23" "-0500" "=?utf-8?B?QW50b2luZSBCZWF1cHLDqQ==?=" "anarcat@orangeseeds.org" "<87ine0u5ns.fsf@curie.anarc.at>" "19" "[oss-security] Re: exiv2: multiple memory safety issues" nil nil nil "11" "2017112320:00:23" "[oss-security] Re: exiv2: multiple memory safety issues" (number mark "U       anarcat@oran Nov 23   19/608   " thread-indent "\"[oss-security] Re: exiv2: multiple memory safety issues\"\n") "<20171123095313.ecfh63vqfwwmbzjp@home.ouaza.com>" ("<20170630103434.7d6093c9@pc1>" "<20171123095313.ecfh63vqfwwmbzjp@home.ouaza.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3776 invoked by uid 550); 23 Nov 2017 20:19:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26592 invoked from network); 23 Nov 2017 20:00:51 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: =?utf-8?Q?Antoine_Beaupr=C3=A9?= <anarcat@orangeseeds.org>
Date: Thu, 23 Nov 2017 15:00:23 -0500
Message-ID: <87ine0u5ns.fsf@curie.anarc.at>
References: <20170630103434.7d6093c9@pc1>
	<20171123095313.ecfh63vqfwwmbzjp@home.ouaza.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.1 (gnu/linux)
Cancel-Lock: sha1:uK06OH51ITmQ588WtqClN2hrAjI=
Subject: [oss-security] Re: exiv2: multiple memory safety issues

On 2017-11-23 10:53:13, Raphael Hertzog wrote:
> So please file bugs on github, thank you.

I read this thread thinking this was still from June, so I thought I
would just go ahead and report this upstream already:

https://github.com/Exiv2/exiv2/issues/174

I should also mention that I haven't been able to reproduce with
valgrind, in Debian Wheezy, which uses exiv 0.23. I wasn't able to
compile exiv2 with ASAN there either, so that could be why I can't
reproduce.

A.

-- 
Le pouvoir n'est pas à conquérir, il est à détruire
                        - Jean-François Brient, de la servitude moderne

