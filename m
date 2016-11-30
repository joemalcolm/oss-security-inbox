X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["644" "Wednesday" "30" "November" "2016" "19:10:43" "+1100" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhQQb3HXqR35yb7bjQPbUpN1vHH_=ETEyMq7LQ+6VLbkHA@mail.gmail.com>" "20" "[oss-security] cve-request: linux kernel - memory leak in xfs attribute mechanism." nil nil nil "11" "2016113008:10:43" "[oss-security] cve-request: linux kernel - memory leak in xfs attribute mechanism." (number mark "U       wmealing@red Nov 30   20/644   " thread-indent "\"[oss-security] cve-request: linux kernel - memory leak in xfs attribute mechanism.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30525 invoked by uid 550); 30 Nov 2016 08:10:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30507 invoked from network); 30 Nov 2016 08:10:55 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zxztGR6pu0m970UGwCr4Ujp8oNSLz5fB0u3neoQTXqw=;
        b=HuaBMGXqIUlMO8tbOXIT4Q/yizFWl5NBtK0a1oa6NcE4KxCQ2SkLwumVzt8GB1eE6G
         uPrm24S9USrqRy+4qntn5jHpQBl+cPqWk48Ph6kMNueXd/O1xSUH+2z9Z/yo7RVmyMHr
         bT8gxfgtECKV4wJUAyyng3eiDyWd1O91CQs1rhZpO7Y4HmKGvw7UoHeMwIKD9KtFuXy9
         Vs2btbhBKnkvLtavoAngX67wrcX4NOpvRhZamAIM7vRQy/zGWIcN6vpK1TlD56PEalj5
         aF7+Cddg1NW6NfqhKYFBuJAtXeACQBnJo+BnzPR98+eKI9ppdWyk4tIDyc53j4S0AxL7
         I8gA==
X-Gm-Message-State: AKaTC02cdL+4MZQJh9F/HabuC/3UyZ/Wp6mWFwvXyuQbEcigUnaRaAe5WGjNGGj/t800MLXXdMGzOUbqGH35KPCz
X-Received: by 10.36.222.85 with SMTP id d82mr28085395itg.102.1480493444054;
 Wed, 30 Nov 2016 00:10:44 -0800 (PST)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Wed, 30 Nov 2016 19:10:43 +1100
Message-ID: <CALJHwhQQb3HXqR35yb7bjQPbUpN1vHH_=ETEyMq7LQ+6VLbkHA@mail.gmail.com>
To: oss-security@lists.openwall.com, CVE ID Requests <cve-assign@mitre.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] cve-request: linux kernel - memory leak in xfs attribute mechanism.

Gday,

I'd like to request a CVE for the following flaw found in the XFS
attribute management code where over-eager error handling could create
a memory leak (not in information leak) and perhaps with enough
dedication and patience a local attacker could eventually leak
available system memory, creating a DOS attack.

As this same flaw style appears in two functions, this could have one
or two CVE's, I'll leave it up to the fine assigners at mitre to
decide that.

Thanks,

Wade Mealing
Red Hat Product Security

Upstream:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=2e83b79b2d6c78bf1b4aa227938a214dcbddc83f
