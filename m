X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["879" "Friday" "4" "December" "2015" "20:04:30" "+0100" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<5661E3BE.1050203@gmail.com>" "22" "[oss-security] CVE Request: PHPMailer Message Injection Vulnerability" nil nil nil "12" "2015120419:04:30" "[oss-security] CVE Request: PHPMailer Message Injection Vulnerability" (number mark "U       gsunde.orang Dec  4   22/879   " thread-indent "\"[oss-security] CVE Request: PHPMailer Message Injection Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14014 invoked by uid 550); 4 Dec 2015 19:17:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7987 invoked from network); 4 Dec 2015 19:04:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-type:content-transfer-encoding;
        bh=NUnN8/YgPplIPE3+fbzMTLDWrf8/OROAAbAH7+tQD9o=;
        b=ewZgrEsz4DhCF/Z/qTFz3oEo04lrlI3PxPZ3yY9ci+6VuddWH3yHk61WpTzPw+Oull
         Qcrf6XciZ9xnxM02brDKMxUHzcj25MIzLbORHFHR6Xwx4PiwGKbp4vqgHSSwDWC4pn+h
         pCJdBLOpkIJeeyWZV9n2GapBB18OjgBUNqRPiEK7kGgvP6iGztGuquid+pKW2H3wlXXi
         CuyuiwGqsRv3WT2D7wLNPPvwKv+w/fZU6WxKi4Gx3Q3TyJumQioJVAyqLUMJJoef9Z4W
         weQ84UIZ2uCmwzEc6dCHg5Mpjhfw/wykze1LAqkkUmhGK/dC/LYqYTa8yiDlkfjv72yT
         mZ5Q==
X-Received: by 10.28.189.5 with SMTP id n5mr7154394wmf.76.1449255866227;
        Fri, 04 Dec 2015 11:04:26 -0800 (PST)
To: oss-security@lists.openwall.com
From: Gsunde Orangen <gsunde.orangen@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5661E3BE.1050203@gmail.com>
Date: Fri, 4 Dec 2015 20:04:30 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE Request: PHPMailer Message Injection Vulnerability

Given the widespread use of PHPMailer I believe this merits a CVE ID:

>From https://github.com/PHPMailer/PHPMailer/releases/tag/v5.2.14:

"Takeshi Terada discovered that PHPMailer accepted addresses containing
line breaks. This is valid in RFC5322, but allowing such addresses
resulted in invalid RFC5321 SMTP commands, permitting a kind of message
injection attack. These addresses were allowed by the pcre8 validator
pattern (the default in recent PHP versions).
This has been mitigated by rejecting line breaks during address
validation, and also by rejecting line breaks in SMTP commands, which
addresses the problem for applications using the SMTP class directly."

Fixed in PHPMailer 5.2.14

My (non-authoritative) guess for a CVSSv3 score:
Base Score: 3.7 (Low)
Temporal Score: 3.2 (Low)
Vector: CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L/A:N/E:U/RL:O/RC:C

Thanks,
Gsunde
