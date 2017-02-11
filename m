X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2349" "Saturday" "11" "February" "2017" "18:46:43" "+0100" "pali@cpan.org" "pali@cpan.org" "<201702111846.47434@pali>" "51" "Re: [oss-security] Re: Use after free in libmysqlclient.so" nil nil nil "2" "2017021117:46:43" "[oss-security] Re: Use after free in libmysqlclient.so" (number mark "U       pali@cpan.or Feb 11   51/2349  " thread-indent "\"Re: [oss-security] Re: Use after free in libmysqlclient.so\"\n") "<201702111846.24604@pali>" ("<201702111846.24604@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7517 invoked by uid 550); 11 Feb 2017 18:07:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25872 invoked from network); 11 Feb 2017 17:47:17 -0000
X-Envelope-From: pali@cpan.org
From: pali@cpan.org
To: oss-security@lists.openwall.com
Date: Sat, 11 Feb 2017 18:46:43 +0100
User-Agent: KMail/1.13.7 (Linux/3.13.0-108-generic; KDE/4.14.2; x86_64; ; )
Cc: Solar Designer <solar@openwall.com>, Simon McVittie <smcv@debian.org>
References: <201702111846.24604@pali>
In-Reply-To: <201702111846.24604@pali>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201702111846.47434@pali>
Subject: Re: [oss-security] Re: Use after free in libmysqlclient.so

On Friday 10 February 2017 17:39:45 Solar Designer wrote:
> As far as I can tell, pali@cpan.org is not subscribed.

No, I'm not. I hope it is not a requirement.

> ----- Forwarded message from Simon McVittie <smcv@debian.org> -----
> 
> Mailing-List: contact oss-security-help@lists.openwall.com; run by
> ezmlm Reply-To: oss-security@lists.openwall.com
> Date: Fri, 10 Feb 2017 16:20:58 +0000
> From: Simon McVittie <smcv@debian.org>
> To: oss-security@lists.openwall.com
> Subject: Re: [oss-security] Re: Use after free in libmysqlclient.so
> 
> On Fri, 10 Feb 2017 at 11:59:59 +0100, pali@cpan.org wrote:
> > On Friday 27 January 2017 23:53:29 pali@cpan.org wrote:
> > > C client library for MySQL (libmysqlclient.so) has use-after-free
> > > defect which can cause crash of applications using that MySQL
> > > client.
> 
> Is this a security vulnerability, or just a bug?

It is bug for sure and I think it is security vulnerability.

> How would an attacker cause this to happen in the application
> that they wish to target?

First, it needs that target application does not manually free 
structures for prepared statement and let this for mysql_close() (also 
applicable for languages where is order of executing destructors not 
defined or could not be predicable). Triggering this bug is possible if 
there stay allocated structure for at least one statement which is 
initialized, but not prepared on server yet. MySQL server has upper 
limit for prepared statements. So if attacker can hit this limit (e.g. 
when target application can be triggered to prepare lot of statements on 
server) and target application start closing connection to MySQL server 
then use-after-free happen in target application and it can crash. If 
attacker is able to repeat this procedure then target application is 
under denial-of-service attack. Or triggering this bug is also possible 
when connection with MySQL server is lost after preparing statement. If 
attacker is able to let target application to prepare some statement and 
after that execute another which will cause lost connection (e.g. some 
large/slow computation) then target application try to reconnect (close 
+ open) and bug is triggered.

Probably easier for attacker would be to combine this defect with 
another application specific.

>     S
> 
> ----- End forwarded message -----
