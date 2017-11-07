X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1994" "Tuesday" "7" "November" "2017" "07:20:02" "+0100" "Matthias Luft" "uchimata@c7f.de" "<f9ddbfc2-0d8b-039b-9a49-b4fd05b1784b@c7f.de>" "62" "Re: [oss-security] Security risk of vim swap files" "^Date:" nil nil "11" "2017110706:20:02" "[oss-security] Security risk of vim swap files" (number mark "        uchimata@c7f Nov  7   62/1994  " thread-indent "\"Re: [oss-security] Security risk of vim swap files\"\n") "<AB0C651A-408B-4BCB-A377-075EEE265AC2@surevine.com>" ("<20171031132352.2df6d2ad@pc1>" "<AB0C651A-408B-4BCB-A377-075EEE265AC2@surevine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24339 invoked by uid 550); 7 Nov 2017 11:07:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16033 invoked from network); 7 Nov 2017 06:20:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=c7f.de; s=mail;
	t=1510035609; bh=poKOAXHFdWTsDLUwiov8enNAiND1T8awjrmPj4iK3UQ=;
	h=To:References:From:Date:In-Reply-To:From;
	b=GAQfH6uoDPAihH0bXpbj0mEFu4nfKLCLdOgJTJSZqXb3J5jHo8COnFzZfbdMgUhfg
	 opRgm+ZVHJ+3TcsTNtI+piL1MbQO9e3oCPUDt9aJOG0DfClJhCDDUmExuclSk6nHDf
	 CPwNOFPcZFLPpLtwCdJrt/lGpUHkKjXyVeNW7LOE=
References: <20171031132352.2df6d2ad@pc1>
 <AB0C651A-408B-4BCB-A377-075EEE265AC2@surevine.com>
Message-ID: <f9ddbfc2-0d8b-039b-9a49-b4fd05b1784b@c7f.de>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
In-Reply-To: <AB0C651A-408B-4BCB-A377-075EEE265AC2@surevine.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Date: Tue, 7 Nov 2017 07:20:02 +0100
From: Matthias Luft <uchimata@c7f.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security risk of vim swap files
To: oss-security@lists.openwall.com



On 31.10.2017 15:46, Simon Waters (Surevine) wrote:
> 
> 
>> On 31 Oct 2017, at 12:23, Hanno Böck <hanno@hboeck.de> wrote:
>>
>> I was wondering how to best avoid this on my own servers and I first
>> thought about saving the swap files to tmp ( with "set directory”).
> 
> The specific website issue, the web server config can exclude dot files.
> 
> Apache ships with
> 
> <Files ~ "^\.ht">
>     Order allow,deny
>     Deny from all
> </Files>
> 
> The obvious generalisations of this work. Although some sources also recommend blocking in “Location” to prevent requests with “*/.*stuff”  which are parsed by templating libraries or other directives.
> 
> To rub salt in most distros ship Apache with
> 
> IndexIgnore .??* *~ *# RCS CVS *,v *,t
> 
> Which means that if you use the Apache directory indexing approach these files will be hidden but not blocked.
> 
> I now realise the Alexa top 1 million will now be searched for remaining uses of RCS and CVS ;)
> 
> In a previous role the roll out scripts cleaned this sort of junk and told you if any new files had been added to the web application, this approach has much to recommend it if you have the time to perfect your applications, and your roll out procedures.
> 

Another approach would be to actually whitelist the file types/patterns
that are delivered by your web servers. We have seen various file types
during testing since a long time that should not have been web served
and compiled a list [1] of those:

.dot files in general. In particular:
 .ht*
 .DS_Store
 .git*
 .svn*
.pkcs12 .pfx .p12, .pem, .key, .der, .crt
*.log
*.swp
*.bp/*.bak
/^~/ or /~$/
*.dmp/*.core
thumbs.db/*.db
*.raw
*.sqlite
*.conf/*.ini
*.txt/*.csv

However, I also fully agree with the comments later in the thread that
this issue should mainly be addressed by strict operating standards for
production systems as well as deployment procedures.

Best,
Matthias

[1] https://insinuator.net/2016/09/files-your-webserver-shouldnt-deliver/
