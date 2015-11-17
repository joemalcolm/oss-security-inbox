X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["500" "Wednesday" "18" "November" "2015" "00:00:01" "+0900" "GAURAV GUPTA" "ya1gaurav@gmail.com" "<CAJUzAGYKBt1VP4ab4LKOsj5tF5=unSFt4WhPVkXnic7OZ0p9SQ@mail.gmail.com>" "20" "[oss-security] Buffer overflow in libxml2" "^Date:" nil nil "11" "2015111715:00:01" "[oss-security] Buffer overflow in libxml2" (number mark "        ya1gaurav@gm Nov 18   20/500   " thread-indent "\"[oss-security] Buffer overflow in libxml2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21965 invoked by uid 550); 17 Nov 2015 15:03:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20256 invoked from network); 17 Nov 2015 15:00:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=7eGkGtNjbMj+18LLCZNoPbovWsJAllTsxycdWjr8aO8=;
        b=Jy1+LpNwkjdVgeVMJUDte/p/yDKfBlVdjLwJ/Tj49iBjhVxW2sYfpqHXakvFXAW5AK
         xeuOzJQVVEkaT25RT5rd/qeRTw1B3rlQnX1ZKpPwMz4qkwBjTZ1UHoTD8IQAFGqwWt4Q
         NxkshXZRo9fGi7CC7iOO3SJ0ESlk08hERaVq8mkrvaoNa5SjI1YztJPwbU6vDcgVHDsQ
         nWfQC1GWHgG2T+hu4xIsEvQImksG4WKwHS97CIqUahQlrO+xNylAgQDFjB8RFk0Vqa0N
         uSmwibeIA0/9P7vTRuvMCGjbhuQHlQ+pgjhQPQRDxIT+xDJ9SqPKQ1qjXvyCj11RwS/v
         wWZQ==
MIME-Version: 1.0
X-Received: by 10.112.99.4 with SMTP id em4mr18834431lbb.87.1447772401091;
 Tue, 17 Nov 2015 07:00:01 -0800 (PST)
Message-ID: <CAJUzAGYKBt1VP4ab4LKOsj5tF5=unSFt4WhPVkXnic7OZ0p9SQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11340c9aaeca5f0524bdc7c1
Date: Wed, 18 Nov 2015 00:00:01 +0900
From: GAURAV GUPTA <ya1gaurav@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Buffer overflow in libxml2
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--001a11340c9aaeca5f0524bdc7c1
Content-Type: text/plain; charset=UTF-8

Hello,
Please assign CVE for below vulnerability:

Description : Buffer overlflow in libxml2 with crafted xml input generated
using Fuzzer - American fuzzy loop when compiled with ASAN.

Reported discussion : https://bugzilla.gnome.org/show_bug.cgi?id=756263

Upstream Fixes :
https://git.gnome.org/browse/libxml2/commit/?id=ab2b9a93ff19cedde7befbf2fcc48c6e352b6cbe


-- 
Regards,
Gaurav Gupta

--001a11340c9aaeca5f0524bdc7c1--
