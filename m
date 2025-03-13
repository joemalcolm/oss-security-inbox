Received: (qmail 12117 invoked by uid 550); 13 Mar 2025 07:12:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12096 invoked from network); 13 Mar 2025 07:12:14 -0000
Date: Thu, 13 Mar 2025 08:12:03 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <Z9KFQxKr65F50T/M@256bit.org>
References: <Z9H7D+X11A121Mkg@256bit.org>
 <20250313041407.GA20847@openwall.com>
 <359120da-2525-40d4-a93d-c9ba1051347e@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <359120da-2525-40d4-a93d-c9ba1051347e@gentoo.org>
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] [vim-security] potential data loss with zip.vim
 and special crafted zip files in Vim < v9.1.1198


On Thu, 13 Mar 2025, Eli Schwartz wrote:

> unzip will not permit you to run:
> 
> ```
> unzip foo.zip ./dir1/member
> ```
> 
> in order to extract an archive member named "dir1/member". There is no
> ./ member in the archive, it's not resolved like a filesystem path.
> 
> It will print a diagnostic: "caution: filename not matched:
> ./dir1/member" and exit 11 (no matching files were found.)

Correct. Tried that, doesn't work. The whole unzip commandline parsing 
looks quite fragile to me:
```
unzip [-Z] [-cflptTuvz[abjnoqsCDKLMUVWX$/:^]] file[.zip] [file(s) ...]  
[-x xfile(s) ...] [-d exdir]
```
(e.g. it allows optional arguments to be followed after any number of 
member files). 

Thanks,
Christian
-- 
"Problem solving under linux has never been the circus that it is under
AIX."
(By Pete Ehlke in comp.unix.aix)
