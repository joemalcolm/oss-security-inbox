X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2492" "Friday" "17" "August" "2018" "20:31:54" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20180817183154.GA18661@eldamar.local>" "61" "Re: [oss-security] OpenSSH Username Enumeration" "^Date:" nil nil "8" "2018081718:31:54" "[oss-security] OpenSSH Username Enumeration" (number mark "        carnil@debia Aug 17   61/2492  " thread-indent "\"Re: [oss-security] OpenSSH Username Enumeration\"\n") "<20180815160558.GA23020@localhost.localdomain>" ("<20180815160558.GA23020@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20156 invoked by uid 550); 17 Aug 2018 18:32:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20138 invoked from network); 17 Aug 2018 18:32:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NINvcLlZ6t1pa9Q5D2KVoE+gQRQy3kN/anz8nOihbDo=;
        b=eRusmBQS2Y6zn8xUmNDf5b0tfB2bFnJpzjKtxayFEa2Y7IuNY4Ror6iFJMV1epNCo0
         c7hf1VglJxZBJSY+RMjUQc6MfPuGPh6GdGcvu4iA6WIqaGB78xjdTk6BFaKNdQLjDvT4
         onpJI6OPuKXDZVHABOQVEltRE7XFCeky/DSBdoN0XnmSRxZ6o4j4bExx4twK/xLtij3m
         pjMVf6aY/4IWvaPw37LEIDZswq38BLrpDtQWHZvaaaYC8+74lBJsCWHSvTh8FSd537Yx
         nMHmw4UxJoMJYFtyip1Fo/pd3KH9LAZZ/w6WJmk7kfoMQNJrdCyL8h+ASqZLuV9TfoPp
         Mglw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=NINvcLlZ6t1pa9Q5D2KVoE+gQRQy3kN/anz8nOihbDo=;
        b=KxxuWf4sqYAMtQIn10DAX2cHKx+T19aBLKMr1eiQxVi6WJq6cbogZ5ECQ91XorobyJ
         XzTiJBnGGAz8UQG8t+Wu9C4PH4VUOwDSDpA5FUNMEGOEunF39dxeTMTqB6/8JeCjAW20
         qZuqkKZRjoD0rEXjoM7LaloGecr3nmqzz3cDNWOYpo9CXr19ySoAXAHJvtnfONhmXieo
         GZ1sn2CE+dtyCAu4t6v1vz83J6WU9PrDopQ5FWMdOEqgC85dGgZYGbfINDpsIJEoIpkx
         fmyGI5twV4qnDoinKaiWSFfGnpRvLP7G9MFbqAEeuGduvOYqg2o4Kpzum7q7v3UxqGqU
         SMFw==
X-Gm-Message-State: AOUpUlF6TPAJMtuOp3/y/oQ7A5uYS2K2hCJz2NbU1Ed9KcovyEK9aQ34
	jFI65qk4EOrXN3XsMeaTLHmzT8PCL1c=
X-Google-Smtp-Source: AA+uWPwyuRvBpjrsNcaZrwgOVreKzN7Ywd1BrSOi13CCqbUazhZ2JA4ZNxwI+PJMr3Knj4op0YK2DQ==
X-Received: by 2002:a1c:b609:: with SMTP id g9-v6mr1973756wmf.73.1534530716830;
        Fri, 17 Aug 2018 11:31:56 -0700 (PDT)
Message-ID: <20180817183154.GA18661@eldamar.local>
References: <20180815160558.GA23020@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180815160558.GA23020@localhost.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Fri, 17 Aug 2018 20:31:54 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] OpenSSH Username Enumeration
To: oss-security@lists.openwall.com

Hi,

On Wed, Aug 15, 2018 at 09:05:58AM -0700, Qualys Security Advisory wrote:
> Hi all,
> 
> We sent the following email to openssh@openssh.com and
> distros@vs.openwall.org about an hour ago, and it was decided that we
> should send it to oss-security@lists.openwall.com right away (as far as
> we know, no CVE has been assigned to this issue yet):
> 
> ========================================================================
> 
> While reviewing the latest OpenSSH commits, we stumbled across:
> 
> https://github.com/openbsd/src/commit/779974d35b4859c07bc3cb8a12c74b43b0a7d1e0
> 
> Date:   Tue Jul 31 03:10:27 2018 +0000
>     delay bailout for invalid authenticating user until after the packet
>     containing the request has been fully parsed. Reported by Dariusz Tytko
>     and Michal Sajdak; ok deraadt
> 
> We realized that without this patch, a remote attacker can easily test
> whether a certain user exists or not (username enumeration) on a target
> OpenSSH server:
> 
>   87 static int
>   88 userauth_pubkey(struct ssh *ssh)
>   89 {
>  ...
>  101         if (!authctxt->valid) {
>  102                 debug2("%s: disabled because of invalid user", __func__);
>  103                 return 0;
>  104         }
>  105         if ((r = sshpkt_get_u8(ssh, &have_sig)) != 0 ||
>  106             (r = sshpkt_get_cstring(ssh, &pkalg, NULL)) != 0 ||
>  107             (r = sshpkt_get_string(ssh, &pkblob, &blen)) != 0)
>  108                 fatal("%s: parse request failed: %s", __func__, ssh_err(r));
> 
> The attacker can try to authenticate a user with a malformed packet (for
> example, a truncated packet), and:
> 
> - if the user is invalid (it does not exist), then userauth_pubkey()
>   returns immediately, and the server sends an SSH2_MSG_USERAUTH_FAILURE
>   to the attacker;
> 
> - if the user is valid (it exists), then sshpkt_get_u8() fails, and the
>   server calls fatal() and closes its connection to the attacker.
> 
> We believe that this issue warrants a CVE; it affects all operating
> systems, all OpenSSH versions (we went back as far as OpenSSH 2.3.0,
> released in November 2000), and is easier to exploit than previous
> OpenSSH username enumerations (which were all timing attacks):
> 
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2003-0190
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2006-5229
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6210

This new issue got assigned CVE-2018-15473 by MITRE.

Regards,
Salvatore
