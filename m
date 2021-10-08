X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2187" "Friday" "8" "October" "2021" "23:08:21" "+0200" "Solar Designer" "solar@openwall.com" nil "54" "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil "10" nil nil (number mark "U       solar@openwa Oct  8   54/2187  " thread-indent "\"Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11578 invoked by uid 550); 8 Oct 2021 21:08:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11487 invoked from network); 8 Oct 2021 21:08:29 -0000
Date: Fri, 8 Oct 2021 23:08:21 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20211008210821.GA2660@openwall.com>
References: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org> <0d7be57c-87ae-c4aa-7207-2337c1a51c6d@rs-labs.com> <CAKQ1sVMn=09uimvWxVZrrVRGSDk5HLCB0TQViFJp1WFNG7jvWg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-2
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKQ1sVMn=09uimvWxVZrrVRGSDk5HLCB0TQViFJp1WFNG7jvWg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)

On Fri, Oct 08, 2021 at 08:37:33PM +0200, Yann Ylavic wrote:
> On Fri, Oct 8, 2021 at 8:53 AM Roman Medina-Heigl Hernandez
> <roman@rs-labs.com> wrote:
> >
> > I posted RCE exploit for this (it works for both CVEs: 41773 & 42013)
> > and some other details regarding requirements / exploitability, which
> > you may find useful at:
> >
> > https://twitter.com/roman_soft/status/1446252280597078024
> 
> Thanks, that's fair analysis.

Yann is probably referring to the full tweet thread by Roman, not just
the one tweet that Roman posted in here.  Let me correct that:

---
Román Medina-Heigl Hernández
@roman_soft

RCE exploit both for Apache 2.4.49 (CVE-2021-41773) and 2.4.50 (CVE-2021-42013):
root@CT406:~# curl 'http://192.168.0.191/cgi-bin/.%%32%65/.%%32%65/.%%32%65/.%%32%65/.%%32%65/bin/sh' --data 'echo Content-Type: text/plain; echo; id'
uid=1(daemon) gid=1(daemon) groups=1(daemon)

Requirements: 1/ mod_cgi enabled (not default but easy) AND 2/ target
binary should be +x (default for /bin/sh) AND 3/ apache permissions
granted for /bin or / (not default and difficult/unrealistic)

So IMHO only "special" setups will be vulnerable to this RCE. Same
happens for the "arbitrary file read" exploits you have seen in last few
days because all of them need requirement #3

Both CVEs are indeed almost the same path-traversal vulnerability (2nd
one is the uncomplete fix for 1st one).

Path traversal only work from a mapped URI (e.g. via "Alias" or
"ScriptAlias" Apache directives). DocumentRoot only is not sufficient.

"/cgi-bin/" is mapped by default (ScriptAlias) so that's why it's being
used before the path traversal string. Besides, ScriptAlias marks as
Exec (for Apache) all the contents for the given directory (regardless
the file extensions).

So (if mod_cgi is enabled) Apache will run our target
(cgi-bin/../../../../../bin/sh) instead of just reading it.

Perhaps the more realistic (ab)use-case for this vuln could be leaking
CGI sources on a cgi-enabled web-server. But you'd need to find a
non-executable mapped URI (via Alias) and then craft a payload similar
to: aliaseddir/../../../../../usr/local/apache2/cgi-bin/cgitobeleaked

End of fun :-)
---

Alexander
