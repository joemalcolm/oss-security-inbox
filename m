X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["602" "Friday" "27" "March" "2015" "12:31:35" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<55152377.8010102@openwall.com>" "15" "Re: [oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" nil nil nil "3" "2015032709:31:35" "[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" (number mark "        ch3root@open Mar 27   15/602   " thread-indent "\"Re: [oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g\"\n") "<20150327065417.2BB7D6C00F9@smtpvmsrv1.mitre.org>" ("<20150327065417.2BB7D6C00F9@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28666 invoked by uid 550); 27 Mar 2015 09:31:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28646 invoked from network); 27 Mar 2015 09:31:54 -0000
Message-ID: <55152377.8010102@openwall.com>
MIME-Version: 1.0
References: <20150327065417.2BB7D6C00F9@smtpvmsrv1.mitre.org>
In-Reply-To: <20150327065417.2BB7D6C00F9@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 27 Mar 2015 12:31:35 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Multiple vulnerabilities in freexl
 1.0.0g
To: oss-security@lists.openwall.com

On 2015-03-27 09:54, cve-assign@mitre.org wrote:
>> I found multiple issues in the library FreeXL 1.0.0g.
>> The vendor has corrected these issues in FreeXL 1.0.1 , and a diff for
>> the four issues is available here:
>
> We don't feel that this has information in a usable format for making
> all of the CVE assignments.

Aren't you usually combine similar issues into one CVE anyway? Same 
reported type ("stack corruption", at least for #1--3), same disclosure 
date, same fixed version, no info about first vulnerable version...
Or there are subtle differences somewhere?

-- 
Alexander Cherepanov
