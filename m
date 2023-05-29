X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/29/1
Message-ID: <2308609.bdg04gU6LQ@portable-bastien>
Date: Mon, 29 May 2023 08:11:18 +0000
From: Bastien Roucariès <rouca@...ian.org>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Stack overflow in imagemagick coders/tiff.c
Content-Type: text/plain; charset=utf-8

Hi,

Reading changelog and code of imagemagick, I want to report a stack overflow with crafted tiff file in imagemagick

Fixed (after 6.9.12-26) by:
https://github.com/ImageMagick/ImageMagick6/commit/85a370c79afeb45a97842b0959366af5236e9023

Original reporter was Muhammad Aldo Firmansyah

Thanks 

Bastien (rouca)
