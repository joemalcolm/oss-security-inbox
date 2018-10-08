X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["550" "Monday" "8" "October" "2018" "12:54:34" "-0400" "Nick Roessler" "nicholas.e.roessler@gmail.com" "<e6e0b960-faf3-175a-3730-46823ee69d3f@gmail.com>" "16" "[oss-security] CVE-2018-17407: Tex-Live buffer overflow in handling of Type 1 fonts" nil nil nil "10" "2018100816:54:34" "[oss-security] CVE-2018-17407: Tex-Live buffer overflow in handling of Type 1 fonts" (number mark "U       nicholas.e.r Oct  8   16/550   " thread-indent "\"[oss-security] CVE-2018-17407: Tex-Live buffer overflow in handling of Type 1 fonts\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19964 invoked by uid 550); 8 Oct 2018 17:37:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11810 invoked from network); 8 Oct 2018 16:54:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=uXwXF+WRgB07PxW7y5RZazueSExTPpHx47SREwVsRqQ=;
        b=mGGZEsVY1HqnBJQKPslR3AzoxjhUKaBFmQh6J7PH4FqVWlkqDOUzLyoW2ojfIt7fBB
         t7XokZoTLzrtcT6Z66SPAAMvTa4DETAPUaKe5tSlN5HloxsFJtMH+EwA2S64if9lY6iK
         n7CNjEyPQY5ngBoNA6xLsWErOI41wuNKrf6exc3t39YEfUcW/mCBtNNbe1IcGmqkJEen
         B9X3EnOHL7UroUoBXjbVGsX9H05rRNd2Vx+30YD7N18icOug0dlnUhBIMqH6zAJN5XVF
         Jrz9i744MAunxhlurUnqq4q1zyCF6AGsXETejnMZmGC0+QLI9/mNaalWiHWdmGwFylCi
         PNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=uXwXF+WRgB07PxW7y5RZazueSExTPpHx47SREwVsRqQ=;
        b=H30XS5JRjwfae97m2H15463ICnDLI3Ko6qOanJ/P63YFhZHauFD7IDygFcBayzitdS
         D7U5P/mw2Hot1CoDK1btLa6/d6L+fW1ebP7uDzPbqUlFYPHPVtwr9nRUW156E2NL+PFU
         5XJ2gGr7hC2PC2o+xe5brQEruOAHeka8dIHOqrHkNm3zaSOlFngZWNpoUHqgv+jkxtYH
         cn9vRIa2n4xAfxDYB+Lc4voeOfDkR8srs8KP6dn6wHjcZpfk3Ni6vsiOpVnarRknlNe9
         S2Ta2sKbhZeed2YbeXhlzakaT2Dk/6Lq19sgN0YwQQvwpIw/dTejzBHamRWsHD43q0BT
         pGzA==
X-Gm-Message-State: ABuFfog/balWiJcKBdF758P2mmlALQ9z9yYETP2xNF/s9YzoGlLoofKR
	Juk9qjD3RvigGm7NI4fFXCfeB44=
X-Google-Smtp-Source: ACcGV62EIZIKUQDh1EBD6cCLK4EP3jegFDAX4D9oEHRJ7VtTONO674nGKYjk0vNYu/xzKy+abXADSg==
X-Received: by 2002:a37:6cc3:: with SMTP id h186-v6mr7284812qkc.49.1539017677109;
        Mon, 08 Oct 2018 09:54:37 -0700 (PDT)
To: oss security list <oss-security@lists.openwall.com>
From: Nick Roessler <nicholas.e.roessler@gmail.com>
Message-ID: <e6e0b960-faf3-175a-3730-46823ee69d3f@gmail.com>
Date: Mon, 8 Oct 2018 12:54:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: [oss-security] CVE-2018-17407: Tex-Live buffer overflow in handling of Type 1 fonts

Hey all,

     I wanted to make everyone aware of a security update for TeX Live, 
a distribution of the TeX document preparation software. A buffer 
overflow in the handling of Type 1 fonts (.pfb files) allows arbitrary 
local code execution without privilege escalation when a malicious font 
is loaded by one of the vulnerable tools (pdflatex, pdftex, luatex, dvips).

     The patch was rolled out on Sept 21.  See:

https://www.debian.org/security/2018/dsa-4299
https://security-tracker.debian.org/tracker/CVE-2018-17407

Thanks,
--
Nick
