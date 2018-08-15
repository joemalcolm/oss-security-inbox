X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2566" "Wednesday" "15" "August" "2018" "09:05:58" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20180815160558.GA23020@localhost.localdomain>" "63" "[oss-security] OpenSSH Username Enumeration" "^Date:" nil nil "8" "2018081516:05:58" "[oss-security] OpenSSH Username Enumeration" (number mark "        qsa@qualys.c Aug 15   63/2566  " thread-indent "\"[oss-security] OpenSSH Username Enumeration\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3767 invoked by uid 550); 15 Aug 2018 16:27:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18011 invoked from network); 15 Aug 2018 16:10:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=1q0IZxm97CdWji5d1BnwOMzHmXrjzABlupQ0l+myZvM=;
        b=GdP+gUBrTrhQ2UTB4NLPXqFZYH01Uy/aaVXNXL1JesgEKrTzQZrEZlVdUIkEzL/3A/
         qKyShdiAw5cZcCsqAVlD2M6XnSmt/GDEs07wpu2+eCpik9clCAvLKnevy3Ve5QjMVN6V
         OEBNSEj1aXUw/0D8xputeT44yp/eyQrhMFnvFmI2+pa9jRWfWwr8IDnoNL9q0GL89p1h
         XxVngE1yfXULfWDsHYTbsb4kmi0IdVw5q0p21cniVcRCA4+Hio9Oi8jDmzU7qIRE4nhz
         qJvZ9Q3ECy413D7Kb1qvScCmcT96Gt1TzrtMSxJ9VxFtWJMJiucmNBLYSJdxTqxkG9lz
         eoSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=1q0IZxm97CdWji5d1BnwOMzHmXrjzABlupQ0l+myZvM=;
        b=LaoL4sYKiQGM6YGEzLogcyXNjdb4FWcJ9AjrwGwgW93cFDPZfNmReMMqbBECYEG3jk
         KZLGj5u6A0x1933eBZfvs925h3nfAYxhT46XWviiVwlOCNZ3bNCtH/dYIqlAApXe/L88
         EB9eALEcNw3xtwkXAzKNiLwXomRSHeJE0uAiHhycZ7+xSMg9UWDT0cOnF3BDI1fSE1x/
         L3JZMPeqA0ZaOV4Mm/NaPCmpqpWE3/antwMVhz6xQBNq8Owprd4R7bBY5rqtyReb/Dxw
         67jez7aFZeDD7YBUmB0UU9odoPmMMUhu5nBd6S+y1soL9cpyReIZ9+br2qQjdrJHJvpF
         GV1Q==
X-Gm-Message-State: AOUpUlHq38yT4nnmx05VR3D4t6qDGsLwTOQH0ShDgUTGMVWvjT3zkRJS
	CrMAKB03XvGOWPk7zLc+qfpdw85Kz1Cq0Q==
X-Google-Smtp-Source: AA+uWPy4Vl2tcU0MjvwaEs2EoNw3PLH1+/ohYGL7Amvcciaew3RjfuEXfSSieY8A/MgQLGt4Fi/4DQ==
X-Received: by 2002:a17:902:7683:: with SMTP id m3-v6mr24580955pll.255.1534349447735;
        Wed, 15 Aug 2018 09:10:47 -0700 (PDT)
Message-ID: <20180815160558.GA23020@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Date: Wed, 15 Aug 2018 09:05:58 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenSSH Username Enumeration
To: oss-security@lists.openwall.com

Hi all,

We sent the following email to openssh@openssh.com and
distros@vs.openwall.org about an hour ago, and it was decided that we
should send it to oss-security@lists.openwall.com right away (as far as
we know, no CVE has been assigned to this issue yet):

========================================================================

While reviewing the latest OpenSSH commits, we stumbled across:

https://github.com/openbsd/src/commit/779974d35b4859c07bc3cb8a12c74b43b0a7d1e0

Date:   Tue Jul 31 03:10:27 2018 +0000
    delay bailout for invalid authenticating user until after the packet
    containing the request has been fully parsed. Reported by Dariusz Tytko
    and Michal Sajdak; ok deraadt

We realized that without this patch, a remote attacker can easily test
whether a certain user exists or not (username enumeration) on a target
OpenSSH server:

  87 static int
  88 userauth_pubkey(struct ssh *ssh)
  89 {
 ...
 101         if (!authctxt->valid) {
 102                 debug2("%s: disabled because of invalid user", __func__);
 103                 return 0;
 104         }
 105         if ((r = sshpkt_get_u8(ssh, &have_sig)) != 0 ||
 106             (r = sshpkt_get_cstring(ssh, &pkalg, NULL)) != 0 ||
 107             (r = sshpkt_get_string(ssh, &pkblob, &blen)) != 0)
 108                 fatal("%s: parse request failed: %s", __func__, ssh_err(r));

The attacker can try to authenticate a user with a malformed packet (for
example, a truncated packet), and:

- if the user is invalid (it does not exist), then userauth_pubkey()
  returns immediately, and the server sends an SSH2_MSG_USERAUTH_FAILURE
  to the attacker;

- if the user is valid (it exists), then sshpkt_get_u8() fails, and the
  server calls fatal() and closes its connection to the attacker.

We believe that this issue warrants a CVE; it affects all operating
systems, all OpenSSH versions (we went back as far as OpenSSH 2.3.0,
released in November 2000), and is easier to exploit than previous
OpenSSH username enumerations (which were all timing attacks):

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2003-0190
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2006-5229
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6210

We also believe that this should be posted to oss-security right away:
the issue (commit) is already public, and if we spotted it, then others
(not so well intentioned) did too. We are at your disposal for
questions, comments, and further discussions.

Thank you very much! With best regards,

-- 
the Qualys Security Advisory team
