X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1284" "Tuesday" "18" "April" "2017" "09:11:16" "+0100" "Simon Steiner" "simonsteiner1984@gmail.com" "<016901d2b81b$5a69da00$0f3d8e00$@gmail.com>" "77" "[oss-security] [CVE-2017-5662] Apache Batik information disclosure vulnerability" "^Cc:" nil nil "4" "2017041808:11:16" "[oss-security] [CVE-2017-5662] Apache Batik information disclosure vulnerability" (number mark "U       simonsteiner Apr 18   77/1284  " thread-indent "\"[oss-security] [CVE-2017-5662] Apache Batik information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7946 invoked by uid 550); 18 Apr 2017 11:57:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31928 invoked from network); 18 Apr 2017 08:11:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=umVauFm0m5muLkmGJqIPZ5IyqIPPzvTAi17X0uJOct0=;
        b=TcVpDKTYGrQBZ3O+GCb71vEwf/PQrMreEBSt09sC3u26sPQfygOfp8nZTNwlWQGgaF
         YL2QR04iIpmnjVMM7C7IxiOXdrwpK6k/PSRskO4A3Wg22e8wXSns8gQNVxXNQ67WENoJ
         0UMhSXnm+5n+3XfNXZVIHFQlSTU7/p5AIIg6Z3E51c4HZEYVGiCtYJ4nykaEDucvl3HO
         RhtCsWHgX2fnRRBPuyP6FtsSWfmKNeSIDd7sAEkpUAfh1e2JwjYjfTySsbgZbmmpmitD
         hr5iovfnAZp5hNvuB6zumk5HMOtTtc0sNCOIle4PuFYJn8+jRnTbIOX8aiAyT1D8pwHm
         27bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=umVauFm0m5muLkmGJqIPZ5IyqIPPzvTAi17X0uJOct0=;
        b=bFaTScRamEBXQlq407CkRfJ9rKf505fQDqYOOhvYvtUGso4Q1rtZevPskinXhrOLqu
         G6m1LeWf1130S5QRZvfaXRwj3i50sPKQFbO8XjycIClkRl1r2SuD/YMiaKM8X36jV36X
         RcnFxwizSzr0sQYKcAUe0aEosb3qKT7UiHjgMczT+geJoIVY1f7rXaHVA4cfPzrKKpfu
         QAw30ZQq67LVDUU4XH+v/DX7d8XK+ZxuwezU9HvA7c+Ci+bIsg6vHiNPp4IrjYQjewcr
         SW+czp0m2jqXSJ/ja7SKTgGxhU6+ChSmRb/onLUH4Ht5dyY7wJFLSeeZI9j4XNyQ2mcd
         omDg==
X-Gm-Message-State: AN3rC/5tGNzCJmzEFlYD/zVKKBZLXyiVrskXF1+TR0POc8zMtLZHtsG6
	Pq2xMbPg7JDEjQ==
X-Received: by 10.223.157.37 with SMTP id k37mr22465069wre.156.1492503077123;
        Tue, 18 Apr 2017 01:11:17 -0700 (PDT)
Message-ID: <016901d2b81b$5a69da00$0f3d8e00$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_016A_01D2B823.BC308BF0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdK4Gw57N+QKqTWxTd6mClBP6wrOpg==
Content-Language: en-gb
Cc: "'Pierre Ernst'" <pernst@salesforce.com>
Date: Tue, 18 Apr 2017 09:11:16 +0100
From: "Simon Steiner" <simonsteiner1984@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2017-5662] Apache Batik information disclosure vulnerability
To: <general@xmlgraphics.apache.org>,
	<batik-users@xmlgraphics.apache.org>,
	<batik-dev@xmlgraphics.apache.org>,
	<oss-security@lists.openwall.com>,
	<bugtraq@securityfocus.com>

------=_NextPart_000_016A_01D2B823.BC308BF0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

CVE-2017-5662:

        Apache Batik information disclosure vulnerability

 

Severity:

        Medium

 

Vendor:

        The Apache Software Foundation

 

Versions Affected:

        Batik 1.0 - 1.8

 

Description:

        Files lying on the filesystem of the server which uses batik can

        be revealed to arbitrary users who send maliciously formed SVG

        files. The file types that can be shown depend on the user context

        in which the exploitable application is running. If the user is root

        a full compromise of the server--including confidential or sensitive

        files--would be possible.

 

        XXE can also be used to attack the availability of the server

        via denial of service as the references within a xml document

        can trivially trigger an amplification attack.

 

Mitigation:

        Users should upgrade to Batik 1.9+

 

Credit:

        This issue was independently reported by Lars Krapf of Adobe and
Pierre Ernst at Salesforce.

 

References:

        http://xmlgraphics.apache.org/security.html

 

The Apache XML Graphics team.


------=_NextPart_000_016A_01D2B823.BC308BF0--

