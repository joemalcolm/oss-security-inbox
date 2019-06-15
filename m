X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1336" "Saturday" "15" "June" "2019" "17:09:53" "+0200" "Raphael Geissert" "geissert@debian.org" "<CAA7hUgH2dCyNr0m_HmhLuVXO+ZD_TVOWdfrB-jzrLPnz7de4Dw@mail.gmail.com>" "38" "[oss-security] Apache::Session's use of md5 and more" "^Cc:" nil nil "6" "2019061515:09:53" "[oss-security] Apache::Session's use of md5 and more" (number mark "        geissert@deb Jun 15   38/1336  " thread-indent "\"[oss-security] Apache::Session's use of md5 and more\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Apache::Session's use of md5 and more" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7774 invoked by uid 550); 15 Jun 2019 15:10:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7742 invoked from network); 15 Jun 2019 15:10:17 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=xznRbNr3FnrqZXmFzw7iQ3smvNMXr5P86M0wMDASuG0=;
        b=m8WpW3wqEOobzSb8k2YgjMmDoF1Qy0o4oHIdDxwerKCp7alBwTC4U5Ch70tuf0nmSC
         YuoucTK9Hp3IMWmZBdfMY0s1SqN4k+97eNsCtR4My1uHBAHZZzMBhRJB76MmNw7Kfh0V
         +9cSzjTlq00XbMmi5PjkK9AMRQz2Pvxq2b2SdMONAXOzjJkbcZiC39OLnDuqKHo4CA4y
         C3KKFYlkmZA1R6NdbDfN1gNqXyjhZyptOVTMh7qRo5Ti5OR0d7OTSjxY5KRw0BQdpMvx
         FioQb7qRj12uaqQ1S+7wVsiHhhjSj+8INsKdf+IezvBtFWuXsbxbr6pSHjEFrD1aysRP
         J/Vw==
X-Gm-Message-State: APjAAAXv5Tm3/a9G4u7TxBRXoNJIBLMN6Q/K8DF8VMW+TIsZJj1z3A+I
	OG9tLRhPu5PHL8b0n6vkuvWqEttO3qb2P2/6z5mEGRZS
X-Google-Smtp-Source: APXvYqxBG9+LcNOPzBa3FKyjXhorL/FV00/L1uw8d89uHsVM9BLO4AAqrxREtcJQA3b+poQ5Y2Vmw7arGg/QrApqS5k=
X-Received: by 2002:a67:ea04:: with SMTP id g4mr52032407vso.192.1560611405073;
 Sat, 15 Jun 2019 08:10:05 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAA7hUgH2dCyNr0m_HmhLuVXO+ZD_TVOWdfrB-jzrLPnz7de4Dw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: security@bestpractical.com
Date: Sat, 15 Jun 2019 17:09:53 +0200
From: Raphael Geissert <geissert@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Apache::Session's use of md5 and more
To: Open Source Security <oss-security@lists.openwall.com>

Hi,

I just stumbled upon Apache::Session's Generate::MD5 module, which
appears to be used to generate the session ids for cookies and the
like.

Not only does it use MD5, but its source of entropy is weak and does
two rounds of hashing. From the source code[1]:

    $session->{data}->{_session_id} =
        substr(Digest::MD5::md5_hex(Digest::MD5::md5_hex(time(). {}.
rand(). $$)), 0, $length);

(where $length is 32 by default)

Am I missing something, or has this code actually been in use for ages
and gone unnoticed ? I couldn't find any CVE for this.

So far I found this reference, but only mentions the use of MD5 as a weakness:
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/issues/695

>From a quick look at the reverse dependencies of the Debian package,
there are some users of Apache::Session:
* RequestTracker (RT) : from a quick look at the session id in the
cookie set by rt.cpan.org I'd say it does use Generate::MD5
* Torrus: no idea if the Generate::MD5 module is used
* LemonLdap::NG : they replaced Generate::MD5 by a similar code using
SHA256, but still using two rounds of hashing

CC'ing BestPractical. Will open an issue on LemonLdap::NG's gitlab.


[1]https://metacpan.org/source/CHORNY/Apache-Session-1.93/lib/Apache/Session/Generate/MD5.pm

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org
