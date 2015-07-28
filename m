X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["739" "Tuesday" "28" "July" "2015" "02:44:46" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>" "24" "[oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129" nil nil nil "7" "2015072809:44:46" "[oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129" (number mark "        reed@reedlod Jul 28   24/739   " thread-indent "\"[oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23689 invoked by uid 550); 28 Jul 2015 09:45:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23666 invoked from network); 28 Jul 2015 09:45:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=FDVLeBSvIbhbEhKpf1eW0fwnAC7ip8yaqsIPzG+ApNw=;
        b=YdxFWctnbkvRWyBN7iT4aezm1dh6k8Yt/MkD3LO4PiRW5sBgNsYPZyoOODM5Hu7JuE
         tpapF3BJsVcMQMPl3UTg3BHNMgmor+BseJrszzEVNdWtpmGPP0eoXuKNgfukXnfC60Wk
         HIind8Dy+ctTQAOlLS7+FNa925Lby4iMVGU+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=FDVLeBSvIbhbEhKpf1eW0fwnAC7ip8yaqsIPzG+ApNw=;
        b=lHpwHriYOetU8HfBPcB0DL2blnlER5pfFyDS4GtmlaV20WdjANHazoB9oKhJEKoF7r
         jjQjXEmjQIYCkpCYI9z+09bXZIuVQxwBvI3E1IvtO5QijUPT2V/EmtLm8shxpCOrgMoL
         ATqjIrmVg3Pi5kZ1xrtyGX6rHwEdoqIiSDo3RuO2I8HezKx+ted6grvVaYT96M5Gi0H/
         2t2tgfd19FdbpjcTfaxxbH2V4C2yutBgPfRzy2xAn18gZ98umMZVSFoqZ2sGQ20r6Z2Y
         ffa250r+tgnhEMb6tM6eoK10wh30Kgd7d+RQc71lrHLfyGUDfBJigvAgpatwThjgWTaO
         FvKg==
X-Gm-Message-State: ALoCoQkhk9o1zgVAuDlYOjzTAiY8LYfrKi+cW1q3JTluU/A1rAOfDDhnALqTolfKLnPKzd8qpH03
X-Received: by 10.50.77.49 with SMTP id p17mr4818803igw.72.1438076706067; Tue,
 28 Jul 2015 02:45:06 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bdc9e6239b3c1051bec53f0
Date: Tue, 28 Jul 2015 02:44:46 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>, security@ruby-lang.org

--047d7bdc9e6239b3c1051bec53f0
Content-Type: text/plain; charset=UTF-8

https://www.ruby-lang.org/en/news/2009/05/12/ruby-1-9-1-p129-released/
http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/336353

>From the above:

* DL::Function#call could pass tainted arguments to a C function even if
$SAFE > 0.
https://github.com/ruby/ruby/commit/7269e3de3cee3bbb6ab77fc708f3a10cab00b65e

* DL::dlopen could open a library with tainted library name even if
$SAFE > 0
https://github.com/ruby/ruby/commit/4600cf725a86ce31266153647ae5aa1197b1215b

Doesn't look like either one of these was ever assigned a CVE (please
correct me if I'm wrong).

These seem to be different issues than CVE-2008-3657.

~reed

--047d7bdc9e6239b3c1051bec53f0--
