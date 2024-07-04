Received: (qmail 9635 invoked by uid 550); 4 Jul 2024 11:00:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20238 invoked from network); 4 Jul 2024 00:58:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720054709; x=1720659509; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fIWN+xvq4mnmzki9q7EDRiuvU4LYANHgKCBjXTIMWXo=;
        b=YcKFEhDiZLpT9r67yfC7uMvLDjzCsBjU0aJy6aLCKd6mPKWZu9HxSPq8vlvzAABd+I
         PiUodbObypPHrk95A3XIlo3he5tjqTfAKdIq9xkmfEbiVSpOTihVHl5JBxrUBOnYaJVh
         fHYv2hnJ7zvx4eXW/nMQGNCW49LGdMq2lTUyJMMzOUkgplG28xwshGi0UghkpoqRKZGR
         Pm322xLr7Ev2VgvKuAv5L9xI5rF+/KsvfoUKvD5QTJ16peDGedM94PVCZ8M4GBTilNXv
         V0j9PY0o3wOYyeJS8t2XoXj6w729mj1IRqTdX7TuTSzl0ld+cip/BIc+TqIaMx77tqj5
         0dMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720054709; x=1720659509;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fIWN+xvq4mnmzki9q7EDRiuvU4LYANHgKCBjXTIMWXo=;
        b=YWDbzCekoIxv9B6aXMuj9KC6QHP+fXXs9zC11RhElpJzU0URGWf7xC/FEROHAtjwYF
         wtfl69ZgUnZwtN85CTtWgMONN8E49//IiC33ULdBq0P8eF99Fs1bK6cMfF/6Ww2EKxLc
         3aRdauJPolHvUkn+nwzOILW9sN4gMXnEzyLHi+6Jkvxq42b6vtU6jCy2a8cnOQMIzbCt
         vfvhixyrs7EB6JCFp98otTII7nkojOYU5a6XF8cfdKwvFWYQdmT7BCu6Ox2lfg2kdEGM
         Cfpi0sqZ484EYHIEnc20nc5gpOIfkREs7MACLEKKqFwk3NJ7yiL6gIXOelKNK2VUyKbt
         5I3Q==
X-Gm-Message-State: AOJu0YzZI6ZOdp35JUmdcEE5P7OqTMF/m1EC84n7H4mwqnk9RZJulWPV
	4ps05v3sAKkNB8X3b69U2T6aOzBNTZq8GIgBC1wji5+dbvtevrgZxaMCcw==
X-Google-Smtp-Source: AGHT+IE36liA6HM4MJS36fTKDCQ8sMYZ8T1hSKyZdXvjzWCsSOcC/ZYHf7bY7IxgmSK7IyQMObLwTg==
X-Received: by 2002:a4a:5487:0:b0:5c4:396e:6ef1 with SMTP id 006d021491bc7-5c646ac19d0mr348796eaf.0.1720054707037;
        Wed, 03 Jul 2024 17:58:27 -0700 (PDT)
Message-ID: <6685F3B1.6090508@gmail.com>
Date: Wed, 03 Jul 2024 19:58:25 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <20240701083838.GA12787@localhost.localdomain> <6684B10C.3070904@gmail.com> <CAH8yC8=zAGQsdCXPRM3LJsoMJS+AhXLJ01awX4k3DpTbxoMqWg@mail.gmail.com>
In-Reply-To: <CAH8yC8=zAGQsdCXPRM3LJsoMJS+AhXLJ01awX4k3DpTbxoMqWg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on glibc-based
 Linux systems

Jeffrey Walton wrote:
> On Wed, Jul 3, 2024 at 2:39 AM Jacob Bachmeyer <jcb62281@gmail.com> wrote:
>   
>> Qualys Security Advisory wrote:
>>     
>>> [...]
>>>       
>> A thought occurred to me late last night:  this exploit required the use
>> of a very long fake user name (~128KB).  No legitimate account will have
>> such a name; should defense-in-depth motivate limiting maximum user name
>> length to some (un)reasonable value?  (The actual longest user name on
>> the system cannot be used to set the limit because doing that would leak
>> the length of the longest valid user name.)  I doubt any real system has
>> even 256-byte-long user names, so a 1KiB limit (perhaps by default, with
>> a configuration option (I propose "MaxLoginNameLen" to start a
>> discussion) to raise or lower it?) would be far beyond any reasonable
>> need, but would (or so it seems to me) have made at least this exploit
>> much harder, if not impossible.
>>     
>
> $ grep -IR LOGIN_NAME_MAX /usr/include
> /usr/include/bits/confname.h:    _SC_LOGIN_NAME_MAX,
> /usr/include/bits/confname.h:#define    _SC_LOGIN_NAME_MAX    _SC_LOGIN_NAME_MAX
> /usr/include/bits/local_lim.h:#define LOGIN_NAME_MAX            256
> /usr/include/bits/posix1_lim.h:#define  _POSIX_LOGIN_NAME_MAX   9
> ...
>   

I see.  So there is a declared system limit (apparently 256 bytes on GNU 
systems, but allowed to be as low as 9 bytes in POSIX) on the length of 
a valid user name.  Why does sshd not, as a defense-in-depth measure, 
immediately drop the connection if a user name longer than that limit is 
received?  ("We had not thought of that." is a perfectly good answer 
here, of course.)

Solar Designer mentioned a previous patch that avoided sending 
excessively long user names to PAM in response to a PAM implementation 
that apparently has exploitable overflows.  I would suggest adding 
another check using LOGIN_NAME_MAX as the limit to the code where the 
user name is first received.  If a user name that cannot possibly be 
valid on the system is received, drop the connection immediately without 
further parsing.  This would potentially add a risk for fingerprinting 
based on LOGIN_NAME_MAX, but that is probably minor compared to other 
ways to identify a remote OS and this check would have prevented the 
presented Ubuntu 6.06.1 exploit of this issue.  It might make other, 
yet-to-be-found issues infeasible to exploit.

I argue for it as a defense-in-depth measure.


-- Jacob

