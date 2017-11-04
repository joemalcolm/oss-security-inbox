X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2208" "Saturday" "4" "November" "2017" "23:44:28" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171104224428.g5w7ptjctzgzgfxy@jwilk.net>" "57" "Re: [oss-security] nvi crash recovery" "^Date:" nil nil "11" "2017110422:44:28" "[oss-security] nvi crash recovery" (number mark "        jwilk@jwilk. Nov  4   57/2208  " thread-indent "\"Re: [oss-security] nvi crash recovery\"\n") "<20171103204159.rnszmrzvcwkxkaak@jwilk.net>" ("<2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>" "<20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>" "<20171103212659.378593da@pc1>" "<20171103204159.rnszmrzvcwkxkaak@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32236 invoked by uid 550); 4 Nov 2017 22:44:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32204 invoked from network); 4 Nov 2017 22:44:43 -0000
Message-ID: <20171104224428.g5w7ptjctzgzgfxy@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>
 <20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>
 <20171103212659.378593da@pc1>
 <20171103204159.rnszmrzvcwkxkaak@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20171103204159.rnszmrzvcwkxkaak@jwilk.net>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 4814348002151159718
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrhedugddtvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Sat, 4 Nov 2017 23:44:28 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] nvi crash recovery
To: oss-security@lists.openwall.com

* Jakub Wilk <jwilk@jwilk.net>, 2017-11-03, 21:41:
>>nvi saves recovery files to /var/tmp/vi.recover and creates them 
>>with 600 permissions.
>>So all the problems discussed don't really apply here.
>>However the dir itself gets created by the first user using nvi.
>
>Sounds like a recipe for disaster.

I took a closer look at what nvi does. As I expected, it's hilariously 
bad.

1) The documentation says: "If the recovery directory does not exist, 
ex/vi will attempt to create it. This can result in the recovery 
directory being owned by a normal user, which means that that user will 
be able to remove other user's recovery and backup files. This is 
annoying, but is not a security issue as the user cannot otherwise 
access or modify the files."

Nope, it's not only annoying. For example, in strace I see:

open("/var/tmp/vi.recover/vi.zwHPc3", O_RDWR|O_CREAT|O_EXCL, 0600) = 3
...
open("/var/tmp/vi.recover/vi.zwHPc3", O_RDWR|O_LARGEFILE) = 3

Between the two syscalls, malicious owner of /var/tmp/vi.recover could 
delete vi.zwHPc3 and replace it with their own.


2) "When the system is rebooted, all of the files in /var/tmp/vi.recover 
named recover.XXXXXX should be sent to their owners, by email, using the 
-t option of sendmail (or a similar mechanism in other mailers)."

The script that upstream provides to implement this mailing happily 
reads the /var/tmp/vi.recover/recover.* without checking file type, or 
lowering privileges. This provides opportunity for denial of service, or 
exploiting MTA bugs.

Debian patched some of this in 2005:
https://bugs.debian.org/298114

(Debian's test for symlinks is racy, but hopefully it doesn't matter at 
boot time.)

Oh, at some point Debian broke the script in such a way it won't send 
any legitimate mails; but OTOH, now it lets users execute arbitrary code 
as user "nobody":
https://bugs.debian.org/769719


3) The recovery files have random names, which should make you wonder 
how does nvi know which one to open when you actually want to recover 
something. It turns out it tries reading every 
/var/tmp/vi.recover/recover.* file until it finds something that 
matches. There are no ownership or file type checks.

-- 
Jakub Wilk
