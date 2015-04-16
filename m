X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1896" "Thursday" "16" "April" "2015" "11:10:37" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<552F4B55.2010404@redhat.com>" "42" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041605:40:37" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        huzaifas@red Apr 16   42/1896  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<20150416052011.C25D86C0072@smtpvmsrv1.mitre.org>" ("<20150416052011.C25D86C0072@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4031 invoked by uid 550); 16 Apr 2015 05:29:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3997 invoked from network); 16 Apr 2015 05:29:24 -0000
Message-ID: <552F4B55.2010404@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <20150416052011.C25D86C0072@smtpvmsrv1.mitre.org>
In-Reply-To: <20150416052011.C25D86C0072@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Thu, 16 Apr 2015 11:10:37 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On 04/16/2015 10:50 AM, cve-assign@mitre.org wrote:
>> IMO two CVEs are required:
> 
>> "Various symlink flaws in abrt" and "Various race conditions in abrt"
> 
> For purposes of CVE, a set of vulnerabilities related to symlink
> following normally isn't assigned two CVE IDs solely because some of
> the symlink attacks depend on a race condition, whereas other symlink
> attacks don't depend on a race condition.
> 
> The specific exploitation scenario disclosed in raceabrt.c is about
> replacing maps with a symlink to /etc/passwd and then waiting for the
> next line of the code to chown /etc/passwd. This requires symlink
> following, and will have the same CVE ID as other issues that require
> symlink following.
> 
> If the only goal of an attacker were to delete the maps file in order
> to cause data loss, then we think that attacker does not need to win a
> race. That attacker can delete the maps file either before or after
> the chown. (It's also conceivable that file deletion, by itself, was
> considered an acceptable risk, and not a valid attack goal.)
> 
> However, the text of
> http://openwall.com/lists/oss-security/2015/04/14/4 said "is
> vulnerable to a filesystem race where a user unlinks the file." That's
> why we asked about the possibility of another scenario in which:
> 
>   1. The ultimate goal is only to unlink the file.
>   2. Achieving this ultimate goal requires winning a race.
> 
> We think there's isn't any such scenario, but we wanted to confirm
> that before doing a CVE mapping. If there isn't any such scenario,
> then the total number of CVE IDs for the whole "Furthermore, Abrt
> suffers" section will be 1.
> 
> 
My previous email, was based on general observation, i really dont have
a preference. Please feel free to assign a CVE, if other issues are
discovered we will let MITRE know.

-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
