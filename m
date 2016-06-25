X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1282" "Saturday" "25" "June" "2016" "08:34:37" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<576EA48D.1070502@oracle.com>" "24" "Re: [oss-security] libical 0.47 SEGV on unknown address" nil nil nil "6" "2016062515:34:37" "[oss-security] libical 0.47 SEGV on unknown address" (number mark "U       alan.coopers Jun 25   24/1282  " thread-indent "\"Re: [oss-security] libical 0.47 SEGV on unknown address\"\n") "<6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>" ("<6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26226 invoked by uid 550); 25 Jun 2016 15:34:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26202 invoked from network); 25 Jun 2016 15:34:53 -0000
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org
References: <6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <576EA48D.1070502@oracle.com>
Date: Sat, 25 Jun 2016 08:34:37 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Subject: Re: [oss-security] libical 0.47 SEGV on unknown address

On 06/24/16 06:54 AM, Brandon Perry wrote:
> I am posting this to Full Disclosure/OSS instead of reporting it because I have
> opened a handful of libical bugs in the Mozilla bug tracker, alerted
> security@mozilla.org <mailto:security@mozilla.org>, and worked to show how and
> where to reproduce the bugs in Thunderbird, but Mozilla hasn’t shown any care at
> all about the bugs. Perhaps if I give a sample to the community of the bugs in
> the bug reports, Mozilla will take the bug reports more seriously. This bug
> attached had not been reported yet.

Did you report them to libcial upstream?  http://libical.github.io/libical/

> My roommate mentioned Thunderbird being a second-class citizen in the Mozilla
> world, so if this is the case, this should be made explicit in regards to bug
> bounty expectations.

While Thunderbird is still a beloved child of Mozilla, it's been told it's time
to move out of its parents house and find its own sources of income/support:

https://groups.google.com/d/msg/mozilla.governance/kAyVlhfEcXg/Eqyx1X62BQAJ
https://blog.mozilla.org/thunderbird/2015/12/thunderbird-active-daily-inquiries-surpass-10-million/

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - http://blogs.oracle.com/alanc
