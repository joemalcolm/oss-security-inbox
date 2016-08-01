X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1367" "Monday" "1" "August" "2016" "18:38:09" "+0200" "petrella.pietro" "petrella.pietro@gmail.com" "<579F7AF1.2090108@gmail.com>" "38" "[oss-security] CVE:Request - Path Traversal Barebone.jsp - Liferay 5.1.0" nil nil nil "8" "2016080116:38:09" "[oss-security] CVE:Request - Path Traversal Barebone.jsp - Liferay 5.1.0" (number mark "U       petrella.pie Aug  1   38/1367  " thread-indent "\"[oss-security] CVE:Request - Path Traversal Barebone.jsp - Liferay 5.1.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15737 invoked by uid 550); 1 Aug 2016 17:08:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1555 invoked from network); 1 Aug 2016 16:38:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:message-id:date:user-agent:mime-version;
        bh=Xi96YAKsIRp/0QR/jRyhcB0M0KC1Si8BLgehrVL2Aj8=;
        b=rp5mqTKxTy3ykqJ5hh8q2CiPNILv7Lhx4kDUEw1Dc2Pv0505xj2yPZXdA2hXAoGLSQ
         uVPqfIIrZ8nLiQRm1206nvsouNHUoxt2yhqIVIceFXbZXX7HP1wml6x9RgWWhnJQ7/55
         QnhtBVPrelJZLWbanlSs9YSZNde00g2Lg/DOVpjbuGI9KWndu6tM0PW9M9hHifHZi3X4
         MZP6iOKjusrkmsTF5tZNOp+EiuErqOSfwCD/Xo2ymbb+Go+icUVNTtN1DVGOi7xKnh0/
         VDx3FwF+hD426S1fqqzMHNmvKA57WvZljtW+at6vanY8bUKyTNMhXncd3WtqSr0CrtV2
         epxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version;
        bh=Xi96YAKsIRp/0QR/jRyhcB0M0KC1Si8BLgehrVL2Aj8=;
        b=GUV+V7kSeHZbJiSK6GNOrhUSOEbh9Bk1W3hDQ63OFh/sx+JscgKXj0AtX/dVGu0I/0
         CPEOTrC8xYMIZCK1GXoMqrwog3eHjvC4vXsgUlnz2BrLiCCYUsydzpJbaWgQ8PtvDIFG
         sTXAnUPTzplYHLx5QFP1Q8WbplK5YqVCBxXl6GJ1VyA1nCl0iKHMaEDDit1jiPUwXjqj
         cIgWbFAUrEvY2itluaJHdaGld+jebcXk2RK7KqNU/nofQlRIhOFvKN1WSxOq4grH1xOA
         h7Iy+63fONn+FXVY9temdFZ278gSLOEZ1pdNZoW6TrAnOPQWo3ct924OlYktrTLdaONQ
         edmg==
X-Gm-Message-State: AEkoouuqzqz5WLv2Xj6gci63mf759xH1gIKt0jHs4W3Vt/uunlpMuG6/cw0F7psBk270eA==
X-Received: by 10.28.169.203 with SMTP id s194mr58618600wme.95.1470069492103;
        Mon, 01 Aug 2016 09:38:12 -0700 (PDT)
From: "petrella.pietro" <petrella.pietro@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <579F7AF1.2090108@gmail.com>
Date: Mon, 1 Aug 2016 18:38:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------030102090602080605060502"
Subject: [oss-security] CVE:Request - Path Traversal Barebone.jsp - Liferay
 5.1.0

--------------030102090602080605060502
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit


I discovered a /directory traversal issue /on *minifierBundleDir 
*/barebone.jsp /_variable___on a website with *Liferay 5.1.0*. I don't 
exclude that this vulnerability is present in other Liferay versions as 
well.

However, i report the following vulnerable URL of example:

https://mysite.it/html/js/barebone.jsp?browserId=firefox&themeId=sometheme&colorSchemeId=01&minifierType=js&minifierBundleId=javascript.barebone.files&*minifierBundleDir**=**/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E%2Fetc%2Fhosts%00.html*&t=1429132297000

It's important to note that the url requested is built in the following 
manner:
- only .. "encoded characters" are permitted when you insert the 
traversal request
- At the end of the file is necessary insert *%00* and *.html* otherwise 
the request is not accepted

So, to navigate filesystem is recommended to use Burp Suite "repeater 
tab" tool.

If there are no CVE about this finding, at this pourpose i require a CVE 
please.

Thank you
Pietro

-- -- -- -- --
Pietro Petrella
Information Security Consultant
(CISSP, OPST, RHCE, ISO 27001:2013)
PGP: 5017 E6A8 9E1E 5B39 8C52 05C7 81A5 C3C9 8ED5 4730


--------------030102090602080605060502--
