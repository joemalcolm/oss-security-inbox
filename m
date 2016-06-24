X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["575" "Friday" "24" "June" "2016" "10:14:46" "-0700" "Alvaro Hoyos" "alvaro.hoyos@onelogin.com" "<CAAdSu-FbGNfOsfRv9saHTCso0fPQJ+QrJ5JamZf4_gcCq7LD6w@mail.gmail.com>" "18" "[oss-security] [CVE-2016-5697] signature wrapping attack vulnerability in ruby-saml prior to version 1.3.0" nil nil nil "6" "2016062417:14:46" "[oss-security] [CVE-2016-5697] signature wrapping attack vulnerability in ruby-saml prior to version 1.3.0" (number mark "U       alvaro.hoyos Jun 24   18/575   " thread-indent "\"[oss-security] [CVE-2016-5697] signature wrapping attack vulnerability in ruby-saml prior to version 1.3.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19768 invoked by uid 550); 24 Jun 2016 17:23:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13794 invoked from network); 24 Jun 2016 17:15:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=onelogin.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=byj4oa+1X663TIRxSbQMO6UPgXzi9b3quZFwyFonWzI=;
        b=dj4IfEOyHt2eyD6h2/q76hmoIL8br7DybXlSyjK7dQ9w9rNgL6TacpYd2+ppRfK4cL
         qA6rjFjhX/iSI/HIrqv+05pT6KMiRzSRLGicckSltf30hA1gSJVTiTt3VCNTBlFhgVLt
         BRjCFdBg0SrO/92jLVWDwWpJSojQfjrCryokI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=byj4oa+1X663TIRxSbQMO6UPgXzi9b3quZFwyFonWzI=;
        b=dDjDsjKn8BcWq9l/awVXkKUP78E/u+9QAg4eD5hmU/S7LKZ3MwHhzILEcS9sId08h0
         ydgmvJAF5Gfbb9CPlpGGcBnT6D4FIp1tGSICBzkzC8naJ9ecKG7juSHFeusFKVKbDSlQ
         r+J3BKPwbExg+FKSkpmREatkwlJaPy8B+xBbwRdoHzaz1sSyJBJXfVKNQ//C73RwHmEs
         eftlNoEAsEWkWWBAYwHohKyNs7N8rWWxeJPwXloHb1Xx3MB2JHZy2dYEf9yVpJwR4Hua
         g9mypFretfm7c3E7k4MPmVPSIQDFUo0F3uydo1BlryVBonyB94mGjReLRdT91qLpl8la
         Rc8Q==
X-Gm-Message-State: ALyK8tJiH7zwKyfA63ds+8x7i6O1P837yZI5wM0IgRk+6x7pPNSoGEonUVYfetvHw7Rt2k5+k8e98u5VjYNW98y9
X-Received: by 10.107.33.71 with SMTP id h68mr6939880ioh.10.1466788525922;
 Fri, 24 Jun 2016 10:15:25 -0700 (PDT)
MIME-Version: 1.0
From: Alvaro Hoyos <alvaro.hoyos@onelogin.com>
Date: Fri, 24 Jun 2016 10:14:46 -0700
Message-ID: <CAAdSu-FbGNfOsfRv9saHTCso0fPQJ+QrJ5JamZf4_gcCq7LD6w@mail.gmail.com>
To: ruby-security-ann@googlegroups.com, rubysec-announce@googlegroups.com, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1140f4880c764e05360951ef
Subject: [oss-security] [CVE-2016-5697] signature wrapping attack vulnerability in ruby-saml
 prior to version 1.3.0

--001a1140f4880c764e05360951ef
Content-Type: text/plain; charset=UTF-8

Overview:
Ruby-saml prior to version 1.3.0 is vulnerable to an XML signature wrapping
attack. Ruby-saml users must update to 1.3.0 version which implements 3
extra validations to mitigate this kind of attack.

Overall CVSS Score 6.1

Fix: Add extra validations to prevent Signature wrapping attacks [1]

[1] https://github.com/onelogin/ruby-saml

alvaro j hoyos | chief information security officer |
alvaro.hoyos@onelogin.com | +1 415.653.1893 | skype: alvaroonelogin

--001a1140f4880c764e05360951ef--
