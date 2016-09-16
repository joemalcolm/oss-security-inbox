X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["594" "Friday" "16" "September" "2016" "13:38:38" "-0400" "Jan Schaumann" "jschauma@netmeister.org" "<20160916173838.GL8683@netmeister.org>" "15" "Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" "^Cc:" nil nil "9" "2016091617:38:38" "[oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "        jschauma@net Sep 16   15/594   " thread-indent "\"Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 2039 invoked by uid 550); 16 Sep 2016 17:38:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 2021 invoked from network); 16 Sep 2016 17:38:50 -0000
Message-ID: <20160916173838.GL8683@netmeister.org>
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: chet.ramey@case.edu
Date: Fri, 16 Sep 2016 13:38:38 -0400
From: Jan Schaumann <jschauma@netmeister.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME
To: oss-security@lists.openwall.com

John Haxby <john.haxby@oracle.com> wrote:
 
> A little while ago, one of our users discovered that by setting the
> hostname to $(something unpleasant), bash would run "something
> unpleasant" when it expanded \h in the prompt string.

To clarify: this is only triggered if the hostname has been set, not the
$HOSTNAME variable, right?

Your subject line suggests setting $HOSTNAME would lead to command
execution, which would be a vulnerability reminiscent of shellshock, but
quickly glancing at the code, it looks like $HOSTNAME is only used if
gethostname(3) returned an empty string?

-Jan
