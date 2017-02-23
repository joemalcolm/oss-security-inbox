X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["484" "Thursday" "23" "February" "2017" "17:17:28" "+0100" "Emilio Pozuelo Monfort" "pochu@debian.org" "<89dcadc4-9895-a6e2-36ed-ac3195137978@debian.org>" "16" "Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616" nil nil nil "2" "2017022316:17:28" "[oss-security] util-linux 2.29.2 fixes CVE-2017-2616" (number mark "U       pochu@debian Feb 23   16/484   " thread-indent "\"Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616\"\n") "<20170223170848.17d43fb3@pc1>" ("<20170223074630.GB26098@suse.de>" "<20170223104054.42060545@pc1>" "<20170223100148.GA23394@suse.de>" "<D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>" "<20170223170848.17d43fb3@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22413 invoked by uid 550); 23 Feb 2017 17:22:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32571 invoked from network); 23 Feb 2017 16:17:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=OceBeS7tGLUomy2xZUkbfFOzuiXcx4LszWWyUbqqDPY=;
        b=YxXqT5ckB+JrhYlMnEIrMXhF1TeQ7Dqk4f4AL9nTQXvqIhvUdGLM6SJvqZy2xfipln
         /hEaR3c3KfLTds8qmODYspAboiDmtOKvvyX74soT5HaRfht3XyRp5B49ch+sJ4cNj5QA
         btQ2SCV2nhMShvTU5mA61xcAjtKuD6k4JudLuk3OoPbWvreDTgTu3+BaheSEczCanM+t
         v9qJnZX6BVFYqtp9Vhn0z0KERndukarSVIa8QUy2j8yxeT9MW/32wdQrwcnPf/gZ4KgX
         CZK/j700qemjKBnSFiPRNnCjhG5UgaT195/v2NuNIR62YbZEEEnScbTXPzb1CwiDK00q
         Mw/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=OceBeS7tGLUomy2xZUkbfFOzuiXcx4LszWWyUbqqDPY=;
        b=IPD3bSPAoCa79XL0pKYPoaBgE7/TJ1i+RbsL6qWfSqHRhnsbBsSAqadp/Y1KoGJuAy
         To7Mj88BZKrwr5der3kBuIFEE2tngONTB0gv+aSKZesqsVEHmnQJEAi6sd32BuoIB6k8
         U8Fkr0JoZ5cWXLuCR+kphsUljbW22Lk20XHML4lLyGVexCcd6YgAOxLoHfLEPVN8PTRS
         xdpAp3gs7JptL/SPiBtYYBP3xA3KjOblC0OFDdILbQF4U2ng0mBTQPRAhN3HiU3G0lrS
         aCJ8Y+v9X9odDDoj5g25fNfor1CvpfT+rFQvnEr997huFD5PcDIQYYaw0LZBL40XlD3W
         oCrw==
X-Gm-Message-State: AMke39k1mN7+O6JpDwF3MOUkDgydhgEP+yUaLREYqagAxamXxuqI0BPT6+erWkfQNVvstQ==
X-Received: by 10.28.13.20 with SMTP id 20mr5379361wmn.24.1487866649671;
        Thu, 23 Feb 2017 08:17:29 -0800 (PST)
Sender: Emilio Pozuelo Monfort <pochu27@gmail.com>
To: oss-security@lists.openwall.com
References: <20170223074630.GB26098@suse.de> <20170223104054.42060545@pc1>
 <20170223100148.GA23394@suse.de>
 <D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>
 <20170223170848.17d43fb3@pc1>
From: Emilio Pozuelo Monfort <pochu@debian.org>
Message-ID: <89dcadc4-9895-a6e2-36ed-ac3195137978@debian.org>
Date: Thu, 23 Feb 2017 17:17:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170223170848.17d43fb3@pc1>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616

On 23/02/17 17:08, Hanno Böck wrote:
> On Thu, 23 Feb 2017 07:56:51 -0500
> Assaf Gordon <assafgordon@gmail.com> wrote:
> 
>> GNU Coreutils stopped installing 'su' by default in 2007,
>> and completely removed 'su' (including the 'su.c' source file)
>> in 2012.
> 
> That's good to know, so now there are only 2 competing versions of su
> instead of 3 in major packages :-)
> 
> Anyone have a good idea who is using shadow vs. util-linux su?

Debian is using shadow's, fwiw.

Emilio
