X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["981" "Monday" "18" "February" "2019" "13:21:59" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSVO9HQDkChaAy0ULqfHgMCODtaaLX9sPgz6OyFueUm9A@mail.gmail.com>" "35" "[oss-security] CVE-2019-3812 - qemu - Out-of-bounds read in hw/i2c/i2c-ddc.c allows for memory disclosure" "^Date:" nil nil "2" "2019021803:21:59" "[oss-security] CVE-2019-3812 - qemu - Out-of-bounds read in hw/i2c/i2c-ddc.c allows for memory disclosure" (number mark "        wmealing@red Feb 18   35/981   " thread-indent "\"[oss-security] CVE-2019-3812 - qemu - Out-of-bounds read in hw/i2c/i2c-ddc.c allows for memory disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5753 invoked by uid 550); 18 Feb 2019 03:22:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5732 invoked from network); 18 Feb 2019 03:22:23 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=EDOdsBRt/SUHIahZOsOO00Lvjql66b5jXoBzcDGYUe0=;
        b=dMWskHatELubkfit6S4QhoBAxTabD8J/To4Z0rsDu77RSnqqXjBVZqWixI3EOER/YD
         1/yVuvXL1VSahTCnx2xZBLlHm8T7in672YjRTrOEEdR6eQQ0Ij6GroQu5mlGILreAYoS
         MlUa0jqjED1NSZ/kXnOHCEPzuJjq0aJbHRtPVZ2MIIHapwHzd3wZ7cpDKn6JSZrt8Cmw
         +/RaMG+6bMkpuJ9srx+OFXRDe5vXL3QfSImQJOGkMnZ2LIF6flb3xSp/q9foLA+KYPzR
         XAsZbiCKJUSpB9PbukdqFxt9PHar6WXTco2eW7MlDsE8Jv+sz98vb2Flc4bfi5sv5gs/
         FXng==
X-Gm-Message-State: AHQUAub4itpxkIU/b5alsCmOdAsMDLpcd+fS+b9IozhgZCQ1s86Zq3e/
	dpCIMkeCQwPlZlNjRtdiGTrRvTJQkhMxfu3lAQs5sXfJVEc=
X-Google-Smtp-Source: AHgI3Iacm5f4T5XszQbHmSFWEhX5veBJ4yP0qqqb3HqTZqR6SDWEVR5Te2Na0hx5aRwnWRueGRjcjpi8YlUPexHkuP4=
X-Received: by 2002:a6b:8ed6:: with SMTP id q205mr14548842iod.161.1550460131172;
 Sun, 17 Feb 2019 19:22:11 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CALJHwhSVO9HQDkChaAy0ULqfHgMCODtaaLX9sPgz6OyFueUm9A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 18 Feb 2019 13:21:59 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-3812 - qemu - Out-of-bounds read in hw/i2c/i2c-ddc.c allows
 for memory disclosure
To: oss-security@lists.openwall.com

QEMU through version 2.10 through to 3.1.0 is vulnerable to an
out-of-bounds read of up to 128 bytes in the hw/i2c/i2c-ddc.c in the
function i2c_ddc() function. A local attacker with permission to
execute i2c commands could exploit this to read stack memory of the
qemu process on the host.

This was fixed upstream in commit 5b267840515730dbf6753495d5b7bd8b04ad1c

Systems without a monitor connected are affected, as are virtual
monitor is presented to virtual guests.  Systems with no graphics
cards attached to the virtual host are not affected.

This seems to be an information leak of stack contents which can be
used to defeat some kernel level protections and simplify further
attacks.

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1665792

Github patch on qemu:
https://github.com/qemu/qemu/commit/b05b267840515730dbf6753495d5b7bd8b04ad1c

Thanks,


-- 
Wade Mealing

Product Security - Kernel, RHCE

Red Hat

wmealing@redhat.com

TRIED. TESTED. TRUSTED.
