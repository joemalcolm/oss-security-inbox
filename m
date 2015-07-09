X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["874" "Thursday" "9" "July" "2015" "11:18:21" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNV-ib_gojFXZOdb5OYb7efUgKg4tPSWuryJBvLCBCE5nQ@mail.gmail.com>" "22" "[oss-security] CVE request: Command injection in ruby gem ruby-saml <1.0.0" nil nil nil "7" "2015070918:18:21" "[oss-security] CVE request: Command injection in ruby gem ruby-saml <1.0.0" (number mark "U       reed@reedlod Jul  9   22/874   " thread-indent "\"[oss-security] CVE request: Command injection in ruby gem ruby-saml <1.0.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23891 invoked by uid 550); 9 Jul 2015 18:18:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23870 invoked from network); 9 Jul 2015 18:18:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=eR4gPnaCQ/sRDbpQ8qvrG4qJr/s+z3UYPT9oek7LwYA=;
        b=PtdjEYzXRBuau1EuHBApac8sI+f84hMlNDoZ/jg71fnrm8gTcmND6bPdnOtsC+xeJf
         X3hXln6XjkqWBzjD/zytd4bYW9o/dbbuNU5ab0NgY2KfR0RJqKMGKPl6c1c64HiBG1qB
         EJ/yJUAFoH0hVU+6YdTqQMe3tyrLyE5PJ3SoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=eR4gPnaCQ/sRDbpQ8qvrG4qJr/s+z3UYPT9oek7LwYA=;
        b=hgASPQ9fSx/CZTdrth4N8LzhWDIHFimFy6y6pbs9h7Ns8J2Ssfb8FZT2Akj65KAF/h
         2RpGcW7bZPBgQuqKrJGbTCwZCoBa+9Ya97GLpKYHYW+Ph1uFhCDJ+U9Eo+UmXDJmrbHi
         Z4beXMC1ZU7VoX6P6BlK9CR6RhbjUSu5zHY4qIUhSM9HmZh6exZjNKqbYWn17ExB9Gce
         XENoX2h6cwlOwteqOSoFO5+B9tiBC2GPRDewvuHswQMDuVIuvVi85DcfqMGOWkfL7LH5
         ci+7N3Jo9z1RnQ+AWClqFCL8jhmsGhVCfastJ0jSBmTdKabvkkMNV0MJQd556hEEIJYm
         RysQ==
X-Gm-Message-State: ALoCoQnAfsqCXCccUGJvMgnRA6k7sAv+mYfulMi0VVUIuDtU5yX6wfEZbsoADPbxCJlGT2yDCYOF
X-Received: by 10.170.119.147 with SMTP id l141mr19066791ykb.89.1436465920444;
 Thu, 09 Jul 2015 11:18:40 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALPTtNV-ib_gojFXZOdb5OYb7efUgKg4tPSWuryJBvLCBCE5nQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1137c95eebc6f0051a754802
Date: Thu, 9 Jul 2015 11:18:21 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Command injection in ruby gem ruby-saml <1.0.0
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--001a1137c95eebc6f0051a754802
Content-Type: text/plain; charset=UTF-8

A follow-up to my previous CVE request. Looked into "Fix xpath injection on
xml_security.rb" some more.

https://github.com/onelogin/ruby-saml/pull/225#issuecomment-120084288

https://github.com/onelogin/ruby-saml/commit/1b4e3dd6d2d44efa629144b2180842456bfb2a0f#diff-661b9d9743a3ff77661f224c6191165cL242

Looks like lack of prepared statements allow for possible command
injection, leading to arbitrary code execution (via something like eval()).

Related to https://github.com/onelogin/ruby-saml/pull/183 /
http://osvdb.org/show/osvdb/117903 (which doesn't seem to have a CVE
assigned either as far as I can tell). Reference for that is
https://security.dxw.com/advisories/publicly-exploitable-command-injection-in-ruby-saml-0-7-2-library-can-root-the-host/
.

~reed

--001a1137c95eebc6f0051a754802--
