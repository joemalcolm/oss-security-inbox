X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/18/6
Message-ID: <AANLkTikeFtNiVKpTE7xwri_JpmYH7EmD94YCGsXh5s0E@mail.gmail.com>
Date: Tue, 18 Jan 2011 14:43:02 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: heap corruption in libpango
Content-Type: text/plain; charset=utf-8

>From Launchpad [1]:

"When used with FreeType2 as a backend, Pango is vulnerable to heap
corruption when rendering malformed fonts. The vulnerability occurs in
pango_ft2_font_render_box_glyph() in pango/pangoft2-render.c. A buffer
is malloc'd with size box->bitmap.rows * box->bitmap.pitch.
Subsequently, 0xff is written at offsets into this buffer without
checking that these offsets fall within the buffer's boundaries,
leading to heap corruption."

-Dan

[1] https://bugs.launchpad.net/ubuntu/+source/pango1.0/+bug/696616
