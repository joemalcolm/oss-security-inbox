X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["741" "Tuesday" "8" "December" "2015" "07:47:21" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2buv0k_vfSBuQGKV60NmJM6T=VjUgmh7EvqisKyRHGng@mail.gmail.com>" "23" "[oss-security] CVE for git issue - please use CVE-2015-7545" "^Date:" nil nil "12" "2015120814:47:21" "[oss-security] CVE for git issue - please use CVE-2015-7545" (number mark "        kseifried@re Dec  8   23/741   " thread-indent "\"[oss-security] CVE for git issue - please use CVE-2015-7545\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17803 invoked by uid 550); 8 Dec 2015 14:47:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17783 invoked from network); 8 Dec 2015 14:47:32 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=y9lHR5D/zejHX0b+cuktl1jWuRCEMuz5W2SwCSWl95A=;
        b=VmB7dwdGiHfG1/TOCN8D6SlfAF3Tmd5YxNwMoJ32oni6Dv7aqf/TOAR0jWdjK2EDUm
         m6b18g8maJEuU2oivdOLSm4JTmBHe16qSNbaTyG+DZqXdX1BkL/ttUfI4xei6MhXjfUe
         DoqAKOVq/QxKbGeyCegdwspm8hBXm914KhTS1jC2E1sMDWNsDTQxV4WgIeAE5eHePJTt
         X5VKXWWdOA2QzY4y/FHUXFeBA3Kul15Bo7UayySoYpIYIhoKoxm0e8lofH+vdCTuRz1L
         WfYnAk5Pn6gys8GqnkcGsAFm1hn40pVqVVQz3Au93XlNPWgkZeMXXpR2DcukEmXRIm4e
         ID7w==
X-Gm-Message-State: ALoCoQn1VjVnfae0buIU0Yi/ND+2ggq8H0Cw8WgzeRA7VaxKvdS2FZEMkdMFEAMWOxSI+6Cl6g9DK7vB9iS1h0TZrilouu+h1ncOBo9jbe5vPVJZmtWq/mA=
MIME-Version: 1.0
X-Received: by 10.129.80.11 with SMTP id e11mr1956228ywb.303.1449586041070;
 Tue, 08 Dec 2015 06:47:21 -0800 (PST)
Message-ID: <CANO=Ty2buv0k_vfSBuQGKV60NmJM6T=VjUgmh7EvqisKyRHGng@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1147d2b20cdcf90526640d41
Date: Tue, 8 Dec 2015 07:47:21 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE for git issue - please use CVE-2015-7545
To: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>

--001a1147d2b20cdcf90526640d41
Content-Type: text/plain; charset=UTF-8

With apologies, I can't find the original
http://seclists.org/oss-sec/2015/q4/37 in my mailbox (3+ months old) but
we've now shipped advisories, had several people ask and not gotten a CVE
yet so here it is:

CVE-2015-7545 Git: Some protocols (like git-remote-ext) can execute
arbitrary code found in the URL

The other HTTP redirect/protocol issues don't seem to be security issues
per se (unexpected/annoying yes, but I can't think of any real security
impact).

-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1147d2b20cdcf90526640d41--
