X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["901" "Tuesday" "11" "August" "2015" "10:23:59" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" "27" "[oss-security] Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015081116:23:59" "[oss-security] Terminal escape sequences - the new XSS for admins?" (number mark "        kseifried@re Aug 11   27/901   " thread-indent "\"[oss-security] Terminal escape sequences - the new XSS for admins?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28208 invoked by uid 550); 11 Aug 2015 16:24:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28184 invoked from network); 11 Aug 2015 16:24:10 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=HAUz7VAKAIGAC6QraB/KKNSEH7zpVgd7r7iHGMnW+zw=;
        b=XLC3r7LdcXOObBYGscKPxIOJHSuEq9A/uhFOnhIUgxflqeGvzZbs5A1mPCIQ7zmbfj
         Amjq+cr3egojltZ0wgJ/MqWft9oySSMhO1W3NGt80vjeWMuy4HW67KFvtblhqWO7xf0c
         a3CEXLLCjf7rX151J8H5jiC3k4oCff5p05D77gMLUpTQIfLduF1rSgNNdcQBZdWjmu04
         R92YY/DdjyHZRuBtmJwqckHFmNrhpqtOCHl920YhhLMJZLS3MT7IC1nou6sQnJPFk0/n
         ZrOpN2salpjXRX+1lgoyARGyW8OGI3NCPgS1McM4QwhNPLEifNyi/sEUXNB/E7lGmQ9+
         8QBw==
X-Gm-Message-State: ALoCoQmKB7FwCAzjvS/LTH+pZwFnzIzXWNFTWWvEJIg/lvaAOkFRYyGR/+kDrdS8MdjmmDpofWFm
MIME-Version: 1.0
X-Received: by 10.170.154.67 with SMTP id v64mr28221702ykc.83.1439310239085;
 Tue, 11 Aug 2015 09:23:59 -0700 (PDT)
Message-ID: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113a9cb285efb6051d0b8786
Date: Tue, 11 Aug 2015 10:23:59 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Terminal escape sequences - the new XSS for admins?
To: oss-security <oss-security@lists.openwall.com>

--001a113a9cb285efb6051d0b8786
Content-Type: text/plain; charset=UTF-8

So we've had a bunch of this stuff over the years:

http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=terminal+escape

And now more recently:

http://turbochaos.blogspot.ca/2014/08/journalctl-terminal-escape-injection.html
https://bugzilla.redhat.com/show_bug.cgi?id=1084577

And we have at least one more coming down the pipeline that's pretty
widespread.

Also I'm thinking of all those docker apps that log to STDOUT.

So the basic TL;DR: please don't use really ancient terminal programs that
are vulnerable to this stuff. It appears in testing that most (all?) of the
Red Hat stuff is ok, but I can't speak for other vendors.

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113a9cb285efb6051d0b8786--
