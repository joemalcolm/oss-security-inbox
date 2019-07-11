X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["632" "Thursday" "11" "July" "2019" "18:14:30" "-0400" "Dave" "snoopdave@gmail.com" "<CAF1aazCqSfmaE00r_bkV2n3sbQzaUXFALBOkffKef79AcSuWxg@mail.gmail.com>" "20" "[oss-security] [CVE-2019-0234] Reflected Cross-site Scripting (XSS) Vulnerabiulity in Apache Roller" nil nil nil "7" "2019071122:14:30" "[oss-security] [CVE-2019-0234] Reflected Cross-site Scripting (XSS) Vulnerabiulity in Apache Roller" (number mark "U       snoopdave@gm Jul 11   20/632   " thread-indent "\"[oss-security] [CVE-2019-0234] Reflected Cross-site Scripting (XSS) Vulnerabiulity in Apache Roller\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0234] Reflected Cross-site Scripting (XSS) Vulnerabiulity in Apache Roller" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13956 invoked by uid 550); 12 Jul 2019 10:58:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1237 invoked from network); 11 Jul 2019 22:14:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=obLV6NG2s/vvH4+Fr/Ma6o0tN4O4IU4huuF0GnPej3A=;
        b=BPIg+lk336QnAvmEqEUPN5kSq/FxbxyEqSQQJHqJLG1TUlOC/D2hZoJJd831kg1pe1
         Nml936Oh1sps/fTfpjT0OJt1pfo0OfrS8L5rrPBTUWCuiwBuD13mabeXajSsG5Qwa2g1
         TKxae0XqPc94axS8yauJV2xKpNz5mulFIzs3Nq1pCCnrZ5ZZ2ywIJ5dQJmWtpfT/zthK
         S1qBK6a9EONj8Hu1WPMOsjc9Pc3jGti2yJNbPuz4LXRBagVBunO+DkbJ6hIbIszSGsxx
         4Y+QIIuI5ddJXnLwEV38npNOTEanaKezTieUP0Ko8jMCEw+SdChyt7vBT54oI7JxJsiW
         FiVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=obLV6NG2s/vvH4+Fr/Ma6o0tN4O4IU4huuF0GnPej3A=;
        b=iMKBAQJXiqf9THhUwBeFjnxqHPEG/5bzwjsfXyJg6hTUx8dRsAYv4MDplNFht7PQPC
         ekePmT46+d2xbxW0fXtdBPmJtj8jnfYbgkDqHMjafmW6uPNJ7uw9b/J1z3/1Ff5C+iwq
         fvNHT3SKZpNLRuo+/FpDBIie5W5j2c2QFMORkH4O9gF++dtFXf0dCwhLnnYnIIOouh2J
         Tu9tlOUK0AIruUtVXM90elDGXwEkXxojhgQ8WXubinyBAZPtZNOOiWMgy+xHXRuqpfrh
         8J0Nv7OA5uZ57pAvS3X2aDipB3UVhb5UognOKrHO/CngyJfFQav99mzb5bQZOFrVBcUy
         mJIw==
X-Gm-Message-State: APjAAAVR6JUjqsVRXY5ZmE9KD+1BWzGRimI35LfCoQ0FpiQzePNWW6Sf
	lNCFJybcbPHITdtfMjNV5vrYze8WiNBf89DP7PLE60+6v5o=
X-Google-Smtp-Source: APXvYqxJft8kPhxRybsnCpQUy7d9Ezs6+Rn1now+yMoQ57IQ7u0YadWWJuZaeNIIJXf0Tc0oO/4s6Zo5UKnZqiPOdYI=
X-Received: by 2002:a6b:e60b:: with SMTP id g11mr7057950ioh.9.1562883281326;
 Thu, 11 Jul 2019 15:14:41 -0700 (PDT)
MIME-Version: 1.0
From: Dave <snoopdave@gmail.com>
Date: Thu, 11 Jul 2019 18:14:30 -0400
Message-ID: <CAF1aazCqSfmaE00r_bkV2n3sbQzaUXFALBOkffKef79AcSuWxg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000cf1a0e058d6f1edd"
Subject: [oss-security] [CVE-2019-0234] Reflected Cross-site Scripting (XSS) Vulnerabiulity
 in Apache Roller

--000000000000cf1a0e058d6f1edd
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor: The Apache Software Foundation

Versions affected: Roller 5.2, 5.2.1, 5.2.2. The unsupported pre-Roller 5.1
versions may also be affected.

Description: Roller's Math Comment Authenticator did not property sanitize
user input and could be exploited to perform Reflected Cross Site Scripting
(XSS).

Mitigation: The mitigation for this vulnerability is to upgrade to the
lastest version of Roller, which is now Roller 5.2.3.

Credit: This issue was discovered and reported by Muthukumar Marikani

--000000000000cf1a0e058d6f1edd--
