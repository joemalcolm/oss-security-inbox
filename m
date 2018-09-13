X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1821" "Thursday" "13" "September" "2018" "15:12:01" "+0200" "Frank Morgner" "frankmorgner@gmail.com" "<CAO8bUyka=0g1xJmCH5_DkKc-JsWnCDGmsPUUTbbeKpkaC4=pvg@mail.gmail.com>" "40" "[oss-security] OpenSC release 0.19.0" "^Cc:" nil nil "9" "2018091313:12:01" "[oss-security] OpenSC release 0.19.0" (number mark "        frankmorgner Sep 13   40/1821  " thread-indent "\"[oss-security] OpenSC release 0.19.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26147 invoked by uid 550); 13 Sep 2018 13:31:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11645 invoked from network); 13 Sep 2018 13:12:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=eD+i+MeZTvMOg+GhGj+8XTFyqMAnHRlA8Bws4ONZZAo=;
        b=EQdqlSmL5vwZpn2mTZrfgpovnNBlJ9gCeA27adIHM/jKZ1L2deyEItqDpFvXZFg1QK
         Jse020hMP/oMVAey7E4lSgyz4C5IVU2iQaWJUZ07klZ2P1ZvkyrbZhXhTS8MnYxFujAM
         BiWb9epkdMXCMdSU+t6x42vvccibWddCAOfXMYEtzP/EPezxOeyOP3srxVrVe2jW9TnL
         l3WNiIARAc1eaQC3OPOyFNPZz/19e6ZE0GWfbJF7vTi49sGuPAnZ8nSpHmkJMsZGgh3u
         BkMnYZwbIPl1DAV1QOoAq17EA8OkYmt7gLPxC8yT1R7A6mgGkZSB6zuB1vopd6LgxqjM
         dgWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=eD+i+MeZTvMOg+GhGj+8XTFyqMAnHRlA8Bws4ONZZAo=;
        b=K0QSz0ypfbmvX858G+7aDz/m6pDLLskp1VW/4nChrWkY1JCQMeLrrbdMMZNL3gE2c1
         pI/UqJElYiKY2aXf8cWFTUInvfAaprU9E0cEsx23a708fzISZ5lZSQns4Tc142htaPoM
         IXU7KJGATEaZnE/ZJtDQhTJPNHGOZKiv33iwONYGKlAHAWPwe/d7fb5dDHjkNEkpy3kJ
         +sZhcWI2PmVvQP3schqDqPHe8B8siDX/n++NsXaG3vcpT1b21s3ghFzHUmgJPgGjznQf
         xErhTvsJVBU/LU3Hb55mp/IskaUKoMTSrl+O5wyfOhslNb6qvQmI8R7gUViCYxdZTAiX
         J5xg==
X-Gm-Message-State: APzg51B8oCZmi8B3fN13u49Zcts273oNiL3T1jvxHKB4qc71+lk19pjk
	0H1ip8wvXxCBRkjNuNR1DqNm2SmNQomIOMInxlI=
X-Google-Smtp-Source: ANB0VdYFsCv2aqSIwDlwTjJ//zjnU8qoSjqjnLaW/zBOh3vh4DaOy8sXPRSgDkAw5po20JEDm5P80dnjx2Afy4F1Spg=
X-Received: by 2002:a19:f50e:: with SMTP id j14-v6mr5091883lfb.13.1536844332459;
 Thu, 13 Sep 2018 06:12:12 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAO8bUyka=0g1xJmCH5_DkKc-JsWnCDGmsPUUTbbeKpkaC4=pvg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000082fbed0575c0743e"
Cc: oss-security@lists.openwall.com
Date: Thu, 13 Sep 2018 15:12:01 +0200
From: Frank Morgner <frankmorgner@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenSC release 0.19.0
To: opensc-announce@lists.sourceforge.net, 
	OpenSC Development <opensc-devel@lists.sourceforge.net>

--00000000000082fbed0575c0743e
Content-Type: text/plain; charset="UTF-8"

Hi all!

I'm happy to announce the new OpenSC release 0.19.0, which be found here
https://github.com/OpenSC/OpenSC/releases/tag/0.19.0 including the full
list of changes.

Most notably, this release contains fixes for mutliple issues, ranging from
stack based buffer overflows to out of bounds reads and writes on the heap.
They can be triggered by malicious smartcards sending malformed responses
to APDU commands. A detailed description can be found at X41-2018-002
<https://www.x41-dsec.de/lab/advisories/x41-2018-002-OpenSC/>. The issues
are tracked as CVE-2018-16391
<http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16391> CVE
-2018-16392 <http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16392>
CVE-2018-16393
<http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16393> CVE
-2018-16418 <http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16418>
CVE-2018-16419
<http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16419> CVE
-2018-16420 <http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16420>
CVE-2018-16421
<http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16421> CVE
-2018-16422 <http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16422>
CVE-2018-16423
<http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16423> CVE
-2018-16424 <http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16424>
CVE-2018-16425
<http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16425> CVE
-2018-16426 <http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16426>
CVE-2018-16427
<http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16427>. Thanks to
Eric Sesterhenn from X41 D-Sec GmbH for reporting and helping fixing the
problems.

Regards, Frank

--00000000000082fbed0575c0743e--
