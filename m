X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["644" "Friday" "6" "April" "2018" "10:35:33" "+0200" "Sebastian Krahmer" "half.linked.list@gmail.com" "<20180406083533.GA3007@localhost>" "27" "Re: [oss-security] Privsec vuln in beep / Code execution in GNU patch" nil nil nil "4" "2018040608:35:33" "[oss-security] Privsec vuln in beep / Code execution in GNU patch" (number mark "U       half.linked. Apr  6   27/644   " thread-indent "\"Re: [oss-security] Privsec vuln in beep / Code execution in GNU patch\"\n") "<20180406085243.514739f2@pc1>" ("<20180406085243.514739f2@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25892 invoked by uid 550); 6 Apr 2018 09:31:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12198 invoked from network); 6 Apr 2018 09:08:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oAlfPPbg1tSgrfOb71coQMo7Z8DPvPdXJXieTB6A9+Y=;
        b=a210XnjHaCsUefT0lYcxATqckHEy9ONnSY0Ikl/Nh0kkTDtx+ujOBbnAaM7YlSAMSn
         rEztFRTuMTXk75wA0nbCwk/8cFO11J/Tnx721RkmK3CGoa/Uxe4mCDWGHBaiilNLYxDx
         6hLQSyKG0/1p+GcoHsJKI9xNhsOy7xCz/cYpRXvnSmsnab0NsquPbLGvWbX9IGnIfLJ2
         WVzizPiRhHszKHVsVKcQS3yPwDFsiyczNOy2p8DamC4cYQMQLF91hoHXjlDGSdknK60Y
         M99pMxuPy/OuADUcR27upauXU3wIhzOXHkugzM/WdVaVeWiLXiCKHoeVcFEML+7Grzqz
         HCww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oAlfPPbg1tSgrfOb71coQMo7Z8DPvPdXJXieTB6A9+Y=;
        b=V2s2Lajw1WhmlFs1cp4DZvhD+pzxsWprO42+7qQKSQbqWcL0QoIeXYXTYez7ivN7NE
         Af0uHY6+uZpr7YAI369nfFmRUSzS0nFu16QOfhfqbR3825prfrScd1ssph5m1yL/xkrT
         i6/gMXJz1QCC4paNu0BkE/zNKSpsH7uhMJruMApdKKfNZ5aZexGh1p1SmDxU28y9NXJA
         E6Gtzc7c/BrO3AjeLjrB0X6fu5E48KvhVuwWtwe+qyJGt87Tp/Rw9+ZkgyeEBo22MJcl
         gi4/ouubGjNhmMBrtV8hngk7uIVIXWAGQoYnNLJK9JE/f9gIxjy1y3gtGHfBMLt+jEOT
         vgUQ==
X-Gm-Message-State: AElRT7Hfo0iSfvAEeOYCq4QPYgB1aiytJ5nVUwHnU1E2rFq6aqx8h1vK
	foh67VMBIbJA0GnjtxLyvYw+Sw==
X-Google-Smtp-Source: AIpwx4+eZsNNo5nt/5OzcE0Ib/qUyvgPs9p472VLoEjjLzyU7lEk+8NB8pVUbzG5UDnEBM/W8ZZHqw==
X-Received: by 10.28.54.154 with SMTP id y26mr12259140wmh.102.1523005720244;
        Fri, 06 Apr 2018 02:08:40 -0700 (PDT)
From: Sebastian Krahmer <half.linked.list@gmail.com>
X-Google-Original-From: Sebastian Krahmer <half.linked.list@googlemail.com>
Date: Fri, 6 Apr 2018 10:35:33 +0200
To: oss-security@lists.openwall.com
Message-ID: <20180406083533.GA3007@localhost>
References: <20180406085243.514739f2@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180406085243.514739f2@pc1>
User-Agent: Outlook
Subject: Re: [oss-security] Privsec vuln in beep / Code execution in GNU patch

Hi

 : 
> 
> If anyone knows the background of this please share it.

lulz. There is indeed a double free of console_device,
if a SIGINT is caught right before main() returns.
(Looking at git dbf0b4). Besides the easter egg, the patch
is still wrong. optarg may be reused via console_device, so the strdup()
is OK, but the ressource-free and signal handling isnt.

Shouts to the beep trolls. I strongly challenge the oppinion that security
is better done without it ...

Brave Knights who found issues in such small code base.

lg
-s


-- 

~
~ perl <-> $_='print"\$_=\47$_\47;eval"';eval
~ bash <-> $(curl stealth.openwall.net/null/nuts.txt)

