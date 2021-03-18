X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1132" "Thursday" "18" "March" "2021" "07:04:00" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" nil "37" "Re: [oss-security] CVE-2020-35519 Linux kernel: x25_bind out-of-bounds read" nil nil nil "3" nil nil (number mark "U       carnil@debia Mar 18   37/1132  " thread-indent "\"Re: [oss-security] CVE-2020-35519 Linux kernel: x25_bind out-of-bounds read\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-35519 Linux kernel: x25_bind out-of-bounds read" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13454 invoked by uid 550); 18 Mar 2021 06:04:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13432 invoked from network); 18 Mar 2021 06:04:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IP/KHo1uAwjTQx7jktx06GFB9Ziy2hEXYihCv3/A2HI=;
        b=ktbpXoQ+qIJfe4k8vbWnn2+eyJMgDeUKxYKb/Ij1tauyYba/rZdMUnM80aCeSQDya7
         3EC/FV6mfoT7Fw99USDEHsOMcjfrTlEwPe3SLtCmlD+fiU7nWk5b0LTxhtj2XKxcDuDs
         qXT8xyWYe4GICq0JK2YAofc5DXiBVknMRC2UW8jJd0FJLoP9MED5R9SoxZWD5J5z+mVa
         G2pbL2M7L2Ek6oxeD9aRdDg8GFIynpSbfoNRCbqrwJo8VaWVB+DnSxXl8SK4uSI1Q+0F
         RpsCtkl2RwfvdjuEjjilJFS7S1IILOp+eAxIUW0IOBNJNBQ8/GhUrKd6+yP1TmyeMxdN
         YQ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=IP/KHo1uAwjTQx7jktx06GFB9Ziy2hEXYihCv3/A2HI=;
        b=ECd3MWyzVtdOLcKGXIeIOi8CE5gCa3pW6K8PJ+9UoM6dCNawalG2MAYTPFufwu8tzk
         6UCugGmJhg4HxwUJTuSGxmirR3v65gnvFF3yfp39BdUQ+tZH0W/JRB7I4iEvn8sWAVko
         htfWmzZ9Ybdm3s8Y0JVKTU+xDyHkPM3aQ21sQQoCip2A3XMKXp0TRbO4MWr9lDyWArec
         588v9p98bzETn4kU2+ChNmVIjg4C0hjlU9px84XrAXICZmvVB6fE1xzvlpq7i2Tyrg4f
         rwoVFdJ6t0/4/VfLAElR+BVpvWmxL7ZVDdWu1DMlMBYsqoCbA1XF7KMvJi6eeY4frU+v
         MY7A==
X-Gm-Message-State: AOAM5321phzqAArBGRexPu+ptJTDGHtyIIEj+NuRHYDjXbfjxOsURCyz
	OnuaOtWZlfj6G9j7EinfWIgQuaaMB5vZ4A==
X-Google-Smtp-Source: ABdhPJyI4vvrizeB8nIrLBCsYYd+IZd6a0Otztj3QulA8vFO+oYvXBK7j01nn5JtzdYaPQEvsFX+nA==
X-Received: by 2002:a7b:c195:: with SMTP id y21mr1910513wmi.178.1616047441954;
        Wed, 17 Mar 2021 23:04:01 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 18 Mar 2021 07:04:00 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20210318060359.GA7529@lorien.valinor.li>
References: <CAKx+4-qm94y68oc4fT20OpYjs1kXn6mTMem7WD18DtAyFsWzdw@mail.gmail.com>
 <YFJxUTwEHsaHhO7/@sashalap>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YFJxUTwEHsaHhO7/@sashalap>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] CVE-2020-35519 Linux kernel: x25_bind
 out-of-bounds read

Hi,

On Wed, Mar 17, 2021 at 05:14:57PM -0400, Sasha Levin wrote:
> On Thu, Mar 18, 2021 at 01:20:18AM +0530, Rohit Keshri wrote:
> > Hello Team,
> > 
> > An out-of-bounds (OOB) memory access flaw was found in x25_bind in
> > net/x25/af_x25.c in the Linux kernel. A bounds check failure allows a local
> > attacker with a user account on the system to gain access to out-of-bounds
> > memory, leading to a system crash or a leak of internal kernel information.
> > The highest threat from this vulnerability is to confidentiality,
> > integrity, as well as system availability.
> > 
> > 'CVE-2020-35519' was assigned by Red Hat.
> 
> This mail doesn't even mention where/how this is fixed. Is this
> 6ee50c8e262a ("net/x25: prevent a couple of overflows")?
> 
> If so, it's already fixed in all stable kernels.
> 
> How can the issue cause a leak btw?

Just as additional reference: I think this goes back to this report:
https://www.openwall.com/lists/oss-security/2020/11/15/2 

In upstream this was fixed then if the above is correct in

	v4.4.248
	v4.9.248
	v4.14.211
	v4.19.162
	v5.4.82
	v5.9.13
	v5.10-rc7

Regards,
Salvatore
