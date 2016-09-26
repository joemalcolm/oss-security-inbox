X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["357" "Monday" "26" "September" "2016" "17:59:57" "+0100" "John Haxby" "john.haxby@oracle.com" "<ca1aba26-a8e0-57b4-7bd7-7ff1bf26ceb6@oracle.com>" "9" "Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape" "^Date:" nil nil "9" "2016092616:59:57" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" (number mark "        john.haxby@o Sep 26    9/357   " thread-indent "\"Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape\"\n") "<20160926165409.ekk6dztdpttnnf67@jwilk.net>" ("<20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>" "<20160926165409.ekk6dztdpttnnf67@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26315 invoked by uid 550); 26 Sep 2016 17:00:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26293 invoked from network); 26 Sep 2016 17:00:12 -0000
References: <20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>
 <20160926165409.ekk6dztdpttnnf67@jwilk.net>
Message-ID: <ca1aba26-a8e0-57b4-7bd7-7ff1bf26ceb6@oracle.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20160926165409.ekk6dztdpttnnf67@jwilk.net>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Source-IP: aserv0022.oracle.com [141.146.126.234]
Date: Mon, 26 Sep 2016 17:59:57 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape
To: oss-security@lists.openwall.com

On 26/09/16 17:54, Jakub Wilk wrote:
> Are there any use cases for TIOCSTI other than producing exploits?

Yes.  Admitedly a long time ago, but I used to use it to run commands in
a nominated shell (window).   In some ways it was a pre-cursor to what
now tends to be done by dbus, but TIOCSTI does occasionally have uses
other than producing exploits.

jch
