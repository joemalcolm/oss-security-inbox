X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["126" "Tuesday" "19" "April" "2016" "18:37:34" "+0400" "Loganaden Velvindron" "loganaden@gmail.com" "<CAOp4FwSKvWciC-4K3ob7kT5-Ytm2SkmgPbPEc0qJKL0NAtEHPA@mail.gmail.com>" "2" "Re: [oss-security] CVE Request: imlib2: integer overflow resulting in insufficient heap allocation" "^Cc:" nil nil "4" "2016041914:37:34" "[oss-security] CVE Request: imlib2: integer overflow resulting in insufficient heap allocation" (number mark "        loganaden@gm Apr 19    2/126   " thread-indent "\"Re: [oss-security] CVE Request: imlib2: integer overflow resulting in insufficient heap allocation\"\n") "<20160414172353.GA5117@eldamar.local>" ("<20160414172353.GA5117@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22441 invoked by uid 550); 19 Apr 2016 14:37:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22414 invoked from network); 19 Apr 2016 14:37:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=tLjBMVv9IXCio+i7B/Rmi6wjQHvMi3lRyfaxfWMemUI=;
        b=VqH0rJzsXnq6oZu8CZWFH93VXeCJIysV0up4bWgStQBUhPDSfc7tmDQm2bruPySsgr
         BnqKNpgFkrS+Mn+KYTywA7nBPKajJooUaL5YVWP2ibATw9InwCot/roiJ9RAy59BYMnh
         PuJcgo6vddqu34ALDaQvNNlCSwWdyNyZUarOOAgLmy+YRDogbq3kp2JAheiWaGBVN7gb
         n0XuEthiV80CxTE9uwgH9hhSEZwE2k6zlqkTg6HcOz2AEkX5Jva/dh9jPZ2nNXHpydUA
         SJFPzqYg0Y/ZXJ6az2Mn+ifku7hZXqwUmS6TgJjbx3uyFBUwG8ydhvM39Cmc8MBurEke
         uGmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=tLjBMVv9IXCio+i7B/Rmi6wjQHvMi3lRyfaxfWMemUI=;
        b=RQpvXCtkS1zVtIWnSWdfv6SQBUof6hmvkB+DRD33VP9Ly8mq/9vVfbjHlVDy4phWqY
         H9W5E+wsOpDD0oIxsvddOJY/+nBcAUed9CLn+euYGEPqPTnjbj/Gg6I4S5GykyDs3lvS
         UpWZQ+dKCgSRZLm25ih4BBwUf9yzhoyUryZZ7DsHvjVaPJhvQwz6hvBNhPOh+H1dLbBf
         YMJurAqpzrb3fcx82s2ADChD604ysV13bBgJJwGwhxVTB+7EUPoJBi2Bw5NqmqUhzTQ6
         qSNRCh3KtVzhpyN/aEyFRVOqkRvOitLHsPcGi/dB1DvTWtw+ENbRQyNk8EFI0tXwAJYH
         /ZAg==
X-Gm-Message-State: AOPr4FXklNsW9VCE8lofp5hsqKmadfNT06h2HsymQiFqcYDQEWY/j/CzLmsCLa+4z5WFjhwkZqnRFlhlXGfgaA==
MIME-Version: 1.0
X-Received: by 10.98.82.194 with SMTP id g185mr4442208pfb.157.1461076655116;
 Tue, 19 Apr 2016 07:37:35 -0700 (PDT)
In-Reply-To: <20160414172353.GA5117@eldamar.local>
References: <20160414172353.GA5117@eldamar.local>
Message-ID: <CAOp4FwSKvWciC-4K3ob7kT5-Ytm2SkmgPbPEc0qJKL0NAtEHPA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Tue, 19 Apr 2016 18:37:34 +0400
From: Loganaden Velvindron <loganaden@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: imlib2: integer overflow resulting in
 insufficient heap allocation
To: oss-security@lists.openwall.com

I think that this shows how useful it is for any libc to have a
function like OpenBSD's reallocarray(), which prevents these.
