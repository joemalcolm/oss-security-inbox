X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/24/13
Message-ID: <CACn5sdRX-tyOuVDXfTeFXfen6hq54e_zMVhsd5_TYW1XsHHk+w@mail.gmail.com>
Date: Wed, 24 Feb 2016 09:10:37 -0300
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: [Pixman] create_bits(): Cast the result of height * stride to size_t
Content-Type: text/plain; charset=utf-8

 Hi,

There is an (old) integer overflow in create_bits in the pixman library.
Patch and details are available here:

https://web.archive.org/web/20141227044037/http://lists.freedesktop.org/archives/pixman/2014-April/003244.html

Please, assign a CVE to this issue.

Regards,
Gustavo.

