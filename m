X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["590" "Sunday" "19" "May" "2019" "18:06:34" "+0200" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo.santos@gmail.com" nil "14" nil nil nil nil "5" nil nil (number mark "U       juanpablo.sa May 19   14/590   " thread-indent "\"[oss-security] [CVE-2019-10078] Apache JSPWiki Cross-site scripting vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10078] Apache JSPWiki Cross-site scripting vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11325 invoked by uid 550); 19 May 2019 18:15:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7465 invoked from network); 19 May 2019 16:06:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=90VaqaIpCVNU8WK4WoerJhRaIhzLD53jSdOTIZ7s7Qo=;
        b=VQdof8lu/GVy0lsoZzLai/mqqIZzhI6qRZPG8xTJt/8WnVIZaagoflC/p53xZnO0GY
         uwUdoqWGnI8vN9xoi0De8vmsFjHVTbhpl88Re2M1h77CS89d5LVfMleLEbsCYNWQ+fDZ
         ox0WmzEFmftITEnLG3xq/Q0lupmnjR8Z3cnGhWHSIbu0h7K3fMqopxDZOI6TLjJN43ee
         BzQDbyz46K1d+9q1SbEKJOmdfLEAmWQy/SIGIveVyBx1pnf8LG/8Kf5s3/nWtbP7CrtB
         PsBiup4D3mkty0SiaftbnTLpXxyAVgymYQR3BKMHQgmKzIvl74N+OrZAs+2HmtQEwL6p
         rfNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=90VaqaIpCVNU8WK4WoerJhRaIhzLD53jSdOTIZ7s7Qo=;
        b=N7378uJ6qMFY1tbfW3IKIB9aDHpG6rhWavSB/CObE9B2scwGKm1us/VDQoXsub8N02
         h5VXaArQ0dB6BNhxI+BK9Q2dbDUrnc6eYUfJ2IOCj3X6s4eKxW7KpFZHB2mRqVgjsreI
         3fNWZ4iv9yl6QrMoPn3gaPQPX/T+pqOqDQge3E4nIevtQxNG6DCVXe/Hh8cqjTQSv/Tj
         KmP7/c2zDh98WcCXekXTppTfCfKDd4xmXKmYeIzbuuePYiPUf1gHnoZasY8jo+Ib+AQz
         gor+1I28y6BX4Tq6nJn2ZeFtfFe8c2otDEM3UWJ7oU+gIRED2l9ACNORxFSH5nSdVWgL
         Vj3g==
X-Gm-Message-State: APjAAAWeJu81yjP7Xfzjkzov3podsu7qLRpmDGdSzd38Ju4dob6U/tHz
	NNwAM4Vev+aCli33CKv523GZo8Nr1otNa87p6wGS0gNB
X-Google-Smtp-Source: APXvYqz+KIvRVvaLuD6wjUdU2ildzfPxGIRlOdBkwX12pe9VS3RqnlpX8M9zhaNz6jpXCLElm5RY+OsVTwCXGg8S7pM=
X-Received: by 2002:a24:8ec7:: with SMTP id h190mr9785929ite.81.1558282004110;
 Sun, 19 May 2019 09:06:44 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo.santos@gmail.com>
Date: Sun, 19 May 2019 18:06:34 +0200
Message-ID: <CAMufup48w0bHkdw05t80d+xP7Z7vHKnEkAJ6uS+8UQbn8=ODew@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000050a30205893fcd1e"
Subject: [oss-security] [CVE-2019-10078] Apache JSPWiki Cross-site scripting vulnerability

--00000000000050a30205893fcd1e
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2019-10078
[PRODUCT]:Apache JSPWiki
[VERSION]:Apache JSPWiki 2.9.0 to 2.11.0.M3
[PROBLEMTYPE]:Cross-site scripting vulnerability
[REFERENCES]:https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2019-10078
[DESCRIPTION]:A carefully crafted plugin link invocation could trigger an
XSS vulnerability  on Apache JSPWiki, which could lead to session
hijacking. Initial reporting indicated ReferredPagesPlugin, but further
analysis showed that multiple plugins were vulnerable.

--00000000000050a30205893fcd1e--
