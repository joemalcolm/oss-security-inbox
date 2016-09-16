X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1158" "Friday" "16" "September" "2016" "15:46:51" "-0400" "Chet Ramey" "chet.ramey@case.edu" "<a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>" "31" "[oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" "^Cc:" nil nil "9" "2016091619:46:51" "[oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "        chet.ramey@c Sep 16   31/1158  " thread-indent "\"[oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32171 invoked by uid 550); 16 Sep 2016 19:52:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30201 invoked from network); 16 Sep 2016 19:47:08 -0000
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
Message-ID: <a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
 Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Junkmail-Whitelist: YES (by domain whitelist at mpv4-2015.case.edu)
Cc: chet.ramey@case.edu
Date: Fri, 16 Sep 2016 15:46:51 -0400
From: Chet Ramey <chet.ramey@case.edu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME
To: John Haxby <john.haxby@oracle.com>, oss-security@lists.openwall.com

On 9/16/16 12:16 PM, John Haxby wrote:
> Hello All,
> 
> A little while ago, one of our users discovered that by setting the
> hostname to $(something unpleasant), bash would run "something
> unpleasant" when it expanded \h in the prompt string.

I finally got this message, three hours later.

I assume you're using $HOSTNAME as a shorthand; bash only uses the
return value from gethostname().

It's unlikely that something like this could be accomplished without
existing privilege.  If you have a fake DHCP server on your network, for
instance, you have massive problems aside from this issue.  If someone
sets the hostname on the local machine, he already has privilege.

> 
> I believe the fix in parse.y is this (Chet, please correct me if I'm wrong):

Yes, that is the current fix for this.  There are other ways to do it.

This issue has been public since October, 2015, in Ubuntu's bash bug
database.

https://bugs.launchpad.net/ubuntu/+source/bash/+bug/1507025

-- 
``The lyf so short, the craft so long to lerne.'' - Chaucer
		 ``Ars longa, vita brevis'' - Hippocrates
Chet Ramey, UTech, CWRU    chet@case.edu    http://cnswww.cns.cwru.edu/~chet/
