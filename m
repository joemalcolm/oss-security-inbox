X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["542" "Monday" "18" "May" "2015" "01:35:11" "-0700" "Stanislav Malyshev" "smalyshev@gmail.com" "<5559A43F.7040606@gmail.com>" "17" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" nil nil nil "5" "2015051808:35:11" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" (number mark "        smalyshev@gm May 18   17/542   " thread-indent "\"[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption\"\n") "<5559A053.6090004@truel.it>" ("<5559A053.6090004@truel.it>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1894 invoked by uid 550); 18 May 2015 08:35:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1866 invoked from network); 18 May 2015 08:35:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=thktgIMr4VM4Psl6zDZ/4ULJZN1KOCU2KQiQT3ogfh0=;
        b=xURlRQzcTIbRtrutEAwIHmK8zw2jCIQgSc+Q4L3ABM8/fV2pg1bA2sD76H14Y6L0vR
         L6bTdlXgK8PKxCw43JRXelDpx989uxggvG7GSAasgkLpu4un4uuXVmQ9mwD6dal7Z9p0
         Znih/9Hk1EVAbR+Fbxi6GjNW3QvfS6w1tsQcpWnWMUM8rmpdF4ri7n1WLEZX/Ik/1Zt9
         Qq4POcHFh8Sg+KrQ4GwbKOc3nJLbJukbCGA+7zvyjRF9yephN+ZBqjqiauYaKP3yPTBP
         NumI0ge1Ebh/x27DEdgBQPbL7KlnVA3sTLJSZ6mkv8FFrogCLKrtwkYX5IXR3XRLDn8O
         Gaqg==
X-Received: by 10.68.224.72 with SMTP id ra8mr42199139pbc.29.1431938120768;
        Mon, 18 May 2015 01:35:20 -0700 (PDT)
Message-ID: <5559A43F.7040606@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <5559A053.6090004@truel.it>
In-Reply-To: <5559A053.6090004@truel.it>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
CC: oss-security@lists.openwall.com, security@php.net
Date: Mon, 18 May 2015 01:35:11 -0700
From: Stanislav Malyshev <smalyshev@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based
 memory corruption
To: Andrea Palazzo <andrea.palazzo@truel.it>, cve-assign@mitre.org

Hi!

> Hi everyone,
> this is intended as CVE Request and advisory for
> https://bugs.php.net/bug.php?id=69403.

I do not think this requires a CVE as this needs specially crafted PHP
script (i.e. local access or ability to run arbitrary PHP code) and
memory settings allowing to allocate huge (>4G) values, which seems to
be unlikely to happen on a common production system. I am not sure how
remote code execution vector can be provided for this issue, if you have
an example, please clarify.

Thanks,
-- 
Stas Malyshev
smalyshev@gmail.com
