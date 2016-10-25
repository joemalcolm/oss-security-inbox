X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["922" "Tuesday" "25" "October" "2016" "17:51:11" "+0200" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20161025175111.75784zabcvhv5ig4@webmail.alunos.dcc.fc.up.pt>" "30" "Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape" nil nil nil "10" "2016102515:51:11" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" (number mark "U       up201407890@ Oct 25   30/922   " thread-indent "\"Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape\"\n") "<1477380542.4640.11.camel@debian.org>" ("<20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>" "<1477380542.4640.11.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21935 invoked by uid 550); 25 Oct 2016 17:57:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29718 invoked from network); 25 Oct 2016 15:51:28 -0000
Message-ID: <20161025175111.75784zabcvhv5ig4@webmail.alunos.dcc.fc.up.pt>
Date: Tue, 25 Oct 2016 17:51:11 +0200
From: up201407890@alunos.dcc.fc.up.pt
To: "Yves-Alexis Perez" <corsac@debian.org>
Cc: oss-security@lists.openwall.com, netblue30 <netblue30@yahoo.com>,
	team@security.debian.org, cve-assign@mitre.org
References: <20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>
	<1477380542.4640.11.camel@debian.org>
In-Reply-To: <1477380542.4640.11.camel@debian.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=UTF-8;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape

Quoting "Yves-Alexis Perez" <corsac@debian.org>:

> On Sun, 2016-09-25 at 13:49 +0200, up201407890@alunos.dcc.fc.up.pt wrote:
>> When executing a program via the SELinux sandbox, the nonpriv session
>> can escape to the parent session by using the TIOCSTI ioctl to push
>> characters into the terminal's input buffer, allowing an attacker to
>> escape the sandbox.
>
> Hi,
>
> it seems that firejail was affected by the same vulnerability, which  
> was fixed
> in 0.9.44 with  
> https://github.com/netblue30/firejail/commit/46dc2b34f1fbbc4597
> b4ff9f6a3cb28b2d500d1b
>
> The commit log reuses the CVE-2016-7545 number, but I guess a new one should
> be assigned since they don't share the same codebase?
>
> Regards,
> --
> Yves-Alexis Perez - Debian Security

Think so, CC'ing mitre.


----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.


