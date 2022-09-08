X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/08/1
Message-ID: <CAGUWgD-UcCLieARno1B_Oei9dgnntoOod2bcncuc3vy6Yyu+eg@mail.gmail.com>
Date: Thu, 8 Sep 2022 11:53:56 +0300
From: Georgi Guninski <gguninski@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: sagemath denial of service with abort() in gmp: overflow in mpz type
Content-Type: text/plain; charset=utf-8

On Wed, Sep 7, 2022 at 8:31 PM Russ Allbery <eagle@...ie.org> wrote:
>


>
> The ability to make a program crash is not inherently a security bug.

1. This is nearly true story: On a mailing list someone posted crash
when parsing the Subject header in one the most popular MUA.
Whenever the user tried to open the folder, the MUA crashed,
preventing reading the list.
Users without technical skills needed technical help to delete the DoS mail.
2. coredump takes space.
