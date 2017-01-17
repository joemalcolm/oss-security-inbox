X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1132" "Tuesday" "17" "January" "2017" "13:33:51" "+0100" "Greg Kurz" "groug@kaod.org" "<20170117133351.12825381@bahia.lan>" "35" "[oss-security] Re: CVE-2016-9602 Qemu: 9p: virtfs allows guest to access host filesystem" nil nil nil "1" "2017011712:33:51" "[oss-security] Re: CVE-2016-9602 Qemu: 9p: virtfs allows guest to access host filesystem" (number mark "U       groug@kaod.o Jan 17   35/1132  " thread-indent "\"[oss-security] Re: CVE-2016-9602 Qemu: 9p: virtfs allows guest to access host filesystem\"\n") "<alpine.LFD.2.20.1701171743330.22483@wniryva>" ("<alpine.LFD.2.20.1701171743330.22483@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26567 invoked by uid 550); 17 Jan 2017 15:44:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30699 invoked from network); 17 Jan 2017 12:34:06 -0000
Date: Tue, 17 Jan 2017 13:33:51 +0100
From: Greg Kurz <groug@kaod.org>
To: P J P <ppandit@redhat.com>
Cc: oss security list <oss-security@lists.openwall.com>, Jann Horn
 <jannh@google.com>
Message-ID: <20170117133351.12825381@bahia.lan>
In-Reply-To: <alpine.LFD.2.20.1701171743330.22483@wniryva>
References: <alpine.LFD.2.20.1701171743330.22483@wniryva>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Ovh-Tracer-Id: 1095219138438601013
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelgedrfeejgdegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Subject: [oss-security] Re: CVE-2016-9602 Qemu: 9p: virtfs allows guest to access host
 filesystem

On Tue, 17 Jan 2017 17:48:59 +0530 (IST)
P J P <ppandit@redhat.com> wrote:

>    Hello,
> 
> Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
> File System(9pfs) support, is vulnerable to an improper link following issue. 
> It could occur while accessing symbolic link files on a shared host directory.
> 
> A privileged user inside guest could use this flaw to access host file system 
> beyond the shared folder and potentially escalating their privileges on a 
> host.
> 
> Reference:
> ----------
>    -> http://wiki.qemu.org/Documentation/9psetup
>    -> https://bugzilla.redhat.com/show_bug.cgi?id=1413929  
> 
> 
> Please see a proposed patch to fix this issue attached herein.
> 

The proposed patch DOES NOT fix the vulnerability because of a TOCTTOU
issue. Please ignore it. I'm working on another fix I hope to complete
this week.

> This issue was discovered by Jann Horn of Google Project Zero.
> 
> 'CVE-2016-9602' has been assigned to this issue by Red Hat Inc.
> 
> Thank you.
> --
> Prasad J Pandit / Red Hat Product Security Team
> 47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

