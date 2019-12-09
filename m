X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1020" "Monday" "9" "December" "2019" "16:46:35" "+0000" "Leonid Isaev" "leonid.isaev@ifax.com" nil "30" nil "^Date:" nil nil "12" nil nil (number mark "        leonid.isaev Dec  9   30/1020  " thread-indent "\"Re: [oss-security] Shell wildcards considered dangerous?\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Shell wildcards considered dangerous?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29896 invoked by uid 550); 9 Dec 2019 17:22:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11343 invoked from network); 9 Dec 2019 16:46:47 -0000
Message-ID: <20191209164635.GB35251@orca>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAGUWgD-yn2kf3T69ri7ahcCfKm=kiMBnxeb84mnH-qqYWQNUdg@mail.gmail.com>
 <8bd059ae-5faa-46fa-71d0-bb0f61ea8e62@thermi.consulting>
 <20191209151808.GA35251@orca>
 <a12cddb8-7753-5e5f-de0f-8c575c2632d2@thermi.consulting>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a12cddb8-7753-5e5f-de0f-8c575c2632d2@thermi.consulting>
Date: Mon, 9 Dec 2019 16:46:35 +0000
From: Leonid Isaev <leonid.isaev@ifax.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Shell wildcards considered dangerous?
To: oss-security@lists.openwall.com

On Mon, Dec 09, 2019 at 04:28:35PM +0100, Noel Kuntze wrote:
> The message was about the attack vector on applications that put together
> argument vectors based on user input, not specifically about human use of the
> shell.

Then, why in "tar xf *.tar" the "*" is expected to mean anything other than
a literal * (0x2a)? It is because of the shell globbing: "tar xf ./*.tar" will
work without any "--". For example:
-----8<-----
$ echo -E "xxx" > "-b xxx.qwetr"
$ file *.qwetr
file: invalid option -- ' '
file: invalid option -- 'x'
file: invalid option -- 'x'
file: invalid option -- 'x'
file: invalid option -- '.'
file: invalid option -- 'q'
file: invalid option -- 'w'
Usage: file [-bcCdEhikLlNnprsvzZ0] [--apple] [--extension] [--mime-encoding]
            [--mime-type] [-e <testname>] [-F <separator>]  [-f <namefile>]
            [-m <magicfiles>] [-P <parameter=value>] <file> ...
       file -C [-m <magicfiles>]
       file [--help]
$
$ file ./*.qwetr
./-b xxx.qwetr: ASCII text
----->8-----

Sincerely,
L.
