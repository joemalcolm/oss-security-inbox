X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1057" "Monday" "22" "October" "2018" "23:16:00" "+0200" "Florian Weimer" "fweimer@redhat.com" "<87zhv5znqn.fsf@oldenburg.str.redhat.com>" "23" "Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" "^Cc:" nil nil "10" "2018102221:16:00" "[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" (number mark "        fweimer@redh Oct 22   23/1057  " thread-indent "\"Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions\"\n") "<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>" ("<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26098 invoked by uid 550); 22 Oct 2018 21:16:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26076 invoked from network); 22 Oct 2018 21:16:15 -0000
References: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
In-Reply-To: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
	(Andrew Sandoval's message of "Mon, 22 Oct 2018 15:07:55 +0000")
Message-ID: <87zhv5znqn.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]); Mon, 22 Oct 2018 21:16:03 +0000 (UTC)
Cc: "oss-security\@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 22 Oct 2018 23:16:00 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions
To: Andrew Sandoval <ASandoval@webroot.com>

* Andrew Sandoval:

> Will Webroot communicate this to the public?
> Webroot believes in responsible disclosure and will work with third parties to
> ensure that the vulnerability is addressed before a public announcement. We
> are happy to work with your communications team on announcement timing.

This is already public because oss-security is a public mailing list.

Most GNU/Linux distributions ensure that only very special binaries
(such as some versions of the Ada compiler) enable executable stacks.
In our experience, if the toolchain produces a binary that requests an
executable stack, it is more likely due to manually written assembler
files without the required stack executability markup section, and not
due to nested C functions whose address escapes.  Without scanning built
binaries for these discrepancies, such cases could easily be missed.

Please also note that an executable stack is not a vulnerability itself,
and it is not directly exploitable.  (The same applies to the lack of
Intel CET support in binaries.)

Thanks,
Florian
