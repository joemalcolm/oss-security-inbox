X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["712" "Friday" "20" "March" "2015" "23:46:29" "+0100" "Moritz Muehlenhoff" "jmm@debian.org" "<20150320224629.GA26321@pisco.westfalen.local>" "21" "Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" nil nil nil "3" "2015032022:46:29" "[oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" (number mark "        jmm@debian.o Mar 20   21/712   " thread-indent "\"Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()\"\n") "<550C769F.5010801@truel.it>" ("<550C769F.5010801@truel.it>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13597 invoked by uid 550); 20 Mar 2015 22:46:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13579 invoked from network); 20 Mar 2015 22:46:42 -0000
Message-ID: <20150320224629.GA26321@pisco.westfalen.local>
References: <550C769F.5010801@truel.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <550C769F.5010801@truel.it>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 77.21.143.147
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Cc: kaplanlior@gmail.com, security@php.net
Date: Fri, 20 Mar 2015 23:46:29 +0100
From: Moritz Muehlenhoff <jmm@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: PHP SoapClient's __call() type
 confusion through unserialize()
To: oss-security@lists.openwall.com

On Fri, Mar 20, 2015 at 08:35:59PM +0100, Andrea Palazzo wrote:
> Hi everyone,
> I'd like to request a CVE for the PHP Sec Bug #69085.
> 
> Description:
> SoapClient's __call() method is prone to a type confusion vulnerability
> which can be used to gain remote code execution through unsafe unserialize()
> calls.
> 
> Info:
> https://bugs.php.net/bug.php?id=69085

I'm adding security@php.net to CC and I think it should become good
practice on oss-security to keep them in CC for future PHP CVE requests.

There has been a recent blog posting by a member of the PHP team
(also CCed) on that topic:
https://liorkaplan.wordpress.com/2015/03/19/cve-assignment-without-upstream-knowledge/

Cheers,
        Moritz
