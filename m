X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2739" "Saturday" "16" "January" "2016" "07:47:43" "+0000" "halfdog" "me@halfdog.net" "<f4857fec-922c-6f4b-103d-364ea3b170b1@halfdog.net>" "71" "Re: [oss-security] Discuss: Daily/weekly cron jobs best practices" "^Date:" nil nil "1" "2016011607:47:43" "[oss-security] Discuss: Daily/weekly cron jobs best practices" (number mark "        me@halfdog.n Jan 16   71/2739  " thread-indent "\"Re: [oss-security] Discuss: Daily/weekly cron jobs best practices\"\n") "<3412231.rSTmOYfSpU@sarpedon>" ("<568D9DEC.7030306@halfdog.net>" "<3412231.rSTmOYfSpU@sarpedon>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28408 invoked by uid 550); 16 Jan 2016 07:47:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28390 invoked from network); 16 Jan 2016 07:47:22 -0000
References: <568D9DEC.7030306@halfdog.net> <3412231.rSTmOYfSpU@sarpedon>
Message-ID: <f4857fec-922c-6f4b-103d-364ea3b170b1@halfdog.net>
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
In-Reply-To: <3412231.rSTmOYfSpU@sarpedon>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Date: Sat, 16 Jan 2016 07:47:43 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Discuss: Daily/weekly cron jobs best practices
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,

Sorry for not finding time to come back earlier.

Tim Brown wrote:
> On Wednesday 06 January 2016 23:06:20 halfdog wrote:
> 
>> Are there more variants, arguments? In my opinion, b) is a good 
>> trade-off between maintainability and security.
> 
> Create scripts with secure permissions, write only to properly
> secured locations and execute as dedicated users with minimal
> privileges. Yes, there will still be problems but a lot of the most
> significant pain points go away.

@all: So there are no objections to propose variant b) in a short
howto for all cron scripts, e.g. too much associated logging
especially if also used for hourly jobs, may upset the IDS/SIEM due to
larger number of SUID-binary calls, risk to give unprivileged process
control over privileged resource already opened/accessed before
changing UID?

"b) run shell script as daemon user and also try to get it secured.
Pro: attackers without code execution possibilities but ability to
make daemon e.g. to create problematic files via the daemon are also
blocked."

>> Currently the cron scripts seem to be a weak point. I looked at
>> the 8 daily scripts on my machine, 2 of them belonged to the
>> "daemon" example class from above and both were vulnerable to
>> daemon to root privilege escalation, see e.g. [1].
> 
> Not uncommon, we pop almost every UNIX box we touch this way, I
> assume you've seen unix-privesc-check?

I have tried it, but it seems too unspecific. Example from the cron
jobs directory:

W: [privileged_change_privileges] cron-system /etc/cron.daily/dpkg
(root) and does not attempt to change privileges

This is reported nearly for all scripts, for some it might be a
correct finding, for others it is simply wrong (they should really
operate with root permissions in place). So it is not very effective
in pointing at the really problematic scripts.

Of course a project developer could take all the collected warnings as
"checklist", if they might apply to his project's scripts also.

(And they could be made a little more targeted by upc: e.g. report
only if the script uses chown with non-root UIDs or chmod/find/rm ..
on directories not owned by root. But that needs quite a lot of
parsing of the scripts.)

Conclusio on upc in that case could be: Good to scan new project
software as a second line of defense and to get ideas, which errors
one could have made but not helpful to point at specific locations.

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88  2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlaZ9ZQACgkQxFmThv7tq+7b2gCfWCZSkkSNtEETujorj3+4qpd2
gM8AmgLOPLiErmk36/BJNYRSURG02BWf
=X8za
-----END PGP SIGNATURE-----
