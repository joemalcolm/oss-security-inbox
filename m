X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["870" "Friday" "3" "November" "2017" "13:01:10" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171103120109.sjaunqwdpfnkfymn@jwilk.net>" "24" "Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically" "^Date:" nil nil "11" "2017110312:01:10" "[oss-security] Security risk of server side text editing in general and vim.tiny specifically" (number mark "        jwilk@jwilk. Nov  3   24/870   " thread-indent "\"Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically\"\n") "<2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>" ("<2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7655 invoked by uid 550); 3 Nov 2017 12:01:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7633 invoked from network); 3 Nov 2017 12:01:25 -0000
Message-ID: <20171103120109.sjaunqwdpfnkfymn@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 6523745536725145510
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrgeekgdefhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Fri, 3 Nov 2017 13:01:10 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security risk of server side text editing in
 general and vim.tiny specifically
To: oss-security@lists.openwall.com

* Fiedler Roman <Roman.Fiedler@ait.ac.at>, 2017-11-03, 11:07:
>POC for vim.tiny on Ubuntu Xenial to overwrite arbitrary files as user 
>root when editing file in directory owned by other user is available on 
>request, disclosure after one week or if list discussion indicates 
>other timing.

By default[1], when vim wants to overwrite the file "foo", it does:

   rename("foo", "foo~")                   = 0
   open("foo", O_WRONLY|O_CREAT|O_TRUNC|O_LARGEFILE, 0600) = 3

There's a race window between the two syscalls when the attacker could 
re-create "foo", and then vim would happily write to it.

Is this the attack you meant?

NB, vim disables this behavior for files in /tmp (but not /var/tmp)[2].


[1] http://vimdoc.sourceforge.net/htmldoc/options.html#%27writebackup%27
[2] http://vimdoc.sourceforge.net/htmldoc/options.html#%27backupskip%27

-- 
Jakub Wilk
