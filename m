X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1627" "Monday" "12" "June" "2017" "14:31:57" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<0e26614d-b994-e8d1-1bce-c33038ad2232@oracle.com>" "32" "Re: [oss-security] Vixie/ISC Cron group crontab to root escalation" "^Date:" nil nil "6" "2017061221:31:57" "[oss-security] Vixie/ISC Cron group crontab to root escalation" (number mark "        alan.coopers Jun 12   32/1627  " thread-indent "\"Re: [oss-security] Vixie/ISC Cron group crontab to root escalation\"\n") "<201706121815.v5CIF6jp021733@room101.nl.oracle.com>" ("<20170609162729.GA2535@openwall.com>" "<20170609174117.DBE0617FDA8@rebar.astron.com>" "<201706121815.v5CIF6jp021733@room101.nl.oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13807 invoked by uid 550); 12 Jun 2017 21:32:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13785 invoked from network); 12 Jun 2017 21:32:12 -0000
References: <20170609162729.GA2535@openwall.com>
 <20170609174117.DBE0617FDA8@rebar.astron.com>
 <201706121815.v5CIF6jp021733@room101.nl.oracle.com>
Message-ID: <0e26614d-b994-e8d1-1bce-c33038ad2232@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <201706121815.v5CIF6jp021733@room101.nl.oracle.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Date: Mon, 12 Jun 2017 14:31:57 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Vixie/ISC Cron group crontab to root escalation
To: oss-security@lists.openwall.com, Casper.Dik@oracle.com

On 06/12/17 11:15 AM, Casper.Dik@oracle.com wrote:
> 
>> On Jun 9,  6:27pm, solar@openwall.com (Solar Designer) wrote:
>> -- Subject: Re: [oss-security] Vixie/ISC Cron group crontab to root escalatio
>>
>> | Oh, I did in fact mention this in the private discussion, so I'll quote:
>> |
>> | | Another detail: somehow in Owl we introduced lstat() prior to open, and
>> | | check lstat()'s struct for all the required properties before proceeding
>> | | with open() with O_NOFOLLOW.  Then we check that st_dev/st_ino stayed
>> | | the same.  We also kept the post-open() checks.  I don't recall exactly
>> | | why we added this, but maybe because of the possibility of side-effects
>> | | on open() for hard links to device files (like with tape drives).  And
>> | | it looks like we neglected to add the same for at jobs (perhaps didn't
>> | | revisit this when support for at jobs appeared via our update to later
>> | | OpenBSD code) - maybe we should.
>>
>> Thanks, perhaps a comment in the code can't hurt...
>> Or even O_NODEV which does not exist, or O_PATH (linux only)..
> 
> As there is a O_DIRECTORY it would be more orthogonal to have O_REGULAR
> (open only a regular file).  But that becomes more and more icky as we're
> running out of 32 bits of O_*)

If we're adding flags to open() instead of defining one per file type it
seems like it would be better to define O_MATCH_IFMT to require that the
file's (mode & S_IFMT) match the (mode & S_IFMT) passed in the third
argument to open.

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
