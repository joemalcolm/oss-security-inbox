X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["931" "Monday" "18" "May" "2015" "15:43:54" "-0700" "Stanislav Malyshev" "smalyshev@gmail.com" "<555A6B2A.1020205@gmail.com>" "21" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" nil nil nil "5" "2015051822:43:54" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" (number mark "        smalyshev@gm May 18   21/931   " thread-indent "\"[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption\"\n") "<5559AA5A.3050705@truel.it>" ("<5559A053.6090004@truel.it>" "<5559A43F.7040606@gmail.com>" "<5559AA5A.3050705@truel.it>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1950 invoked by uid 550); 18 May 2015 22:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1932 invoked from network); 18 May 2015 22:44:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=F9VroaWG4UckowflSZCn8Gb0GdifDum07b4Z2kAccRc=;
        b=fLfBKZ9oRgGK37yYylA0BpfeR//Q+Z6g1g0bjnpILK3p3qSlQjPg0JMjXNMTNV8psP
         /9GipYndFBCDK4OpNa8N6oB1slVdaRC+Ui3bUMAZBJ8D7cKGXNiHwHqTq4iaerBQBH2N
         m65u1hdXTrUEWPg2dfoSIKdEnBrPJqNR5uz7nntgKQahhfL2Lzh+qJOu/9lZ74kcJD2W
         52UVkUwUzw6QjAePZqppH8TYmbA9eOrctFq1bZ9QqpfRecrKK8xALb4X7kEhaNaVIBgM
         IV+kgOHvfdHSdTBhP7Em1Iyjf9q7/7YX0b5aSiKUmaeOAl5qx9ExxOZUCPLDCq8ruhU0
         drMg==
X-Received: by 10.67.7.199 with SMTP id de7mr34140943pad.107.1431989046325;
        Mon, 18 May 2015 15:44:06 -0700 (PDT)
Message-ID: <555A6B2A.1020205@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <5559A053.6090004@truel.it> <5559A43F.7040606@gmail.com> <5559AA5A.3050705@truel.it>
In-Reply-To: <5559AA5A.3050705@truel.it>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
CC: oss-security@lists.openwall.com, security@php.net
Date: Mon, 18 May 2015 15:43:54 -0700
From: Stanislav Malyshev <smalyshev@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based
 memory corruption
To: Andrea Palazzo <andrea.palazzo@truel.it>

Hi!

> About code execution, I haven't had the chance to focus on actual
> exploitation yet (I surely will in the near future), but as you can see
> from the original report (https://bugs.php.net/bug.php?id=69403), I
> pointed out several cases in which working on a so-crafted zval would
> lead to invalid memory access (with user controlled values as well), so
> I am pretty confident it is achievable.

These examples all seem to require specific code (like
'md5(str_repeat("a", 4294967294-1));') to be run. The probability that
applications would contain this specific code with str_repeat argument
controlled by remote user seems to be pretty low. However, if you can
show exploiting this on a code of an application that is not specially
crafted to demonstrate this issue, or at least resembles code that is
likely to be deployed in a real application, I will gladly change my
opinion.

-- 
Stas Malyshev
smalyshev@gmail.com
