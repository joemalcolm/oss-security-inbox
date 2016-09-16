X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1161" "Friday" "16" "September" "2016" "14:49:11" "-0400" "Chet Ramey" "chet.ramey@case.edu" "<7c365a7a-c510-b6e6-2609-da62b69fd62b@case.edu>" "30" "Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" "^Cc:" nil nil "9" "2016091618:49:11" "[oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "        chet.ramey@c Sep 16   30/1161  " thread-indent "\"Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<20160916173838.GL8683@netmeister.org>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" "<20160916173838.GL8683@netmeister.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23930 invoked by uid 550); 16 Sep 2016 18:58:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19587 invoked from network); 16 Sep 2016 18:49:25 -0000
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
 <20160916173838.GL8683@netmeister.org>
Message-ID: <7c365a7a-c510-b6e6-2609-da62b69fd62b@case.edu>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
 Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20160916173838.GL8683@netmeister.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Junkmail-Whitelist: YES (by domain whitelist at mpv1-2015.case.edu)
Cc: chet.ramey@case.edu
Date: Fri, 16 Sep 2016 14:49:11 -0400
From: Chet Ramey <chet.ramey@case.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME
To: Jan Schaumann <jschauma@netmeister.org>, oss-security@lists.openwall.com

On 9/16/16 1:38 PM, Jan Schaumann wrote:
> John Haxby <john.haxby@oracle.com> wrote:

(I didn't get this message.)

>> A little while ago, one of our users discovered that by setting the
>> hostname to $(something unpleasant), bash would run "something
>> unpleasant" when it expanded \h in the prompt string.

This issue has been public since October, 2015 in Ubuntu's bug tracking
system.


> To clarify: this is only triggered if the hostname has been set, not the
> $HOSTNAME variable, right?

Bash doesn't use $HOSTNAME; it sets it if it's not already set.  The
shell's idea of the current hostname is set using gethostname().  If
gethostname() fails, the hostname gets set to "??host??".  The \h
prompt expansion uses the shell's idea of the current hostname.

If your privileged application (either a user with privilege or a hostname-
setting agent) allows the hostname to be set to any arbitrary string of
characters, you're going to have problems regardless.

Chet
-- 
``The lyf so short, the craft so long to lerne.'' - Chaucer
		 ``Ars longa, vita brevis'' - Hippocrates
Chet Ramey, UTech, CWRU    chet@case.edu    http://cnswww.cns.cwru.edu/~chet/
