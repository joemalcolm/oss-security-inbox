X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1000" "Wednesday" "18" "January" "2017" "16:22:20" "+0100" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do54HFg5=COMtYKowz+9ZJg6WK67EqeQavSNCFb_uUVssg@mail.gmail.com>" "40" "[oss-security] CVE-2017-2591 389 Directory Server: DoS via OOB heap read in \"attribute uniqueness\" plugin" nil nil nil "1" "2017011815:22:20" "[oss-security] CVE-2017-2591 389 Directory Server: DoS via OOB heap read in \"attribute uniqueness\" plugin" (number mark "U       cbuissar@red Jan 18   40/1000  " thread-indent "\"[oss-security] CVE-2017-2591 389 Directory Server: DoS via OOB heap read in \"attribute uniqueness\" plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13827 invoked by uid 550); 18 Jan 2017 15:22:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13807 invoked from network); 18 Jan 2017 15:22:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+feCQ8zWZFY6MEWi0uAD/k1W5WVJiAiUuznautcBNV4=;
        b=L7P3Ayv/3iLchWypyQnpwJwdW6FiUOgPCCY5pva16XK1fKTc6bgIWTjQxpS2h8XY/U
         qzFS144TvmJWG8Mmcz7ugbNBoegVMe0la2CxRZlv0mNVDrbwMEfg7A6cIaV29lMBBGum
         yAJvdMzpka/1sbQajqzkOQWjfLUztl6oDEoAMsc6hHKcYwDpIPZGPlD3SQw9pekmPfKE
         Yd0g4j0n5LSQJMZ11NJVT2O6NwrhlNY9nryPerd65FdZwM1a6eeIeNGgt5SVgGdqXc/Y
         RHS2bFUzOhlS3ERMdaYY8CQzrwnusK3ZLmhbcDncqJihg4sPpczVuEmxKA5kS20E/CJo
         PhHw==
X-Gm-Message-State: AIkVDXJLBg0Iiq4zlkLqtF/Y7gZwtq41rSI7yWqw3jvrrcQ6mGFIP+Xxn0WNiP6JyhPxMB3Pb6xQFKikN9oPLOX5
X-Received: by 10.176.18.206 with SMTP id o14mr2148649uac.58.1484752961125;
 Wed, 18 Jan 2017 07:22:41 -0800 (PST)
MIME-Version: 1.0
From: Cedric Buissart <cbuissar@redhat.com>
Date: Wed, 18 Jan 2017 16:22:20 +0100
Message-ID: <CAKG8Do54HFg5=COMtYKowz+9ZJg6WK67EqeQavSNCFb_uUVssg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=f403043613eed40a7305465ffc1b
Subject: [oss-security] CVE-2017-2591 389 Directory Server: DoS via OOB heap read in
 "attribute uniqueness" plugin

--f403043613eed40a7305465ffc1b
Content-Type: text/plain; charset=UTF-8

Hi,

This is to disclose the following CVE:

CVE-2017-2591 389 Directory Server: DoS via OOB heap read

Description :

The "attribute uniqueness" plugin did not properly NULL-terminate an array
when building up its configuration, if a so called 'old-style'
configuration, was being used (Using nsslapd-pluginarg<X> parameters) .

A attacker, authenticated, but possibly also unauthenticated, could
possibly force the plugin to read beyond allocated memory and trigger a
segfault.

The crash could also possibly be triggered accidentally.

Upstream patch :
https://fedorahosted.org/389/changeset/ffda694dd622b31277da07be76d3469fad86150f/
Affected versions : from 1.3.4.0

Fixed version : 1.3.6

Impact: Low
CVSS3 scoring : 3.7 -- CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L

Upstream bug report : https://fedorahosted.org/389/ticket/48986

Best Regards,


-- 
Cedric Buissart,
Product Security

--f403043613eed40a7305465ffc1b--
