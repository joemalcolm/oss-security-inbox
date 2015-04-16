X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["799" "Thursday" "16" "April" "2015" "09:52:20" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<552F38FC.3010109@redhat.com>" "22" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041604:22:20" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        huzaifas@red Apr 16   22/799   " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<20150416040424.8A58E72E043@smtpvbsrv1.mitre.org>" ("<20150416040424.8A58E72E043@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1549 invoked by uid 550); 16 Apr 2015 04:11:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1531 invoked from network); 16 Apr 2015 04:11:07 -0000
Message-ID: <552F38FC.3010109@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <20150416040424.8A58E72E043@smtpvbsrv1.mitre.org>
In-Reply-To: <20150416040424.8A58E72E043@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Thu, 16 Apr 2015 09:52:20 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On 04/16/2015 09:34 AM, cve-assign@mitre.org wrote:

> As far as we can tell, the other issues in the "Furthermore, Abrt
> suffers" section of
> http://openwall.com/lists/oss-security/2015/04/14/4 are about an
> attacker who must create a symlink as part of an attack with a goal of
> making the collected crash data include unintended (and possibly
> private) information. We currently think that a single CVE ID can be
> used for all of them.
> 
> 

IMO two CVEs are required:

"Various symlink flaws in abrt" and "Various race conditions in abrt"

I am not sure if the exploit used one or both of these issues to achieve
privesc, but both of these issues exists, are security flaws and may
have varied impact. (Maybe not easy to exploit?)

-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
