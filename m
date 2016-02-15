X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1596" "Sunday" "14" "February" "2016" "22:07:21" "-0500" "David Leo" "httpsonly.github.io@gmail.com" "<CAAeBhPfv200duAxCKnYkABgyt-34u_cP_YrrRajPWZ-Md+H9GA@mail.gmail.com>" "48" "[oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)" "^Date:" nil nil "2" "2016021503:07:21" "[oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)" (number mark "        httpsonly.gi Feb 14   48/1596  " thread-indent "\"[oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3716 invoked by uid 550); 15 Feb 2016 14:56:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1637 invoked from network); 15 Feb 2016 03:07:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=pfa05D89p1HtUq2fJYC3XLk63XtbVZXH6lbIRagzqEU=;
        b=dR2r23JE3eeOBNKyuB1p1Sn4vxDnAtYjBuFaxbcwuuu4NXiqNLsiWJCjkF7JVpgc9H
         M7oCq63q42W8vUQl4B8AilI301i5maKrKn3hmhLdzCRHLMeGNmDd4b0PgV8HTT9nhPhM
         /WFkaw9kwV6/nNoQyQQ1TDN/TZnaB/XeF2RSHp8VYJHvtsWkyop5/93W+n9NblX5HKHB
         5njUpLKp5W2nKjNcabyjODkIyeVyF25+F1sTZ9do6wAenpm4Ma+4UuSCxxA72chYTi7V
         tw5eCHNRRAWmClHhV/gviZ0w+NIadQ0SmRdhNtQaNu2ZtxsLYDrFPSDxs02XeVfapFry
         9IIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=pfa05D89p1HtUq2fJYC3XLk63XtbVZXH6lbIRagzqEU=;
        b=CyozlpOSnJn0ANeLql6T/YYg3p3iCgJhpDA7A13vVwATTrZUpECCIl43kVOoHHLyL/
         Wfu07ogVCfEH8D+14CA2wUaoKwfb1oK7/9k+u4asjgRJzkJ5Ky/yXMcEeYLjr0h6KSIt
         qbWSSCHKr94RnYP9LJhYaxhdvntzx6UjBPKIb0j+TF3xijEadTDhsJz/AiPaHoSIsPRA
         5Wp+I//rBbX1DM5KGpMmw49RyS4JWFMrSieH+5NstViqv84SS2WlpxvoHt/oNsvQFDrZ
         eF0dLPdvZAV0ZAKQp5Zx2RsGF/jB68VixXn6XMBQrgZDc0pvxVZOcVAItyQ0+RZ91JYI
         Rscw==
X-Gm-Message-State: AG10YOTrjdJBfAkykVPX/EQEjsPC37kjRFMt0s3/PqR4AcfdMso2vxZm1GCH/WiSIdUx8wN4zYNhR0Trh/6DTw==
MIME-Version: 1.0
X-Received: by 10.112.140.1 with SMTP id rc1mr5588278lbb.112.1455505641541;
 Sun, 14 Feb 2016 19:07:21 -0800 (PST)
Message-ID: <CAAeBhPfv200duAxCKnYkABgyt-34u_cP_YrrRajPWZ-Md+H9GA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sun, 14 Feb 2016 22:07:21 -0500
From: David Leo <httpsonly.github.io@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)
To: fulldisclosure@seclists.org, bugtraq@securityfocus.com, 
	oss-security@lists.openwall.com

(@moderators The original post was too brief. This one has details.)

Summary

This tool completely locks browser - just HTTPS, nothing else. This
tool is extremely simple - less than 100 lines of code(Python and
JavaScript).

Why

Firefox Add-on Firesheep Brings Hacking to the Masses
http://www.pcworld.com/article/208727/Firesheep_Brings_Hacking_to_the_Masses.html
"Firesheep is basically a packet sniffer that can analyze all the
unencrypted Web traffic"
(Quite a while ago, it's become a "casual game")

Yes, Mozilla said, "Gradually phasing out access to browser features
for non-secure websites", in April 2015. After more than six months,
they have done nothing useful.

The Chrome team wanted the same stuff:
https://www.chromium.org/Home/chromium-security/marking-http-as-non-secure
Again, nothing significant has been achieved yet.

And there is HTTPS Everywhere, with SO MANY rules:
https://www.eff.org/https-everywhere/atlas/
It's still able to access HTTP by default, but there is "Block all
HTTP requests". The problem: nothing happens when browser tries HTTP -
there should be warning(it's incorrect behavior) and options(try
HTTPS, Google Cache, etc). People complained, months ago:
https://github.com/EFForg/https-everywhere/issues/1329

How

PAC(Proxy auto-config) is used:
If it's HTTPS, that's fine.
If it's HTTP, user gets warning and options(try HTTPS, Google Cache -
it has HTTPS, etc).
Anything else, it goes to 0.0.0.0

It's a simple tool that does one job, and does it very well.

URLs

https://httpsonly.github.io/
https://github.com/httpsonly/httpsonly

Best Wishes,
