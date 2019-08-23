X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1327" "Friday" "23" "August" "2019" "11:01:42" "-0700" "David Tomaschik" "davidtomaschik@google.com" "<CAOAQt7WYP3ZhgHZexBUh_PFpEFyNSz+xJzYLpiNdihQf1weJ+Q@mail.gmail.com>" "43" "[oss-security] CVE-2019-10071: Timing Attack in HMAC Verification in Apache Tapestry" "^Date:" nil nil "8" "2019082318:01:42" "[oss-security] CVE-2019-10071: Timing Attack in HMAC Verification in Apache Tapestry" (number mark "U       davidtomasch Aug 23   43/1327  " thread-indent "\"[oss-security] CVE-2019-10071: Timing Attack in HMAC Verification in Apache Tapestry\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10071: Timing Attack in HMAC Verification in Apache Tapestry" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10232 invoked by uid 550); 23 Aug 2019 19:57:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1846 invoked from network); 23 Aug 2019 18:02:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=uN8scj41I65FXBUnEpWuyAV+fHurJuYRIjvPuradA38=;
        b=tnfrWv/C1N3Q/hM3efnropIZRpakitV6EMYzDpMHa34ssVtmLbWqJc/wHQzCXVLBV9
         o6vY967KmSMXB2JA3AkLTt50A55xsffQk0jQPC2kxqf3I84Jkdxo0BDFYzP54dPgDrl1
         KcGCtSKtc74Yx6cpMYGbFkGx/0EI5ZlnbvEFJ4rGW1Mz4p2vUCPRqYwoQFgVgQjI801d
         m5IGKBgLSXJk73NmOO4s5IlvjP3gcU5b1FdsUtVL0jOdaRou0Icoja+U/seJUZuKZYip
         EIwjrfHEGX9QU2zbWGBDgsiTAkbYu0OU3Roq5qy8w2rO7X8vrWdRlRhCROYxkkYP1VbQ
         e65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=uN8scj41I65FXBUnEpWuyAV+fHurJuYRIjvPuradA38=;
        b=a+TIlQOdKIJz8ErGtqsLmNvqiJ2lWrzKFmxAmU9H3J6w5b7wTkbNtl86Yf+KmZVEBB
         0FAdDUEHwiTQp08ZHjhEDsoZbTOTMvs6fA83SJE3XY76uen/oMTrMbW1bsN5zvRhNbNH
         muzpyEt1mBRem2bI1fN/EPittnbp5PKiyUoztEunhXfVPTSiwbOihGxXzGbunJuitTvp
         yD6OTbQxxXXg8V2twSjuxl/Eenw0W3sZyt7HW9QgaUUwFwR99geFU+OlQ50GJ9PEob1y
         t4Wotxri7309G3JTdmcyFPFARCYlrtmmDvT8vlndNXBQGcTabeWfPM0nOah29ndBAVFS
         t7EQ==
X-Gm-Message-State: APjAAAXblnHN92TO07xEJ75zcXhFNNmTCs1NTYueEaPSBCNq8f6zWBGH
	4l2mCkYBst95LdVfhy/Rb9sabpIka94mqRJQZQ5O9iwhido=
X-Google-Smtp-Source: APXvYqyjMUUi0i/M9L1WZjdl5gAM/PgERukf0BwZoLnfRV+eZt7P8u8S2tJJrPOGRG1sdlG5RkU0ZblcdwO92zGjytU=
X-Received: by 2002:a17:906:7695:: with SMTP id o21mr5303418ejm.175.1566583315032;
 Fri, 23 Aug 2019 11:01:55 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAOAQt7WYP3ZhgHZexBUh_PFpEFyNSz+xJzYLpiNdihQf1weJ+Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000000160350590cc9acb"
Date: Fri, 23 Aug 2019 11:01:42 -0700
From: David Tomaschik <davidtomaschik@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-10071: Timing Attack in HMAC Verification in Apache Tapestry
To: oss-security@lists.openwall.com

--0000000000000160350590cc9acb
Content-Type: text/plain; charset="UTF-8"

CVE-2019-10071: Timing Attack in HMAC Verification in Apache Tapestry

Affected versions:
- Apache Tapestry 5.3.6 through current releases.

Description:
Apache Tapestry uses HMACs to verify the integrity of objects stored on the
client side.  This was added to address the Java deserialization
vulnerability
disclosed in CVE-2014-1972.  In the fix for the previous vulnerability, the
HMACs were compared by string comparison, which is known to be vulnerable to
timing attacks.

Mitigation:
No new release of Tapestry has occurred since the issue was reported.
Affected
organizations may want to consider locally applying commit
d3928ad44714b949d247af2652c84dae3c27e1b1.

Timeline:
- 2019-03-12: Issue discovered.
- 2019-03-13: Issue reported to security@apache.org.
- 2019-03-29: Pinged thread to ask for update.
- 2019-04-19: Fix committed.
- 2019-04-23: Asked about release timeline, response "in the upcoming
months"
- 2019-05-28: Pinging again about release.
- 2019-06-24: Asked again, asked for CVE number assigned.  No update on
  timeline.
- 2019-08-22: Disclosure posted.

This vulnerability was discovered by David Tomaschik of the Google Security
Team.

-- 
David Tomaschik
Security Engineer
ISA Assessments

--0000000000000160350590cc9acb--
