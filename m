X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["800" "Thursday" "18" "June" "2015" "01:56:51" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNXEAzgdNyfFe-c7D07eLEp27Zv3Pxqa7-mGWAoq-_0w_g@mail.gmail.com>" "24" "[oss-security] CVE request: Content type spoofing in ruby gem paperclip <4.2.2" nil nil nil "6" "2015061808:56:51" "[oss-security] CVE request: Content type spoofing in ruby gem paperclip <4.2.2" (number mark "U       reed@reedlod Jun 18   24/800   " thread-indent "\"[oss-security] CVE request: Content type spoofing in ruby gem paperclip <4.2.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31968 invoked by uid 550); 18 Jun 2015 08:57:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31946 invoked from network); 18 Jun 2015 08:57:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=jEXQguh9K7gGuzjnQTnnEVBqdMsB1lSwkw2c7UaZLiM=;
        b=NJHIhzBFIgp1MRmKGlhI5WPo7OULSV8S5IvCFGWo6i28luS2i2gWkmzTswva1QNm3f
         gyGzShdSQvolHwmZ4gZKEx1sgJzwDNngL2l0h2qjM58tkD5iqYjorSbyRrkd4uUjajvg
         Orej9XlpefVBSia6GrYYymz0id6vj7SS8z/0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=jEXQguh9K7gGuzjnQTnnEVBqdMsB1lSwkw2c7UaZLiM=;
        b=hTC4DhGWUXng1GFGc19m7WTmmDZ1brOASDwyW9pY0jLBbcREpiBeMWr0WmogxvlYH4
         QpBnqkd59jc6n+DmUwr/FQLhrouPmYVdhqqhGUd8WUZKlXWKTMz3tnMHLNdtn8GSaIr+
         TBrvrq68pLPvqaZQmvnCf3AGGamTLainPYWunlmaJFINwGikXov6UlVtvt5XdkkuDfU/
         07k3sU8+u7Zj+4d39Gz7BF+CoGm2kqzpEWTyHphxT7yxYCHoRjy11iIp8eUsQ0AmHITn
         dtD+V7uxaHSbpG46UnHS1JEkjENRuqxZdPJUn8V+Z1wCpsHKEWYL+w3T3Uu9WQrqYsLg
         lrYg==
X-Gm-Message-State: ALoCoQkqEnINya5Vv41w6f+IP3GWU4RFGkAuugPttEPFQaocmO9L5yT5Qj6ZH94q9mbiuiGJ8pQU
X-Received: by 10.182.240.135 with SMTP id wa7mr8093989obc.63.1434617832054;
 Thu, 18 Jun 2015 01:57:12 -0700 (PDT)
MIME-Version: 1.0
From: Reed Loden <reed@reedloden.com>
Date: Thu, 18 Jun 2015 01:56:51 -0700
Message-ID: <CALPTtNXEAzgdNyfFe-c7D07eLEp27Zv3Pxqa7-mGWAoq-_0w_g@mail.gmail.com>
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>
Content-Type: multipart/alternative; boundary=001a11c1dfc044b8eb0518c6febd
Subject: [oss-security] CVE request: Content type spoofing in ruby gem paperclip <4.2.2

--001a11c1dfc044b8eb0518c6febd
Content-Type: text/plain; charset=UTF-8

Saw this in paperclip's NEWS file, and I couldn't find a CVE for it.

https://github.com/thoughtbot/paperclip/commit/9aee4112f36058cd28d5fe4a006d6981bd1eda57

""""
There is an issue where if an HTML file is uploaded with a .html
extension, but the content type is listed as being `image/jpeg`, this
will bypass a validation checking for images. But it will also pass the
spoof check, because a file named .html and containing actual HTML
passes the spoof check.

This change makes it so that we also check the supplied content type. So
even if the file contains HTML and ends with .html, it doesn't match the
content type of `image/jpeg` and so it fails.
""""

Fixed in paperclip 4.2.2.

~reed

--001a11c1dfc044b8eb0518c6febd--
