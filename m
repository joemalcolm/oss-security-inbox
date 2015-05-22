X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["727" "Friday" "22" "May" "2015" "11:17:35" "+0200" "=?UTF-8?B?QWRyacOhbiBNLiBGLg==?=" "adrimf85@gmail.com" "<CAEhYM0ZC2yGjHUNuR63twE_WfWxj-o7Gn2-dC7A_vR0t2W-DLw@mail.gmail.com>" "27" "[oss-security] CVE request: Multiple vulnerabilities in some WordPress plugins: NewStatPress & WordPress Landing Pages." nil nil nil "5" "2015052209:17:35" "[oss-security] CVE request: Multiple vulnerabilities in some WordPress plugins: NewStatPress & WordPress Landing Pages." (number mark "        adrimf85@gma May 22   27/727   " thread-indent "\"[oss-security] CVE request: Multiple vulnerabilities in some WordPress plugins: NewStatPress & WordPress Landing Pages.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1462 invoked by uid 550); 22 May 2015 09:18:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1436 invoked from network); 22 May 2015 09:18:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc:content-type;
        bh=i5Yhrb/BueOj8eNgcCFI4dNVppoUUbTse31v/Btu7WY=;
        b=UqGedbVrWM/Vuw8gqU0A4b5az9PJAEpkFazeknN5WV35CBgoz/x8R+U8T/kApSSqql
         ABm50QDejj0XynDb49WN8UfxQh1X0ipj5MRkWkEetUpUkhjJOPCl1NF5ftruERvIzAzL
         emZfuKfJMLuICLWAVGPNLD2ylult5AFSwoDBMOPy+krJuYoZUg3KuRDkDTbhO01DNEBe
         W/vQLurE45I2iC36Ver4ITF6U4zDHIRpLnzDqw0kV9oVhdYzN5cBHMkRCk96t5Gz/6kE
         4PoIop5c+wj6tjppRgpu52nxgXyuZB0b3QgZDBspRsEQQTP2eYpejzFuQjG872OaJatc
         17Sw==
X-Received: by 10.112.16.167 with SMTP id h7mr5735797lbd.124.1432286278046;
 Fri, 22 May 2015 02:17:58 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAEhYM0ZC2yGjHUNuR63twE_WfWxj-o7Gn2-dC7A_vR0t2W-DLw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3cc42d1da4e0516a822fc
Cc: cve-assign@mitre.org
Date: Fri, 22 May 2015 11:17:35 +0200
From: =?UTF-8?B?QWRyacOhbiBNLiBGLg==?= <adrimf85@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Multiple vulnerabilities in some WordPress plugins:
 NewStatPress & WordPress Landing Pages.
To: oss-security@lists.openwall.com

--001a11c3cc42d1da4e0516a822fc
Content-Type: text/plain; charset=UTF-8

Hi!

I discovered multiple vulnerabilities in some WordPress plugins:

- Multiple vulnerabilities in WordPress plugin "NewStatPress" (SQLi, XSS)
* vulnerable version: 0.9.8
* patched version: 0.9.9
* vendor: https://wordpress.org/plugins/newstatpress/
* changelog: https://wordpress.org/plugins/newstatpress/changelog/

- Multiple vulnerabilities in WordPress plugin "WordPress Landing Pages"
(SQLi, XSS)
* vulnerable version: 1.8.4
* patched version: 1.8.5
* vendor: https://wordpress.org/plugins/landing-pages/
* changelog: https://wordpress.org/plugins/landing-pages/changelog/

I request a CVE for them.

Thanks!

A.

--001a11c3cc42d1da4e0516a822fc--
