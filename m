X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2703" "Monday" "13" "February" "2017" "14:26:11" "+0000" "George Dunlap" "dunlapg@umich.edu" "<CAFLBxZYDfzwa_Te7ESD8syt7N79pZzgTEXDZE4=PuHzn0jHSug@mail.gmail.com>" "79" "[oss-security] Re: [Xen-devel] [Xen-users] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy" nil nil nil "2" "2017021314:26:11" "[oss-security] Re: [Xen-devel] [Xen-users] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy" (number mark "U       dunlapg@umic Feb 13   79/2703  " thread-indent "\"[oss-security] Re: [Xen-devel] [Xen-users] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy\"\n") "<20170211084954.xxo6puddj5b6jq6f@MacBook-Pro-de-Roger.local>" ("<E1ccAXl-0000Q3-Dy@xenbits.xenproject.org>" "<20170211084954.xxo6puddj5b6jq6f@MacBook-Pro-de-Roger.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3563 invoked by uid 550); 13 Feb 2017 14:57:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22203 invoked from network); 13 Feb 2017 14:26:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=oDLn+3GgQ1/PJ0kktsbQDIaCJZUGk1/G3YBXdAo7Nxs=;
        b=aZkrUjqHFarL7532QC7bDDwTNH3wu5gusar++PbIYZ6zHT/GEzlxbzfpdxbQJr3mvy
         lJUfQtXWCECR86fttJS3t2Y5L6RwN9k+h1ifrd73XdYyDHCkHzrVpRSoXc/+1/gxviTw
         3p0aL6Bj6EWHowqmqq7T9cDy3Nqe5AxBYVmCuJ7BGd58N1Ur4czIzZeIECSaz/TKtH6u
         nbOFdBu8cdWX0cDdwMAWbXNk97GrMdZ2+5cGRuvTGpqldOSLzcyM1kSgdj+zPr9kW7PY
         PPx8YuEuUZb0qqR6UkVSngoEEq3XGCTJ3orSagcVz/+FRgXuBIOaD+xN6BjnD8eEMmx2
         Mchg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc:content-transfer-encoding;
        bh=oDLn+3GgQ1/PJ0kktsbQDIaCJZUGk1/G3YBXdAo7Nxs=;
        b=kfBB7On6+v3L9BYAtXCWKhfprKg23ljun3UU15F7swhB1n4HtY4vzEPgtIU30d9flk
         d5f1+4aco0/P4houm0Az7jF8XnqUMVtbNndBmI0ceqRA3V3VlD+EcHizyvi4uxmbGtbO
         YKHACFp179G97mel8UWyMnvs9vhIc7jU7wl1lPMl6zjfXG8NBX2ehOOSw8ezO6hWoF0i
         2ep8Mrkq4Q1BzYpi7+LA0fVY35uGOoBLW8jnmwE2TgAqUWvMEWWr2dFwm6DLCoYHDuGy
         R+sLjw4JIsCA1aVosn+4rFGmuTlLzZVEXnljRe2sSfiQLKxtnDSFRHo2h+XxJ7U5yn9+
         VDhQ==
X-Gm-Message-State: AMke39l46TQDYKz7G9D+8c8lbPUl6Dq8hFUOvj4776IR7k7n8PgvwWO6AyA6DunQhnadGwHwoWG4kq2uDrtYIw==
X-Received: by 10.200.52.197 with SMTP id x5mr23064565qtb.31.1486995972461;
 Mon, 13 Feb 2017 06:26:12 -0800 (PST)
MIME-Version: 1.0
Sender: dunlapg@gmail.com
In-Reply-To: <20170211084954.xxo6puddj5b6jq6f@MacBook-Pro-de-Roger.local>
References: <E1ccAXl-0000Q3-Dy@xenbits.xenproject.org> <20170211084954.xxo6puddj5b6jq6f@MacBook-Pro-de-Roger.local>
From: George Dunlap <dunlapg@umich.edu>
Date: Mon, 13 Feb 2017 14:26:11 +0000
X-Google-Sender-Auth: OSTrVyt7UA9Pc_qG9ls-SWp-9cc
Message-ID: <CAFLBxZYDfzwa_Te7ESD8syt7N79pZzgTEXDZE4=PuHzn0jHSug@mail.gmail.com>
To: =?UTF-8?Q?Roger_Pau_Monn=C3=A9?= <roger.pau@citrix.com>
Cc: "Xen.org security team" <security@xen.org>, "xen-users@lists.xen.org" <xen-users@lists.xen.org>, 
	xen-announce@lists.xen.org, oss-security@lists.openwall.com, 
	"xen-devel@lists.xen.org" <xen-devel@lists.xen.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: [Xen-devel] [Xen-users] Xen Security Advisory 208 (CVE-2017-2615)
 - oob access in cirrus bitblt copy

On Sat, Feb 11, 2017 at 8:49 AM, Roger Pau Monn=C3=A9 <roger.pau@citrix.com=
> wrote:
> On Fri, Feb 10, 2017 at 12:43:17PM +0000, Xen.org security team wrote:
>> -----BEGIN PGP SIGNED MESSAGE-----
>> Hash: SHA1
>>
>>             Xen Security Advisory CVE-2017-2615 / XSA-208
>>
>>                    oob access in cirrus bitblt copy
>>
>> ISSUE DESCRIPTION
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> When doing bitblt copy backwards, qemu should negate the blit width.
>> This avoids an oob access before the start of video memory.
>>
>> IMPACT
>> =3D=3D=3D=3D=3D=3D
>>
>> A malicious guest administrator can cause an out of bounds memory
>> access, possibly leading to information disclosure or privilege
>> escalation.
>>
>> VULNERABLE SYSTEMS
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> Versions of qemu shipped with all Xen versions are vulnerable.
>>
>> Xen systems running on x86 with HVM guests, with the qemu process
>> running in dom0 are vulnerable.
>>
>> Only guests provided with the "cirrus" emulated video card can exploit
>> the vulnerability.  The non-default "stdvga" emulated video card is
>> not vulnerable.  (With xl the emulated video card is controlled by the
>> "stdvga=3D" and "vga=3D" domain configuration options.)
>>
>> ARM systems are not vulnerable.  Systems using only PV guests are not
>> vulnerable.
>>
>> For VMs whose qemu process is running in a stub domain, a successful
>> attacker will only gain the privileges of that stubdom, which should
>> be only over the guest itself.
>>
>> Both upstream-based versions of qemu (device_model_version=3D"qemu-xen")
>> and `traditional' qemu (device_model_version=3D"qemu-xen-traditional")
>> are vulnerable.
>>
>> MITIGATION
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> Running only PV guests will avoid the issue.
>>
>> Running HVM guests with the device model in a stubdomain will mitigate
>> the issue.
>>
>> Changing the video card emulation to stdvga (stdvga=3D1, vga=3D"stdvga",
>> in the xl domain configuration) will avoid the vulnerability.
>>
>> RESOLUTION
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> Applying the appropriate attached patch resolves this issue.
>>
>> xsa208-qemuu.patch    qemu-xen, mainline qemu
>
> The patch doesn't apply cleanly against the QEMU-upstream found in Xen 4.=
7.1:
>
> http://beefy9.nyi.freebsd.org/data/110amd64-default/433828/logs/xen-tools=
-4.7.1_2.log

I'm working on an updated advisory., but in the meantime, Stefano
checked in backported patches to the qemu-xen tree already; you can
get those from the staging-4.* branches.

(That doesn't address the qemu-traditional issues -- for those you'll
have to wait for the updated advisory.)

 -George
