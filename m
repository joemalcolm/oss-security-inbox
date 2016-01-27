X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1155" "Wednesday" "27" "January" "2016" "16:40:41" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160127154041.GA9254@eldamar.local>" "43" "[oss-security] CVE Request: Linux: NULL pointer dereference netfilter/nf_nat_redirect.c in nf_nat_redirect_ipv4 function" nil nil nil "1" "2016012715:40:41" "[oss-security] CVE Request: Linux: NULL pointer dereference netfilter/nf_nat_redirect.c in nf_nat_redirect_ipv4 function" (number mark "U       carnil@debia Jan 27   43/1155  " thread-indent "\"[oss-security] CVE Request: Linux: NULL pointer dereference netfilter/nf_nat_redirect.c in nf_nat_redirect_ipv4 function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1877 invoked by uid 550); 27 Jan 2016 15:40:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1856 invoked from network); 27 Jan 2016 15:40:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Vx72mkFdAiCW/nI7ThSVhYG5B54o003Su63AF4R4Y1E=;
        b=pfsKVRoAyrDxO+V4lHMMW+Gdi+zHlm5pbcMKsZd/Oi9nNROSi8SUNKqyTcLS89IFBr
         M5HmvK9V7gcUs9H0WvpX+w/eiW5MyKFZNVsISRh4rIj41rQzptVjT5CMyPsa2agYLVt2
         duYGC1AEVb/QwG/hwB0Dw4XSaclyzZ0L+OZ+EQcmy9lL7BVZWCvRzDn66KnFwRBdhJY7
         xvCKB39HMVDZ7P6j6siFqx7PUWDwFt+qhSzx5hsmhhnT5B6uaM6cweVC2GLNPqz1Gyaw
         OlNJFDhexv1Bx2i/653exT58v+g23fA5DevydfOB84Btm0fFNEERdCO7KO1Uj8kQ3DKz
         W1Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=Vx72mkFdAiCW/nI7ThSVhYG5B54o003Su63AF4R4Y1E=;
        b=gf2s+tQsYdgJiH0IDQ2LX+pViJhgblil6pM6/9ybxfq408OUtbqjir+8yJ3KV4trdZ
         x0e+gOzP59pp7plwHVcYfdzAvkmiPn8OTN9hMETz0I23ctufKXL1P1ETy4XiaJfPe1Hv
         1l82qF8NLEipOFBCUicvcWDfKyXYCAjxO1lRkE7E+6yT8Mf05FG1mfuZ4Dgvn0QkeOsE
         jjUixIQXG8oGkzN2D3PX51c6h+iS/hoeE/j3MT/uHu398VLdEqJYP//qsY3Izb/fYOhR
         RQSKWm64lsj12pLd5P8Ly2VaTmqdU02q2UaEEbcQ31UnPxFOwG0Nfo5gFKy5pxnQBSO/
         8CQw==
X-Gm-Message-State: AG10YORQHPpZOtsVHB9TGtG34qpJ8leUATv5I0VSOpU2tNJmv576UACQq+6RfyfCu3sncA==
X-Received: by 10.194.83.136 with SMTP id q8mr29838359wjy.51.1453909242948;
        Wed, 27 Jan 2016 07:40:42 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 27 Jan 2016 16:40:41 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160127154041.GA9254@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: Linux: NULL pointer dereference
 netfilter/nf_nat_redirect.c in nf_nat_redirect_ipv4 function

Hi

>From https://bugzilla.redhat.com/show_bug.cgi?id=1300731 
> Kernel NULL pointer dereference vulnerability was found in
> netfilter/nf_nat_redirect.c in nf_nat_redirect_ipv4 function introduced by
> commit 8b13eddfdf04cbfa561725cfc42d6868fe896f56 ("netfilter: refactor NAT
> redirect IPv4 to use it from nf_tables").
> 
> Vulnerable code:
> 
> unsigned int
> nf_nat_redirect_ipv4(struct sk_buff *skb,
> ...
> {
> ...
> 		rcu_read_lock();
> 		indev = __in_dev_get_rcu(skb->dev);
> 		if (indev != NULL) {
> 			ifa = indev->ifa_list;
> 			newdst = ifa->ifa_local; <---
> 		}
> 		rcu_read_unlock();
> ...
> }
> 
> 'ifa' is not checked before access and can be accessed even if it's NULL.
> Crash might happen when packets that need to be redirected somehow arrive on an
>  interface which hasn't been yet fully configured.
> 
> Patch and crash report:
> 
> https://lkml.org/lkml/2015/12/2/618

This was introduced in:
https://git.kernel.org/linus/8b13eddfdf04cbfa561725cfc42d6868fe896f56 (v3.19-rc1)

Fixed by:
https://git.kernel.org/linus/94f9cd81436c85d8c3a318ba92e236ede73752fc (v4.4-rc1)

Can you assign a CVE to track this issue?

Regards,
Salvatore
