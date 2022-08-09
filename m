Received: (qmail 23694 invoked by uid 550); 9 Aug 2022 12:26:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32075 invoked from network); 9 Aug 2022 08:44:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660034672;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XvK3rIHIVeYyB8Dxsl8a+YVXBDdwa7NI5xclhVeVCo4=;
	b=ftlg1WGF0WehtUDbXOqHVbH3UoxBKs/PQ30QfEgVRlJ8TVNmRajwjk8Gd6uaODWp3rGZ1Q
	u+xcUQveZWGY30tVJpkRtYvA2kQHv2EnnYhJBYrUKYwpLyaU1HS+ZDkhJdtZ9K3NfoAoYh
	M/A3652GOoS/9XH1PQnOXhrJX0qcIjI=
X-MC-Unique: zZhrlsVxPZCM6SvH0oG7Pg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:cc:organization:from
         :references:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc;
        bh=XvK3rIHIVeYyB8Dxsl8a+YVXBDdwa7NI5xclhVeVCo4=;
        b=P8fMNQK5qSJyGo+/m871nbUwFAQj7fXzWOTGQs/IkoT4FwDB3EJJz7ZHk9xBl474zA
         lFZ+hQzAZZGTT7DpRi1bwEco5PKg2fDvHBQ+feDfbrB1/dpt73kn3VnTlO/AQfP73WFW
         TeKRMNV7NIo1TDOUYCpamrdtQOm2N1z71WCSJFH/JR9Qw0wHImtL1EeI+pl2R8bm5lYG
         IyluZtg3T4CCAIIbEZkTs3GM85As8Wg5M3HMc1uheHBjQxVR1kY0FSBgRebPlYwdkzC5
         g2c1VXDQc1Bk9wF8vKzW+ml3WeDixvH/vQMqeyQPeSTnO3XO/P3xFdT4XSfiO6reubf2
         rUsg==
X-Gm-Message-State: ACgBeo0BpTYEdVTeIO9oCkMTY6NATQtaHag5ZxW3iJ7HI+pWlq9b4bol
	akc3a0lXafP0R3CfIs5ewJpiAZrCzNu1pvQMbeVG9QwVNtZ8a1F2XSBPsQZg/O6SZGNWlQR9f2M
	sWqu5HEuPSColNQVSRsdh3tUHoZp5DY6gh2CD5Kn4QD1gwyUautPVKSTY7tmFNERZm/+P9TbC2f
	v0
X-Received: by 2002:a5d:64c1:0:b0:222:cd99:3dd with SMTP id f1-20020a5d64c1000000b00222cd9903ddmr5134955wri.448.1660034669628;
        Tue, 09 Aug 2022 01:44:29 -0700 (PDT)
X-Google-Smtp-Source: AA6agR5tFqm6Rn/Fq00TEwPN9zfVruGrH1vnmP1ooKIZQYPVjGpLkwtevJJYE/EvR3pienmRZ0lS/g==
X-Received: by 2002:a5d:64c1:0:b0:222:cd99:3dd with SMTP id f1-20020a5d64c1000000b00222cd9903ddmr5134941wri.448.1660034669262;
        Tue, 09 Aug 2022 01:44:29 -0700 (PDT)
Message-ID: <85bceffa-b532-5cbc-d22d-485fd379a103@redhat.com>
Date: Tue, 9 Aug 2022 10:44:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: oss-security@lists.openwall.com,
 Demi Marie Obenour <demi@invisiblethingslab.com>
References: <1973d16e-bb3e-c5b2-74e0-cc2faf9db2bd@redhat.com>
 <YvFpTsZI8HRkMYYM@itl-email>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
Cc: Greg KH <gregkh@linuxfoundation.org>
In-Reply-To: <YvFpTsZI8HRkMYYM@itl-email>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2022-2590: Linux kernel: Modifying shmem/tmpfs
 files without write permissions

On 08.08.22 21:51, Demi Marie Obenour wrote:
> On Mon, Aug 08, 2022 at 09:18:27AM +0200, David Hildenbrand wrote:
>> Hi,
>>
>> I found a security issue (CVE-2022-2590) in the Linux kernel similar to
>> Dirty COW (CVE-2016-5195), however, restricted to shared memory (shmem /
>> tmpfs). I notified distributions one week ago and the embargo ended today.
>>
>> An unprivileged user can modify file content of a shmem (tmpfs) file,
>> even if that user does not have write permissions to the file. The file
>> could be an executable.
> 

Hi,

> Is Android affected by this, or do other protections (such as SELinux)
> prevent an exploit from succeeding? 

Android: short, don't know. They are affected if
* they are based on >= v5.16 OR they backported the patch
* and they have CONFIG_USERFAULTFD=y (I assume so)

My gut feeling is that we found this issue early enough before it got
part of many distros, including Android.

Regarding other protections: not aware of any.

> Also, is read access to the file
> necessary? 

We have to be able to mmap the file. Just like for the original dirty
COW (IIRC) we need read access.

> Are sealed memfds impacted?

Yes. I just extended my reproducer to modify content of a memfd that is
sealed with F_SEAL_GROW | F_SEAL_SHRINK | F_SEAL_WRITE | F_SEAL_SEAL.

> 
>> The introducing upstream commit ID is:
>>   9ae0f87d009c ("mm/shmem: unconditionally set pte dirty in
>>   mfill_atomic_install_pte")
>>
>> Linux >= v5.16 is affected on x86-64 and aarch64 if the kernel is
>> compiled with CONFIG_USERFAULTFD=y. For Linux < v5.19 it's sufficient to
>> revert the problematic commit, which is possible with minor contextual
>> conflicts. For Linux >= v5.19 I'll send a proposal fix today.
>>
>> I have a working reproducer that I will post as reply to this mail in
>> one week (August 15).
> 
> Can you try to make sure that a patch has made it into Greg’s stable
> trees by then?  Also, would it be possible to include a regression test?

That's the plan, hopefully there is feedback on the upstream patch
soonish, because backports usually rely on the fix being upstream. Greg
(cc) is aware of the issue.

Regarding regression test: I noticed that LTP has a Dirty COW regression
test [1]. Most probably LTP is the right place for that.

[1]
https://github.com/linux-test-project/ltp/tree/master/testcases/kernel/security/dirtyc0w

-- 
Thanks,

David / dhildenb

