X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1029" "Wednesday" "7" "March" "2018" "14:53:07" "+0100" "Raphael Geissert" "atomo64@gmail.com" "<CAA7hUgH=wqxeQpG-xJ_u1QHHFcUnuS=zCtD6voO_e+BZQ+=fyA@mail.gmail.com>" "22" "[oss-security] And Harbor? (was: Portus, missing certificate validation on proxified https traffic)" nil nil nil "3" "2018030713:53:07" "[oss-security] And Harbor? (was: Portus, missing certificate validation on proxified https traffic)" (number mark "U       atomo64@gmai Mar  7   22/1029  " thread-indent "\"[oss-security] And Harbor? (was: Portus, missing certificate validation on proxified https traffic)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19603 invoked by uid 550); 7 Mar 2018 13:53:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19558 invoked from network); 7 Mar 2018 13:53:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=AYLJLxrHihDH0huvCRmioohikGbV7Ryrgxkuhx0zqAo=;
        b=lxkmMckGjbE3rbVqMo8T4HaqNgaeEkP+Iefp4J9UzlS8fpm5QSDDkSSsFateBYd2H9
         EQn6bCba+AP6kW9EaNeHEvsnsaJtVL8cTko0PHRzj86gsCOtubKwF1W+8waK5Lw6mbKJ
         ELNtmdnUCZIrbtM6D+tJLTuTJTNpw+n0YqrofEQYt1F0S57edb8yOU9SMx6ZEV8WubfW
         j/qr3mxoTxlhwETu5ty5B2A44U72DbcZtT2392cKLU1B96iFKTl4TVCaUGHST1kuo9AN
         ewcO+FZUTovUz2r4rwTu+4DHXJz8y/wW2x4wnrST1gag8EYSRcUXRRrvuQ/Qo1GDIuHv
         G24w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=AYLJLxrHihDH0huvCRmioohikGbV7Ryrgxkuhx0zqAo=;
        b=n3fPQl33xl3eslec0CQ8C6p6Z3GkE1chXFE6BieUHU5iGPLwewrXevJQ4o2IYMNF1y
         xnK/xbYIMul64BMrJEMUjTs7vB45SlMK2ZK0IpTyMROg9eZ2UXvAM/ZIgjhwgqBKnNMN
         Lh3wQW00h4xEFQptZI9RV9qPUdi2rXzrdnadMn2RNs4zmFxh+QPGd/cK3CxnwQ3Hon4f
         /16wWpmQwSw5oD+wN5Z/CRYxe8vwNTNMNABkUeDriGiGXEzYiBYKBPyK13EpuAQEPCKp
         j3Ns9qEh54JoISdwUr5FovmOXhAifQJzJnZVghceY1rM6yHJPXB6lkojGQ3Y0vmxAqlJ
         qDOg==
X-Gm-Message-State: APf1xPD67mnxCatITXFUgV1RutInnY/PcLdyc9HrFGZZ1IRhOgZTk72B
	kriBnHGsghWGi8TyxfGd6ZUA3rk1L88U3IVXvWqEUr6+
X-Google-Smtp-Source: AG47ELunK/ZRU4D5VoAuyIHnY7zf8WfAepDpbsGb7mWtQL2g9ZNNm7ITce4k1kHeRveJsETEHDT3/KmNbdfLuioDx0w=
X-Received: by 10.159.51.235 with SMTP id y43mr16931256uab.104.1520430807987;
 Wed, 07 Mar 2018 05:53:27 -0800 (PST)
MIME-Version: 1.0
From: Raphael Geissert <atomo64@gmail.com>
Date: Wed, 7 Mar 2018 14:53:07 +0100
Message-ID: <CAA7hUgH=wqxeQpG-xJ_u1QHHFcUnuS=zCtD6voO_e+BZQ+=fyA@mail.gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Cc: security@suse.de, avi.miller@gmail.com, security@vmware.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] And Harbor? (was: Portus, missing certificate validation on proxified
 https traffic)

On 7 March 2018 at 14:34, Raphael Geissert <atomo64@gmail.com> wrote:
[...]
> Oh and it appears that this one comes from the
> Portus-On-OracleLinux7[4] repo from which "[they] borrowed a lot of
> the NGinx configuration"[2] :
> https://github.com/Djelibeybi/Portus-On-OracleLinux7/blob/f2e7a167f6325a0247eb1ca49a962478daf49a8b/nginx/proxy.conf#L57

>From a quick look at harbor, it would appear to also be missing the
certificate validation on the proxified connections:
https://github.com/vmware/harbor/tree/master/make/common/templates/nginx
(as of 19a13e8)

CC'ing vmware security, fwiw.

> [1]https://github.com/SUSE/Portus/blob/146076d543e8f1618f837dd7466c5f0fdc26438d/examples/compose/nginx/nginx.conf
> [2]https://github.com/SUSE/Portus/blob/146076d543e8f1618f837dd7466c5f0fdc26438d/examples/compose/README.md
> [3]https://github.com/SUSE/Portus/blob/146076d543e8f1618f837dd7466c5f0fdc26438d/examples/compose/docker-compose.yml#L21
> [4] https://github.com/Djelibeybi/Portus-On-OracleLinux7

Cheers,
-- 
Raphael Geissert
