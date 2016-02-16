X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3169" "Wednesday" "17" "February" "2016" "01:33:58" "+0530" "Sandeep Kamble" "sandeepk.l337@gmail.com" "<CALq7B37=jC3u8v6hE_n1-2279aVwacRH0cJP9tcYh9Ehc2gdKQ@mail.gmail.com>" "75" "[oss-security] Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities" "^Cc:" nil nil "2" "2016021620:03:58" "[oss-security] Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities" (number mark "        sandeepk.l33 Feb 17   75/3169  " thread-indent "\"[oss-security] Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3927 invoked by uid 550); 16 Feb 2016 20:22:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24416 invoked from network); 16 Feb 2016 20:04:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=JGmDJUZrKZZ2+wgls7nTfvCye0XQGG+3l0S7pnDBJdI=;
        b=CJROPctz5SwkudYgvtkzYugbyC6J04Ce/nduYvalTaIBsvcogpzCQNPm8qN3okWAmV
         pP/e+yPypSL/7gvcJpXOaGmnp56ZQ53TGs0saE2NTNY09ekwWEMExlfp5ZWwqwhBkt4i
         kPuJrCLSn0ZgIePkDLfZfLJWaDwetLVSUwUjRISabdvSFT2F8G38si/c6IdDRBsyzvrS
         P5I5eTT4miQSWPaoJBhWZ+q9XOvcy0QStHhsWDlU7dCHubIwy6FPRK+lrKsAh3sHjGIg
         8ZvoFdhN4hHXELkshAWkLLkbT38PqwGPUocKdhgOgrIk8waMPuLeULXbf+McoDEPNPpI
         YJWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=JGmDJUZrKZZ2+wgls7nTfvCye0XQGG+3l0S7pnDBJdI=;
        b=CFHmrU4LBd6ayQLakYEDQDbTFfukjPR/pyIzF1WTRXU+bG2ThuOdSraxTtx/XwgFgU
         qw7LcJTNtpKuq8rtmHj1jrZtUW6V2LqMb4hSu855TavTsF0HE1Bo9/uUpW7yYlZ7OjjO
         T2LXR7moldc9zxL0ToZygWzJv6e7XY/AadTkU6T90HWjmE+teFSWnkF2aY9YV+xeDhCF
         YRd+s2h4pTw0tie08rn5eUagQHtmd+zMe0BVoyFw/BhsBMLNK00rG2j9iS/5hPJvWPyt
         GMc1mwOOk2MmRQNw9ilK9ABwws9fHDkhrG/ImlrmFJC+neq7BjotwazlDk4Gb3JH9+gS
         0dmw==
X-Gm-Message-State: AG10YOQF9wRUUH8EtXv3QtsjhEXVmG4d7QWaiYibBCrNhdNrmfe27hjMa1WxYh0OGJ/MYXXmc2aCCr6QVwP9xg==
MIME-Version: 1.0
X-Received: by 10.202.76.88 with SMTP id z85mr17435422oia.18.1455653038728;
 Tue, 16 Feb 2016 12:03:58 -0800 (PST)
Message-ID: <CALq7B37=jC3u8v6hE_n1-2279aVwacRH0cJP9tcYh9Ehc2gdKQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11476cf64a3a53052be8a2b6
Cc: bugtraq@securityfocus.com, listadmin@securityfocus.com, 
	oss-security@lists.openwall.com
Date: Wed, 17 Feb 2016 01:33:58 +0530
From: Sandeep Kamble <sandeepk.l337@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities
To: fulldisclosure@seclists.org

--001a11476cf64a3a53052be8a2b6
Content-Type: text/plain; charset=UTF-8

[image: Vulnerable Umbraco]
<http://blog.securelayer7.net/wp-content/uploads/2016/02/download.png>

Recently I got an assignment where I had to work on the Umbraco application
- a free Open Source Content Management System built on the ASP.NET
platform and is used by more than 2,25,000 websites. While performing the
security testing of this application, I discovered serious vulnerabilities
within this application, allowing to perform SSRF attack, CSRF Bypass
attack, and persistent XSS. The CVE number yet to be assigned to these
vulnerabilities. It would be strongly recommended to update the CMS to
latest version.

*SSRF Vulnerability*

Let me get start with Server side request forgery (ssrf) attack found
within the feedproxy.aspx. Those who new to SSRF, please follow this link.
<https://cwe.mitre.org/data/definitions/918.html>

I started off playing with the feedproxy.aspx, it is intersting page in
Umbraco . the feedproxy.aspx is used to access the external resources using
the URL GET parameter.

http://local/Umbraco/feedproxy.aspx?url=http://bobsite/index

once you change the URL to the
http://local/Umbraco/feedproxy.aspx?url=http://127.0.0.1:80/index, you able
to access the localhost application of the server.

Using this payload change the port number to perform port scanning of the
server. It will be helpful to find the more details of the server.
For example:

http://local/Umbraco/feedproxy.aspx?url=http://127.0.0.1:25/index
http://local/Umbraco/feedproxy.aspx?url=http://127.0.0.1:8080/index

If the port number is closed, you will find the error message on the
feedproxy.aspx page. Umbraco assigned bug ID U4-7457
<http://issues.umbraco.org/issue/U4-7457> and fixed the issue.

*CSRF Bypass Vulnerability*

The Umbraco assigned bug ID U4-7459
<http://issues.umbraco.org/issue/U4-7459>, It was discovered that Umbraco
enabled sensitive actions, such as editing a user account information was
vulnerable to CSRF vulnerability.
The vulnerable code in templates.asmx.cs on the line number 75, it is
executing save operation without verifying the actual CSRF token.
In the file SetAngularAntiForgeryTokensAttributes.cs, on line number 25,
function allowing empty CSRF value, the CSRF vulnerability is triggering.

Find the more details on this fix on the below given link:

https://github.com/umbraco/Umbraco-CMS/commit/18c3345e47663a358a042652e697b988d6a380eb

*Persistent XSS Vulnerability*

It is found that Umbraco is also vulnerable to Persistent XSS in content
type editor. Umbraco has been assigned bug ID U4-7461.. This vulnerability
existed in the name field of the media page, the developer data edit page,
and the form page.[image: XSS Vulnerability in Umbraco]
<http://blog.securelayer7.net/wp-content/uploads/2016/02/3-1.png>

[image: XSS Vulneraiblity in Umbraco]
<http://blog.securelayer7.net/wp-content/uploads/2016/02/1.png>

[image: XSS Vulnerability Umbraco]
<http://blog.securelayer7.net/wp-content/uploads/2016/02/2.png>

To mitigate these vulnerabilities, it is recommended to update Umbraco to
the version V7.4.0.

--001a11476cf64a3a53052be8a2b6--
