Received: (qmail 19679 invoked by uid 550); 31 Mar 2026 07:44:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19637 invoked from network); 31 Mar 2026 07:44:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1774943032;
	bh=1Xw9H1iXZI+ydceExaZ8/Z0nRdm91667OzZov3AG8pw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=Qo/t98O/VPSaPl7+jtP2+0wbb1JlRLRpp88CJpC1u+jBDjD9IqzELL81ptGcoF94p
	 FndiZYDq1H1N8ccFvcplR9yhUqn6Ya0S5H/VBKCLyVDU1GZROC+fa/DT//E0+OIgjD
	 nFRB4+EjL7+bTF2DPkYO+cMmD2vVLIdQna0w0CAQTiHp25wqtp43TJLXfPpnTi9Bip
	 pK4rbQrLISodCDRaPxcGzmGV6WGjac+kViDMXdU2IiCGmHPlTBqI5MZk6FsznWZYOC
	 96ZcvVMxDXfSfqoHU1NlnI5Wh0kE0URfiSrcf3pO873yrGZm/p9z/xJboCXiiHUKs4
	 JWkjAywBmdW86WEyvlIlHQ/WUgMwrtzXcnnCjhMaoOhztM5+hR6lS3k1fbdTa9pxI7
	 6819hjDfcYV9hvE6mJ/nM6u/xK8eW+7ix5Gt8JjCuWKYDELmJVuHudXWXBgj+2x5Mv
	 LHecKy7WIMVzmTOdF/BfKUBbIwZ0SGOVV29Fk9atxGHOjzURsYOKE8uStYwsZpf9Ci
	 OPhh/aiiG+Sq1t05fLgC7aEOOvLnwjytDXo4GLkWnI+gBAF0rJKEtgp6cScl4gok5y
	 WcQpwaxSrhuQzWSUI/I9t+TWUa80A21dCwWFKNbMRaxoGUOmo65LOGNlXDojIqI1Lr
	 XQeNJmiz/vFOMQu0IwY/9iTQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774943031; x=1775547831;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Xw9H1iXZI+ydceExaZ8/Z0nRdm91667OzZov3AG8pw=;
        b=hGcferPt9adwnpIEPt00z8R4HRQqxUSElp9kEoD5Yp2k8h1T6UH4e+M3sKZ2HEVkbl
         2D93ggAyP43pBfgk1B0Pe6+8zLSNZ9n4kbTy+e3sxZwcoXKaX1mAELoxRlJkM97+CXCE
         w0Bp83Gim/SuWW4UKSUsYJs0e1nE9q2owsDjUKZ4PmkD10HJpyNgVrUfrBxN4tiQk3Ik
         0oB/n8tq+9yjkGzWI6LcQdVnV95KKixXJEgSV6ZkwGM4nne3HoJGw1LEfsY0LZrlojpd
         vQnI864rEw8U6JL3CHgtGcZ9Pm2CtGhCz1GCPK6ZB5pQUQH4n+caFS6loXP+DabBfIsx
         42EQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKA/Suzu8V2ezgAGqeMB5GKB10NuC0hdcBiaLY0s1maa1/gGaWCNcYbQxeCCCxks3o51hEBPQSuxo8510=@lists.openwall.com
X-Gm-Message-State: AOJu0YyfX6UPtpVAu15i3VHLNcCH2PjNmg4f+7I5QxVcdpl14lWdsQDc
	C6yYTDysmbyiTTA5OwLr3MSU3OosYSQu0b7819sRWZehR84wIDaJbIL9logYfLKLycYdJv++xLz
	VnAHgRFcDFFcWh2DDQYZs8mjrfIwXd47RD8P1iHHSrwOf3lKsFnuaAey3ZC0CXfveMK6hTf7zgf
	tQ4Dcg1k8ZvQ==
X-Gm-Gg: ATEYQzxXqhOprmfazsYEtSVxdJJRTZar5NfKh0QOBy8K4LayA8rf+AeqezC0InF8Wom
	qT+YGoWwy8jwELNeDFVaNdkncxrF2A1QnejAuMx7oOjBgG/XZAs1jSPCVZeflU8j4FiZy4C57u4
	P5qVp6iaSNjjatWWwZhmy1eayGZ5W6yvCUbr4FBpKM3ehgdD4chMOhK4AkrRf2OF8FAyz9vKZZb
	Tj/spnOUQE/slaRV5yTv3vVdW3AtB2/4p/8z3ETN0TBwPFQuAqSOSI7IUxAilJFMt866CBIb+ko
	wtNup/CE+jPjY28nAK4ZUY97oyP6eCbeIZ3vC+GC8AuMnxjNQ1rop4oS9nP+FnPqOJ++/okYWSl
	Z/f96PlFCENf+AS19JKW5OFoH5DdxfgeivCJB
X-Received: by 2002:a05:6a21:33a0:b0:39c:5624:ee42 with SMTP id adf61e73a8af0-39c8781788dmr17479090637.3.1774943030897;
        Tue, 31 Mar 2026 00:43:50 -0700 (PDT)
X-Received: by 2002:a05:6a21:33a0:b0:39c:5624:ee42 with SMTP id adf61e73a8af0-39c8781788dmr17479065637.3.1774943030320;
        Tue, 31 Mar 2026 00:43:50 -0700 (PDT)
Message-ID: <2856a7ec-f90f-4b74-b742-aaa15df179d7@canonical.com>
Date: Tue, 31 Mar 2026 00:43:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Qualys Security Advisory <qsa@qualys.com>, "cve@kernel.org"
 <cve@kernel.org>,
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
References: <20260312212345.GA2728@localhost.localdomain>
 <20260312213345.GA3105@localhost.localdomain>
 <20260326183559.GA22540@localhost.localdomain>
 <2026032744-resale-jeep-2d72@gregkh>
 <20260327145022.GA30102@localhost.localdomain>
 <2026032823-outspoken-haven-c701@gregkh>
 <f8de07b7-edc8-4ffb-ba71-612ad1e0ab80@canonical.com>
 <2026032950-chute-skinning-32dc@gregkh>
Content-Language: en-US
From: John Johansen <john.johansen@canonical.com>
Autocrypt: addr=john.johansen@canonical.com; keydata=
 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 lT9Q
Organization: Canonical
In-Reply-To: <2026032950-chute-skinning-32dc@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Multiple vulnerabilities in AppArmor

On 3/28/26 23:18, Greg KH wrote:
> On Sat, Mar 28, 2026 at 02:41:23PM -0700, John Johansen wrote:
>> On 3/27/26 22:55, Greg KH wrote:
>>> On Fri, Mar 27, 2026 at 02:50:42PM +0000, Qualys Security Advisory wrote:
>>>> Hi Greg, John, all,
>>>>
>>>> On Fri, Mar 27, 2026 at 07:23:24AM +0100, Greg KH wrote:
>>>>> On Thu, Mar 26, 2026 at 06:36:17PM +0000, Qualys Security Advisory wrote:
>>>>>> Since two weeks have passed now (since the fixes were released), would
>>>>>> it be possible to please assign CVEs to the remaining seven AppArmor
>>>>>> vulnerabilities:
>>>>> We were told that these all required elevated privileges to hit, and so
>>>>> were not classified as individual vulnerabilities.  If the Apparmor
>>>>> maintainer tells us that these really all should be assigned a CVE, we
>>>>> will be glad to do so, but until then, we're just going to stick with
>>>>> the ones that we have assigned already.
>>>>
>>>> Thank you very much for your reply! Adding John Johansen then
>>>> (AppArmor's maintainer), since he will have the authoritative answer.
>>>>
>>>> The problem is that containers can be allowed to manage their own
>>>> AppArmor profiles (via AppArmor namespaces), in which case an attacker
>>>> inside such a container can directly write to AppArmor's .load, .replace
>>>> and .remove files and trigger all these vulnerabilities, even without
>>>> CVE-2026-23268 (the confused-deputy vulnerability).
>>>>
>>>> The way we see it:
>>>>
>>>> - either CVEs should be assigned to the remaining seven vulnerabilities,
>>>>     in light of the container use case described above;
>>>>
>>>> - or CVE-2026-23269 ("validate DFA start states are in bounds") should
>>>>     be rejected, because this vulnerability is no different from the other
>>>>     seven vulnerabilities.
>>>
>>> Looks like this one should be rejected, but I will defer to John as to
>>> what he wishes to have done here, as he is the maintainer of this part
>>> of the kernel.
>>>
>> It is possible to exploit from a user namespace under the correct
>> circumstances. Specifically
>>
>> A privileged process must do the setup, such that it creates a policy
>> namespace (requires administrative privileges) and ties the "root"
>> process of the user namespace to the the policy namespace. The "root"
>> user of the user namespace, then has privilege to load policy to the
>> policy namespace tied to the container. The root user of the container
>> could then use the policy load bugs to attack the kernel.
>>
>> Incus/LXD can setup a policy namespace for a container, the patch
>> allowing LXD to do this is what introduced the LPE.
>>
>> Without the LPE a regular user, or even root in a user namespace
>> can not use the other bugs to attack the kernel, except in the
>> case outlined above where a privileged process setups a policy
>> namespace and ties it to the container.
>>
>> I should also note there is an easy mitigation for the container
>> case. Sysadmins can set the sysctl unprivileged_userns_apparmor_policy
>> to false. This will stop root within the container from being able
>> to load policy even when the policy namespace is tied to the user
>> namespace.
>>
> 
> So do you feel the above CVE should be revoked, or that CVEs should be
> issued for all of the other commits as well?
> 
As much as I dislike it, with lxd/incus actively allowing use of policy
namespaces. I think CVEs should probably be issued for the other commits
as well.


