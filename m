X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["532" "Thursday" "9" "July" "2015" "02:48:35" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNVK+qFx9pu7wPYpM7vtOXbRLhn_0FpeJAaFUJ4QoxHupg@mail.gmail.com>" "20" "[oss-security] CVE request: XEE in ruby gem ruby-saml <1.0.0" nil nil nil "7" "2015070909:48:35" "[oss-security] CVE request: XEE in ruby gem ruby-saml <1.0.0" (number mark "        reed@reedlod Jul  9   20/532   " thread-indent "\"[oss-security] CVE request: XEE in ruby gem ruby-saml <1.0.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32654 invoked by uid 550); 9 Jul 2015 09:49:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32633 invoked from network); 9 Jul 2015 09:49:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=phyOYvzF4RCG4ZsxJcRwtGT7h9yc4WeIWZ53a9FH4Iw=;
        b=aGdCayb42Bk99kDe91QRkSeqSF+eLoaLwa+XD2BPKvPu7adJ8nBGHOPI4KbOsCTGlt
         mJQNUTPzKRo1ibRhVf7vFrxxcS0JK9ilkZ7HMF2LP10nVFsjQg6voVrfhUy7sd1c7bvN
         dlqCBHywXHhQL284mzJ0cMi/W/jAY/y+pL3xE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=phyOYvzF4RCG4ZsxJcRwtGT7h9yc4WeIWZ53a9FH4Iw=;
        b=kWlxq/gUivTZaW2IN33MSJcnQyN/kr+GVF+oiOQe/MobF6io28Usba8FR8pMaTtO8e
         t4WCsh+q/tzJFUkyPsiULwMM1HADd6C+FLaSmeBTPlit4Z/7Jt1Iqn1MYmPEKfZ8biTJ
         9mq0A9Cm0Xfvrues9KU1NYeEOpba5E4SmgjDDS6UZJlTAr2wUmR0fWK8bVTp+T+z2lcx
         PJ5QkDxJLzteWxiQPptLVef0QQciIOjKRZUTtg23Ou/cxp0YzPjzs2kfhAfxvRCRzcGP
         EM+MBuJx0GGKfk47TMyLfXaPADfL4iTQABHR2H1OYFGIr4KSi4lF6quuzv20+vCiPStC
         zqvg==
X-Gm-Message-State: ALoCoQkQqrdZigXEHMNUoXf6scATAJXQZRJO84u5EVULe6U3BuQJ/dLjRKzzAxN6U9CSvMJ5Tsne
X-Received: by 10.129.99.69 with SMTP id x66mr16761350ywb.153.1436435334418;
 Thu, 09 Jul 2015 02:48:54 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALPTtNVK+qFx9pu7wPYpM7vtOXbRLhn_0FpeJAaFUJ4QoxHupg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11473c5ada047d051a6e2966
Date: Thu, 9 Jul 2015 02:48:35 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: XEE in ruby gem ruby-saml <1.0.0
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--001a11473c5ada047d051a6e2966
Content-Type: text/plain; charset=UTF-8

Noticed this when reading changelog entries... I'm weird like that.

https://github.com/onelogin/ruby-saml/pull/247

https://github.com/onelogin/ruby-saml/commit/a2e5318530701bf14528c5b3b51c880b3499a75d

"Avoid entity expansion (XEE attacks)"

Release notes for ruby-saml v1.0.0
https://github.com/onelogin/ruby-saml/releases/tag/v1.0.0

(I wonder if the "Fix xpath injection on xml_security.rb" fix is a vuln as
well)

~reed

--001a11473c5ada047d051a6e2966--
