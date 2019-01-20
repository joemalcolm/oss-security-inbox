X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1374" "Sunday" "20" "January" "2019" "15:53:18" "-0800" "Vlad Tsyrklevich" "vlad@tsyrklevich.net" "<CAH0z3hNq8mSGrMcE2Zr_o5OOEcdA7gkZ4iZTC6d7+kav+70jYA@mail.gmail.com>" "25" "[oss-security] Unfixed FreeBSD uninitialized memory disclosures" "^Date:" nil nil "1" "2019012023:53:18" "[oss-security] Unfixed FreeBSD uninitialized memory disclosures" (number mark "        vlad@tsyrkle Jan 20   25/1374  " thread-indent "\"[oss-security] Unfixed FreeBSD uninitialized memory disclosures\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18201 invoked by uid 550); 21 Jan 2019 10:49:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15556 invoked from network); 20 Jan 2019 23:49:57 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1T3ksCqE/1x5Fx/qX9qttm/fkoE2bqFA9fRVOrFceow=;
        b=cOmgLVyuSTwzfJB418+UOrygivwJUowSU2Gi/S4r5p66IkbNmSKEkZnGz5w9GhO2AJ
         vlBPxyW1HNpFvssqw8FXK0O232U8LU2VI3+NWqKS3HLcibj4zAg7qEqJdpt1D3yrI8Ey
         0+BR3WdtkeJfJUddBSeZrzYQ3BVrW+tRpw4INf48f5OcNPVAuZA5gBhbD8/MbmPh1VuZ
         FBxcNS4ufUFUn+XZBgn5qLViCLHbazWQeeM2wgqHNdl9XcXQW/HckJKBft3YIlzH9tk1
         ZlKOJxH70dy2x1Cnr5dKRVJzNpBGh1DXUe5PH2mIkbtvJvhHT5iYm1uQZdKPQcgGpfo4
         slvA==
X-Gm-Message-State: AJcUukcqBy/PWMSqSYxZh9+tnfE/u1MAt8ofZ8v1K8AT+KlZQSuCQykN
	9mCnBpZGqeru5u3QY9UasVMgirbqp66lxEjgZzADVw==
X-Google-Smtp-Source: ALg8bN7//PyjDKW+RFxAAUHv+mxNXrzApk17PwaxULg9vVpX9xQmOh05KI1J+qG3nEt1sU3IU3kiX/5CqEaHA9ErjKQ=
X-Received: by 2002:a6b:fa01:: with SMTP id p1mr14199951ioh.271.1548028185511;
 Sun, 20 Jan 2019 15:49:45 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAH0z3hNq8mSGrMcE2Zr_o5OOEcdA7gkZ4iZTC6d7+kav+70jYA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000198bf3057fec66e9"
Date: Sun, 20 Jan 2019 15:53:18 -0800
From: Vlad Tsyrklevich <vlad@tsyrklevich.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Unfixed FreeBSD uninitialized memory disclosures
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--000000000000198bf3057fec66e9
Content-Type: text/plain; charset="UTF-8"

In January 2017 I reported results of a clang analyzer-based static
analysis step [1] to find uninitialized kernel-to-userland memory
disclosures against a number of kernels. I reported results in the FreeBSD
kernel to their security team. Over the next 2 years some [2][3][4] of the
bugs were fixed but it seems like only when they were re-reported.

I re-ran the analyzer against an updated FreeBSD kernel and reported
updated results [5] last month--the crossed out reports are false positives
as determined by manual inspection. Though the impact of these bugs is not
critical, they are worth fixing. I've contacted the security team again but
it did not sound like these reports were prioritized to be fixed
immediately. I'm e-mailing oss-security to let other downstream FreeBSD
users patch them on their own if they were so inclined. Most of them can be
fixed by simply adding a memset() or an M_ZERO to malloc().

[1] https://tsyrklevich.net/2017/03/27/kernel-clang-analyzer/
[2] https://www.freebsd.org/security/advisories/FreeBSD-SA-17:10.kldstat.asc
[3] https://www.freebsd.org/security/advisories/FreeBSD-EN-18:05.mem.asc
[4] https://www.freebsd.org/security/advisories/FreeBSD-EN-18:12.mem.asc
[5] https://tsyrklevich.net/clang_analyzer/freebsd_122818/

--000000000000198bf3057fec66e9--
