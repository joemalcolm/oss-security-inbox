Received: (qmail 15679 invoked by uid 550); 17 Mar 2023 19:41:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15661 invoked from network); 17 Mar 2023 19:41:16 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-109S0034fe5a7ff-99f5-47b5-ae5d-a8e0fd25b663,
                    7BE97D1000CF9539D0ABE71C84E8B582AAA28F94) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.170
Date: Fri, 17 Mar 2023 20:41:02 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20230317194102.wvso2ex65fuwbukg@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
 <20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
 <20230317114844.21563d9a.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230317114844.21563d9a.hanno@hboeck.de>
X-Originating-IP: [37.59.142.109]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 16606554-5b40-4787-8100-8ac2986abca2
X-Ovh-Tracer-Id: 14001972717265671959
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvdefvddguddviecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeffieegteegteeiffeuudevhedvieehkeffhfekfeduueevleettefgudehieelleenucffohhmrghinhepuggvsghirghnrdhorhhgnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

* Hanno Böck <hanno@hboeck.de>, 2023-03-17 11:48:
>Jakub Wilk <jwilk@jwilk.net> wrote:
>
>>On Linux virtual terminals, it's possible to achieve pretty much the 
>>same effect using TIOCLINUX, the ioctl used by gpm to implement 
>>copy&pasting.
[...]
>Given this works only on "virtual terminals" (aka not in a terminal 
>window on X, not over SSH), I think the severity is much lower than the 
>TIOCSTI issue.

Agreed.

>I've created a patch for the Linux kernel very similar to the patch 
>that allows disabling TIOCSTI.

I don't think that's gonna fly, because...

>+	  The TIOCLINUX ioctl allows implementing copy-and-paste and
>+	  mouse operations in virtual terminals, used by tools like gpm.

TIOCLINUX implements also functionality unrelated to copying and 
pasting. See the ioctl_console(2) man page:
https://manpages.debian.org/unstable/manpages-dev/ioctl_console.2.en.html#TIOCLINUX

For example, apparently some of this stuff is used by systemd:

     $ git grep -wB5 TIOCLINUX
     src/basic/terminal-util.c-                int tiocl[2] = {
     src/basic/terminal-util.c-                        TIOCL_GETKMSGREDIRECT,
     src/basic/terminal-util.c-                        0
     src/basic/terminal-util.c-                };
     src/basic/terminal-util.c-
     src/basic/terminal-util.c:                if (ioctl(fd, TIOCLINUX, tiocl) < 0)
     --
     src/vconsole/vconsole-setup.c-static int verify_vc_device(int fd) {
     src/vconsole/vconsole-setup.c-        unsigned char data[] = {
     src/vconsole/vconsole-setup.c-                TIOCL_GETFGCONSOLE,
     src/vconsole/vconsole-setup.c-        };
     src/vconsole/vconsole-setup.c-
     src/vconsole/vconsole-setup.c:        return RET_NERRNO(ioctl(fd, TIOCLINUX, data));

-- 
Jakub Wilk
