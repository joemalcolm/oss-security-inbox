X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1118" "Tuesday" "14" "April" "2015" "08:55:36" "+0200" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<552CB9E8.2010601@gmail.com>" "45" "Re: [oss-security] CVE request for some NTP stuff" nil nil nil "4" "2015041406:55:36" "[oss-security] CVE request for some NTP stuff" (number mark "        gsunde.orang Apr 14   45/1118  " thread-indent "\"Re: [oss-security] CVE request for some NTP stuff\"\n") "<54D2A541.7090904@gmail.com>" ("<54D29C33.70900@redhat.com>" "<54D2A541.7090904@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26349 invoked by uid 550); 14 Apr 2015 06:52:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26331 invoked from network); 14 Apr 2015 06:52:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=dRZuiillSpe9n2BenPVHfpp/yb+03lq1dSmZH/05GEM=;
        b=R+WzQhPwjEjQXt1TQEufXLCvWkdM1vvF7qjUg1Sd5q7y5wdtwUwbbvC8xcQIdnpHNy
         OIMROQ/8rt4l7qQ76MwEPY7pjHzKgdVcdeScEJXjQDsrqhaNVCWci/9aMF9N9uUF1FXF
         CzVQyJXytE7QkmZ3xU9faZIA3Md/QU3eKewz4GGZvQTY95gnTdYK5giFcvwetRmsSTob
         8xlIEzVdS2vVO2kAhiXsM2yqiJbtd9Ave38AkeCRC+Lo5ZHrvRBjukXtXhqDQG5NkF2o
         fsY6Qb7yDDG4kcihUpctrydeLho9zfRfypeWYdmY84tz9FXagcqM87xwipr556GN5Sea
         vhhQ==
X-Received: by 10.180.104.66 with SMTP id gc2mr28945706wib.34.1428994312862;
        Mon, 13 Apr 2015 23:51:52 -0700 (PDT)
Message-ID: <552CB9E8.2010601@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <54D29C33.70900@redhat.com> <54D2A541.7090904@gmail.com>
In-Reply-To: <54D2A541.7090904@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Tue, 14 Apr 2015 08:55:36 +0200
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request for some NTP stuff
To: oss-security@lists.openwall.com

This is just a "cleanup" notice for those two ntp vulnerabilities that
were resolved on Feb 4th:

On 2015-02-05, 00:03 Gsunde Orangen wrote:
> Hi Kurt,
> 
> On 2015-02-04, 23:24 Kurt Seifried wrote:
>> I haven't seen any CVE's for these yet:
> 
>> http://bugs.ntp.org/show_bug.cgi?id=2671 vallen is not validated,
>> leading to potential info leak
> CVE-2014-9297 (according to 
> http://support.ntp.org/bin/view/Main/SecurityNotice#Recent_Vulnerabilities)
>
>
>
>
> 
> 
>> http://bugs.ntp.org/show_bug.cgi?id=2655 Multiple vulnerabilities
>> in ntpd
> This bug lists 8 different bugs, Bugs #1 - #7 are tracked in 
> different ids (#7 is the one above: id=2671) The remaining bug #8 
> is defined as CVE-2014-9298 as in 
> http://support.ntp.org/bin/view/Main/SecurityNotice#Recent_Vulnerabilities
>
>
>
>
> Note however, that the Cert VNDB 
> (http://www.kb.cert.org/vuls/id/852879) uses the same CVEs for
> bugs #7 and #8, but mutually exchanged! Either ntp.org or cert.org
> is wrong...

cert.org was wrong but had apparently fixed it immediately after that
notice.

> 
> 
>> Thanks.
> 
> You're welcome ;-)
> 
> 

